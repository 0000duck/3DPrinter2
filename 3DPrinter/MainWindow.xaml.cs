﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Forms;
using System.Windows.Input;
using System.Windows.Interop;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;
using System.Xml.Serialization;
//using _3DPrinter.connection;
using RepetierHostTester;
using RepetierHostTester.model;
using _3DPrinter.gcode;
using _3DPrinter.model;
using _3DPrinter.model.geom;
using _3DPrinter.projectManager;
using _3DPrinter.setting;
using _3DPrinter.setting.model;
using _3DPrinter.setting.view;
using _3DPrinter.slice;
using _3DPrinter.view;
using _3DPrinter.view.controls;
using _3DPrinter.view.editor;
using _3DPrinter.view.menu;
using _3DPrinter.view.notification;

using WinInterop = System.Windows.Interop;
using System.Runtime.InteropServices;

using _3DPrinter.view.sliceVisual;
using ListViewItem = System.Windows.Controls.ListViewItem;
using Localization = _3DPrinter.setting.Localization;
using MessageBox = System.Windows.MessageBox;
using MouseEventArgs = System.Windows.Input.MouseEventArgs;
using OpenFileDialog = Microsoft.Win32.OpenFileDialog;
using SaveFileDialog = Microsoft.Win32.SaveFileDialog;
using TextBox = System.Windows.Controls.TextBox;

namespace _3DPrinter
{
    public delegate void executeHostCommandDelegate(GCode code, PrinterConnection conn);


    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window,  INotifyPropertyChanged
    {

        [DllImport("user32")]
        internal static extern bool GetMonitorInfo(IntPtr hMonitor, MONITORINFO lpmi);
        [DllImport("User32")]
        internal static extern IntPtr MonitorFromWindow(IntPtr handle, int flags);


        public executeHostCommandDelegate executeHostCall;

        void win_SourceInitialized(object sender, EventArgs e)
        {
            System.IntPtr handle = (new WinInterop.WindowInteropHelper(this)).Handle;
            WinInterop.HwndSource.FromHwnd(handle).AddHook(new WinInterop.HwndSourceHook(WindowProc));
        }

        private static System.IntPtr WindowProc(
        System.IntPtr hwnd,
        int msg,
        System.IntPtr wParam,
        System.IntPtr lParam,
        ref bool handled)
        {
            switch (msg)
            {
                case 0x0024:
                    WmGetMinMaxInfo(hwnd, lParam);
                    handled = true;
                    break;
            }

            return (System.IntPtr)0;
        }

        private static void WmGetMinMaxInfo(System.IntPtr hwnd, System.IntPtr lParam)
        {

            MINMAXINFO mmi = (MINMAXINFO)Marshal.PtrToStructure(lParam, typeof(MINMAXINFO));

            // Adjust the maximized size and position to fit the work area of the correct monitor
            int MONITOR_DEFAULTTONEAREST = 0x00000002;
            System.IntPtr monitor = MonitorFromWindow(hwnd, MONITOR_DEFAULTTONEAREST);

            if (monitor != System.IntPtr.Zero)
            {

                MONITORINFO monitorInfo = new MONITORINFO();
                GetMonitorInfo(monitor, monitorInfo);
                RECT rcWorkArea = monitorInfo.rcWork;
                RECT rcMonitorArea = monitorInfo.rcMonitor;
                mmi.ptMaxPosition.x = Math.Abs(rcWorkArea.left - rcMonitorArea.left);
                mmi.ptMaxPosition.y = Math.Abs(rcWorkArea.top - rcMonitorArea.top);
                mmi.ptMaxSize.x = Math.Abs(rcWorkArea.right - rcWorkArea.left);
                mmi.ptMaxSize.y = Math.Abs(rcWorkArea.bottom - rcWorkArea.top);
            }

            Marshal.StructureToPtr(mmi, lParam, true);
        }


        /// <summary>
        /// POINT aka POINTAPI
        /// </summary>
        [StructLayout(LayoutKind.Sequential)]
        public struct POINT
        {
            /// <summary>
            /// x coordinate of point.
            /// </summary>
            public int x;
            /// <summary>
            /// y coordinate of point.
            /// </summary>
            public int y;

            /// <summary>
            /// Construct a point of coordinates (x,y).
            /// </summary>
            public POINT(int x, int y)
            {
                this.x = x;
                this.y = y;
            }
        }

        [StructLayout(LayoutKind.Sequential)]
        public struct MINMAXINFO
        {
            public POINT ptReserved;
            public POINT ptMaxSize;
            public POINT ptMaxPosition;
            public POINT ptMinTrackSize;
            public POINT ptMaxTrackSize;
        }; 

        /// <summary>
        /// </summary>
        [StructLayout(LayoutKind.Sequential, CharSet = CharSet.Auto)]
        public class MONITORINFO
        {
            /// <summary>
            /// </summary>            
            public int cbSize = Marshal.SizeOf(typeof(MONITORINFO));

            /// <summary>
            /// </summary>            
            public RECT rcMonitor = new RECT();

            /// <summary>
            /// </summary>            
            public RECT rcWork = new RECT();

            /// <summary>
            /// </summary>            
            public int dwFlags = 0;
        }


        /// <summary> Win32 </summary>
        [StructLayout(LayoutKind.Sequential, Pack = 0)]
        public struct RECT
        {
            /// <summary> Win32 </summary>
            public int left;
            /// <summary> Win32 </summary>
            public int top;
            /// <summary> Win32 </summary>
            public int right;
            /// <summary> Win32 </summary>
            public int bottom;

            /// <summary> Win32 </summary>
            public static readonly RECT Empty = new RECT();

            /// <summary> Win32 </summary>
            public int Width
            {
                get { return Math.Abs(right - left); }  // Abs needed for BIDI OS
            }
            /// <summary> Win32 </summary>
            public int Height
            {
                get { return bottom - top; }
            }

            /// <summary> Win32 </summary>
            public RECT(int left, int top, int right, int bottom)
            {
                this.left = left;
                this.top = top;
                this.right = right;
                this.bottom = bottom;
            }


            /// <summary> Win32 </summary>
            public RECT(RECT rcSrc)
            {
                this.left = rcSrc.left;
                this.top = rcSrc.top;
                this.right = rcSrc.right;
                this.bottom = rcSrc.bottom;
            }

            /// <summary> Win32 </summary>
            public bool IsEmpty
            {
                get
                {
                    // BUGBUG : On Bidi OS (hebrew arabic) left > right
                    return left >= right || top >= bottom;
                }
            }
            /// <summary> Return a user friendly representation of this struct </summary>
            public override string ToString()
            {
                if (this == RECT.Empty) { return "RECT {Empty}"; }
                return "RECT { left : " + left + " / top : " + top + " / right : " + right + " / bottom : " + bottom + " }";
            }

            /// <summary> Determine if 2 RECT are equal (deep compare) </summary>
            public override bool Equals(object obj)
            {
                if (!(obj is Rect)) { return false; }
                return (this == (RECT)obj);
            }

            /// <summary>Return the HashCode for this struct (not garanteed to be unique)</summary>
            public override int GetHashCode()
            {
                return left.GetHashCode() + top.GetHashCode() + right.GetHashCode() + bottom.GetHashCode();
            }


            /// <summary> Determine if 2 RECT are equal (deep compare)</summary>
            public static bool operator ==(RECT rect1, RECT rect2)
            {
                return (rect1.left == rect2.left && rect1.top == rect2.top && rect1.right == rect2.right && rect1.bottom == rect2.bottom);
            }

            /// <summary> Determine if 2 RECT are different(deep compare)</summary>
            public static bool operator !=(RECT rect1, RECT rect2)
            {
                return !(rect1 == rect2);
            }


        }

        private MyCommand _cmdPrintStart;

       

        public MainWindow()
        {
            InitializeComponent();

            UpdateEEPROM = delegate
            {
                this.Dispatcher.Invoke(DispatcherPriority.Normal, UpdateEEPROM2);
            };

            FirmwareDetected = delegate
            {
                this.Dispatcher.Invoke(DispatcherPriority.Normal, FirmwareDetected2);
            };
           

            UpdateJobButtons = delegate
            {
                this.Dispatcher.Invoke(DispatcherPriority.Normal, UpdateJobButtons2);
            };
            executeHostCall = new executeHostCommandDelegate(this.executeHostCommand);


          //  connection = new PrinterConnection(this);
          //  SerialConnector serial = new SerialConnector(connection);

            this.SourceInitialized += new EventHandler(win_SourceInitialized);

            ProjectManager.Instance.CurrentProject.control = threedview1;
            ProjectManager.Instance.CurrentProject.GCodeChangeEvent += SlicerOnSliceComplete2;
            this.SizeToContent = System.Windows.SizeToContent.Manual;
            expander1.Expanded += Expander1OnExpanded;
            expander1.Collapsed += Expander1OnCollapsed;
            codeEditor.contentChangedEvent += JobPreview;

            timer = new DispatcherTimer();
            timer.Interval = TimeSpan.FromMilliseconds(100);
            timer.Tick += TimerOnTick;
            timer.Start();

            mainWindowHandle = new WindowInteropHelper(this).Handle;
            threedview1._Handler = mainWindowHandle;

            rangeSlider1.HigherValueChanged += RangeSlider_OnLowerHigherValueChanged;
            rangeSlider1.LowerValueChanged += RangeSlider_OnLowerHigherValueChanged;
            MenuData.Instance.Load();

           
            
            main2 = new RepetierHostTester.Main(this);
            main2.GetConnection().eventTempChange += tempUpdate;
            connection = main2.GetConnection();
             
           
            

        }

        public event PropertyChangedEventHandler PropertyChanged;
        public string TemperatureString = "";

        private void tempUpdate(float extruder, float printbed)
        {
            
            String labelExtruderTemp = extruder.ToString("0.00") + "°C /";
            String labelPrintbedTemp = printbed.ToString("0.00") + "°C /";
            string tr = "";

            
            if (main.connection.extruderTemp.Count == 1)
            {
                tr += "Экструдер" + " " + main.connection.getTemperature(-1).ToString("0.00");
            //  if (switchExtruderHeatOn.On) tr += "/" + ann.getTemperature(-1).ToString() + "°C";
            //     else tr += "°C/" + Trans.T("L_OFF");
            //     tr += " ";
            }
            else
            {
                foreach (int extr in main.connection.extruderTemp.Keys)
                {
                    tr += "Экструдер №" + (extr + 1).ToString() + ": " + main.connection.getTemperature(extr).ToString("0.00") + "°C";
                   // if (ann.getTemperature(extr) >= 20) tr += "/" + ann.getTemperature(extr).ToString() + "°C";
                   // else tr += "°C/" + Trans.T("L_OFF");
                   tr += " ";
                }
            }
            if (main.connection.bedTemp > 0)
            {
                tr += "Стол: " + main.connection.bedTemp.ToString("0.00") + "°C";
                // if (ann.bedTemp > 0) tr += "/" + ann.bedTemp.ToString() + "°C ";
                // else tr += "°C/" + main2.GetConnection().T("L_OFF");
            }
          
            // Main.main.toolTempReading.Text = tr;

            //this.Title = tr;

            TemperatureString = tr;

            // notify menu 
            PropertyChangedEventHandler handler = PropertyChanged;
            if (handler != null) handler(this, new PropertyChangedEventArgs("UpdateExtrudersTemperature"));
              
        }

        public void executeHostCommand(GCode code, PrinterConnection conn)
        {
            string com = code.getHostCommand();
            string param = code.getHostParameter();
            if (com.Equals("@info"))
            {
                conn.log(param, false, 3);
            }
            else if (com.Equals("@pause"))
            {
//                SoundConfig.PlayPrintPaused(false);
                conn.pause(param);
            }
            else if (com.Equals("@sound"))
            {
//                SoundConfig.PlaySoundCommand(false);
            }
            else if (com.Equals("@execute"))
            {
                /* PTITSYN
                CommandExecutioner ce = new CommandExecutioner(conn);
                ce.setExeArgs(code.getHostParameter());
                ce.run();
                 */ 
            }
        }
        private void Expander1OnCollapsed(object sender, RoutedEventArgs routedEventArgs)
        {
            this.recentList.Visibility = Visibility.Collapsed;
        }



        void DataWindow_Closing(object sender, CancelEventArgs e)
        {
            if (connection != null)
            {
                connection.close();
            }

            
        }

        private void TimerOnTick(object sender, EventArgs eventArgs)
        {
            if (updateEditor)
            {
                updateEditor = false;
                if (isFile)
                {
                    if (SettingsProvider.Instance.SelectedPrinterSettings.printMirror && gCodefile.Contains("r_composition.gcode")) 
                    {
                        codeEditor2.setContent(0, System.IO.File.ReadAllText(gCodefile));
                        
                    }
                    else
                    {
                        codeEditor.setContent(0, System.IO.File.ReadAllText(gCodefile));
                    }
                }
                else
                {
                    codeEditor.setContent(0, gCodeContent);
                }
            }
            if (updateState)
            {
                updateState = false;
                this.toaster.SetProgressBar(max,value,state);
            }
            if (toasterClose)
            {
                toasterClose = false;
                this.toaster.CloseToaster();
                this.toasterGrid.Visibility = Visibility.Collapsed;
            }
        }

        private IntPtr mainWindowHandle; 

        public volatile Thread previewThread = null;
        public string gCodefile;
        public string gCodeContent;
        public bool isFile = true;
        private DispatcherTimer timer;
        public bool updateEditor = false;

        public PrintCamProject CurrentProject = null;

        public int viewMode = 0;

        private void JobPreview(CodeEditor editor)
        {

            JobUpdater workerObject = new JobUpdater(editor,this);
            previewThread = new Thread(workerObject.DoWork);
            previewThread.Start();

        }


        public class JobUpdater
        {
            private GCodeVisual visual = null;
            private CodeEditor ed;
            private MainWindow main;
            public JobUpdater(CodeEditor ed, MainWindow main)
            {
                this.ed = ed;
                this.main = main;
            }

            public void DoWork()
            {


                List<GCodeShort> previewArray0, previewArray1, previewArray2;

                previewArray0 = new List<GCodeShort>();
                previewArray1 = new List<GCodeShort>();
                previewArray2 = new List<GCodeShort>();

                previewArray0.AddRange(ed.contentTypes[1].textArray);
                previewArray1.AddRange(ed.contentTypes[0].textArray);
                previewArray2.AddRange(ed.contentTypes[2].textArray);

                Stopwatch sw = new Stopwatch();
                sw.Start();
                visual = new GCodeVisual(ed);
                visual.showSelection = true;
                visual.minLayer = SettingsProvider.Instance.CommonSettings.LowerLayer;
                visual.maxLayer = SettingsProvider.Instance.CommonSettings.HigherLayer;
                visual.parseGCodeShortArray(previewArray0, true, 0);
                visual.parseGCodeShortArray(previewArray1, false, 1);
                visual.parseGCodeShortArray(previewArray2, false, 2);
                visual.Reduce();


                

//                ThreeDView jobPreview = new ThreeDView();
//                jobPreview.models.AddLast(visual);

//                main.threedview1.SetView(jobPreview, 2);
                ProjectManager.Instance.CurrentProject.SlicerView.models.Clear();
                ProjectManager.Instance.CurrentProject.SlicerView.models.AddLast(visual);
//                ProjectManager.Instance.CurrentProject.SlicerView = jobPreview;

              //  ed.UpdateLayerInfo();
                ed.MaxLayer = ed.getContentArray(0).Last<GCodeShort>().layer;
                main.threedview1.UpdateChanges();

                sw.Stop();
                //Main.conn.log("Update time:" + sw.ElapsedMilliseconds, false, 3);
            }
        }




        private void Window_Loaded(object s, RoutedEventArgs args)
        {

            

        }
        public static T FindParent<T>(FrameworkElement element) where T : FrameworkElement
        {
            FrameworkElement parent = LogicalTreeHelper.GetParent(element) as FrameworkElement;

            while (parent != null)
            {
                T correctlyTyped = parent as T;
                if (correctlyTyped != null)
                    return correctlyTyped;
                else
                    return FindParent<T>(parent);
            }

            return null;
        }

        private void Expander1OnExpanded(object sender, RoutedEventArgs routedEventArgs)
        {
            if (expander1.IsExpanded)
            {
                Storyboard sb = this.FindResource("Storyboard1") as Storyboard;
                Grid content = expander1.Content as Grid;
                foreach (UIElement element in content.Children)
                {
                    ButtonExt buttonExt = element as ButtonExt;
                    if (buttonExt != null)
                    {
                        sb.Begin(buttonExt);
                    }
                }
                recentList.Visibility = Visibility.Visible;
            }
            else
            {
                recentList.Visibility = Visibility.Collapsed;
            }
        }


        private void Threedview1_OnGotFocus(object sender, RoutedEventArgs e)
        {
            expander1.IsExpanded = false;
        }

        private void ButtonBase_OnClick2(object sender, RoutedEventArgs e)
        {
           Toaster.ShowError(this,"Error", "This is description message!", ToasterPosition.ApplicationBottomRight, ToasterAnimation.SlideInFromRight, 20);

            XmlSerializer x = new XmlSerializer(typeof(SlicerSettingsModel));
            StreamWriter writer = new StreamWriter("slicer.xml");
            x.Serialize(writer, new SlicerSettingsModel());
            writer.Close();



            if (this.toaster.Visibility == Visibility.Visible)
            {
                this.toaster.CloseToaster();
            }
            else
            {
                this.toaster.ShowToaster("Это сообщение!!!","В этом сообщении я буду передавать всякого рода служебную информацию!!!");
            }

        }

        private void ButtonBase_OnClick3(object sender, RoutedEventArgs e)
        {
            System.Windows.Application.Current.Shutdown();
        }

        public void ChangeViewMode()
        {
            if (viewMode == 0)
            {
                showSlicer();
            }
            else
            {
                showPreview();
            }
        }

        private void EventSetter_OnHandler(object sender, MouseButtonEventArgs e)
        {
            Border elem = sender as Border;
            MyCommand comm = elem.DataContext as MyCommand;
            if (comm != null)
            {
                switch (comm.Index) {
                    case 10:
                        ChangeViewMode();
                    break;
                    case 11: this.threedview1.frontView();
                    break;
                    case 12: this.threedview1.leftView();
                    break;
                    case 13: this.threedview1.rightView();
                    break;
                    case 14: this.threedview1.bottomView();
                    break;
                    case 15: this.threedview1.topView();
                    break;
                    case 16: this.threedview1.backView();
                    break;
                    case 17: this.threedview1.isometricView();
                    break;
                    case 18: this.threedview1.FitPrinter();
                    break;
                    case 19: this.threedview1.FitSelectedObject();
                    break;
                    case 21:
                        this.toasterGrid.Visibility = Visibility.Visible;

                        // run addition mirroring slicer
                        if (SettingsProvider.Instance.SelectedPrinterSettings.printMirror)
                        {
                            Slicer slicer2 = new Slicer();
                            this.toaster.CancelEvent += slicer2.CancelProcess;
                            this.toaster.ShowToaster(_3DPrinter.setting.Localization.Instance.CurrentLanguage.Processing, "");
                            slicer2.sliceComplete += SlicerOnSliceComplete;
                            slicer2.sliceEvent += SlicerOnSliceEvent;
                            slicer2.RunSlice(true);
                        }
                        
                        Slicer slicer = new Slicer();
                        this.toaster.CancelEvent += slicer.CancelProcess;
                        this.toaster.ShowToaster(_3DPrinter.setting.Localization.Instance.CurrentLanguage.Processing, "");
                        slicer.sliceComplete += SlicerOnSliceComplete;
                        slicer.sliceEvent += SlicerOnSliceEvent;
                        slicer.RunSlice(false);
                        showSlicer();
                    break;
                    case 41:
                   //     Connect();
                    break;
                    case 42:
                        Disconnect();
                    break;
                    case 43:
                        PrintStart(comm);
                    break;
                    case 44:
                        PrintStop();
                    break;
                    case 45:
                        PrintMgmt();
                    break;
                }
            }
        }

        private int max = 0;
        private int value = 0;
        private string state = "";
        private bool updateState = false;
        private bool toasterClose = false;
        

       public RepetierHostTester.Main main2;

         public RepetierHostTester.model.PrinterConnection connection;

        public void Connect(bool value)
        {

            // main2.Connect();                        
            
            if (connection.connector.IsConnected())
            {
                connection.close();


                // update ui
                // notify menu extruders
                PropertyChangedEventHandler handler = PropertyChanged;
                this.TemperatureString = "";
                if (handler != null) handler(this, new PropertyChangedEventArgs("UpdateExtrudersTemperature"));
                // notify button print
                if (_cmdPrintStart != null) _cmdPrintStart.TaskName = Localization.Instance.CurrentLanguage.Print;
            }
            else
            {
                connection.open();
            }
            
        }
        public void Disconnect()
        {

        }

        public void PrintStart(MyCommand cmd)
        {
            _cmdPrintStart = cmd;

            if (connection.connector.IsJobRunning()) 
            {                
                connection.connector.PauseJob(RepetierHostTester.model.Trans.T("L_PAUSE_MSG"));

                // update ui baack to print
                if (connection.connector.IsPaused)
                {                                 
                    cmd.TaskName = Localization.Instance.CurrentLanguage.PrintContinue;
                }
                else
                {
                    cmd.TaskName = Localization.Instance.CurrentLanguage.PrintPause;
                }

            }
            else
            {
                // Main.main.printVisual.Clear();
                connection.connector.RunJob();

                // update ui                
                cmd.TaskName = Localization.Instance.CurrentLanguage.PrintPause;
            }


            //connection.SetVisualGCode();
            //connection.connector.RunJob();

            /*
            if (connection.connector.IsJobRunning())
                connection.connector.PauseJob("L_PAUSE_MSG");
            else
            {
                connection.SetVisualGCode();
                connection.connector.RunJob();
            }
             */ 
        }
        public void PrintStop()
        {
            connection.connector.KillJob();
            
            // update ui
            if (_cmdPrintStart != null) _cmdPrintStart.TaskName = Localization.Instance.CurrentLanguage.Print;

        }

        public void PrintMgmt()
        {
            
            if (main.connection.connector.IsConnected() == false)
            {
                MessageBoxResult result = System.Windows.MessageBox.Show(this, "Принтер не подключен!", "Ошибка", MessageBoxButton.OK);
                return;
            }
            
            
            PrinterMgmtWindow settings = new PrinterMgmtWindow(this);
            settings.Owner = this;
            settings.ShowDialog();
        }


        private void SlicerOnSliceEvent(int max, int value, string state)
        {
            this.max = max;
            this.value = value;
            this.state = state;
            updateState = true;
        }


        private void Settings_OnClick(object sender, RoutedEventArgs e)
        {
            expander1.IsExpanded = false;
            SettingsWindow settings  = new SettingsWindow();
            settings.Owner = this;
            settings.ShowDialog();
        }

        private void Selector_OnSelected(object sender, RoutedEventArgs e)
        {
            var i = 0;
            i++;
        }

        private void About_OnClick(object sender, RoutedEventArgs e)
        {

            expander1.IsExpanded = false;

            About aboutWindow = new About();
            aboutWindow.Owner = this;
            aboutWindow.WindowStartupLocation = WindowStartupLocation.CenterOwner;
            aboutWindow.ShowDialog();


/*
            Slicer slicer = new Slicer();
            slicer.sliceComplete += SlicerOnSliceComplete;
            slicer.RunSlice();
*/

        }

        private void SlicerOnSliceComplete2(string code)
        {
            isFile = false;
            gCodeContent = code;
            updateEditor = true;
            //codeEditor.setContent(0, System.IO.File.ReadAllText(file));
        }

        private void SlicerOnSliceComplete(string file)
        {
            isFile = true;
            gCodefile = file;
            updateEditor = true;
            toasterClose = true;
            //this.toaster.CloseToaster();
            //codeEditor.setContent(0, System.IO.File.ReadAllText(file));
        }

        private void Change_View_Click(object sender, RoutedEventArgs e)
        {
            ToggleButton tb = sender as ToggleButton;
            if (tb.IsChecked.Value)
            {
                showPreview();
            }
            else
            {
                showSlicer();
            }
        }

        public void showPreview()
        {
            viewMode = 0;

            threedview1.ChangeView(1);
//            expander2.Width = 300;
            expander2.Visibility = Visibility.Visible;
//            expander3.Width = 0;
            expander3.Visibility = Visibility.Collapsed;
        }

        public void showSlicer()
        {
            viewMode = 1;

            threedview1.ChangeView(2);
//            expander2.Width = 0;
            expander2.Visibility = Visibility.Collapsed;
//            expander3.Width = 400;
            expander3.Visibility = Visibility.Visible;
        }

        private void Save_GCode_Click(object sender, RoutedEventArgs e)
        {
            codeEditor.SaveCode();
        }

        private void RangeSlider_OnLowerHigherValueChanged(object sender, RoutedEventArgs e)
        {
            SettingsProvider.Instance.CommonSettings.HigherLayer = (int)((RangeSlider) e.OriginalSource).HigherValue;
            SettingsProvider.Instance.CommonSettings.LowerLayer = (int)((RangeSlider) e.OriginalSource).LowerValue;
            JobPreview(codeEditor);
        }

        private void NewProject_OnClick(object sender, RoutedEventArgs e)
        {
            expander1.IsExpanded = false;
            if (SaveProjectQuestion())
            {
                PrintCamProject newProject = new PrintCamProject(threedview1);
               ProjectManager.Instance.CurrentProject = newProject;
                showPreview();
            }
        }

        private bool SaveProjectQuestion()
        {
            if ((ProjectManager.Instance.CurrentProject != null) && (ProjectManager.Instance.CurrentProject.IsChanged))
            {
                MessageBoxResult result = System.Windows.MessageBox.Show(this, _3DPrinter.setting.Localization.Instance.CurrentLanguage.SaveProjectQuestion,_3DPrinter.setting.Localization.Instance.CurrentLanguage.SaveProjectTitle, MessageBoxButton.YesNoCancel, MessageBoxImage.Question);

                if (result == MessageBoxResult.Yes)
                {
                    ProjectManager.Instance.CurrentProject.SaveProject();
                }

                if (result == MessageBoxResult.Cancel)
                {
                    return false;
                }

            }
            return true;
        }


        private void OpenProject_OnClick(object sender, RoutedEventArgs e)
        {
            expander1.IsExpanded = false;
            if (SaveProjectQuestion())
            {
                OpenFileDialog openFileDialog = new OpenFileDialog();
                openFileDialog.Filter = "PrintCAM Projects(*.ptc)|*.ptc";
                openFileDialog.Multiselect = false;
                openFileDialog.CheckFileExists = true;

                if (openFileDialog.ShowDialog() == true)
                {
                    string file = openFileDialog.FileName;

                    try
                    {
                        XmlSerializer x = new XmlSerializer(typeof (PrintCamProject));
                        StreamReader reader = new StreamReader(file);
                        PrintCamProject openedProject = (PrintCamProject) x.Deserialize(reader);
                        openedProject.control = threedview1;
                        openedProject.GCodeChangeEvent += SlicerOnSliceComplete2;
                        openedProject.deserialize();
                        reader.Close();
                        ProjectManager.Instance.CurrentProject.GCodeChangeEvent -= SlicerOnSliceComplete2;
                        ProjectManager.Instance.CurrentProject = openedProject;
                        SettingsProvider.Instance.RecentFiles.Add(file);
                        if (openedProject.EnableLoadModel())
                        {
                            showPreview();
                        }
                        else
                        {
                            showSlicer();
                        }
                    }
                    catch (Exception exp)
                    {
                        MessageBox.Show(_3DPrinter.setting.Localization.Instance.CurrentLanguage.ErrorOpenProjectMessage, _3DPrinter.setting.Localization.Instance.CurrentLanguage.Error, MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
            }
        }

        private void AddModel_OnClick(object sender, RoutedEventArgs e)
        {
            expander1.IsExpanded = false;
            if (!ProjectManager.Instance.CurrentProject.EnableLoadModel())
            {
                MessageBoxResult result = MessageBox.Show(this,_3DPrinter.setting.Localization.Instance.CurrentLanguage.WarningMessageGCode, _3DPrinter.setting.Localization.Instance.CurrentLanguage.WarningTitle, MessageBoxButton.YesNo, MessageBoxImage.Question);
                if (result == MessageBoxResult.No)
                {
                    return;
                }
            }

            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Filter = "STL files(*.stl)|*.stl|OBJ files (*.obj)|*.obj|3D Max files (*.3ds)|*.3ds";
            openFileDialog.Multiselect = true;
            openFileDialog.CheckFileExists = true;

            if (openFileDialog.ShowDialog() == true)
            {
                if (ProjectManager.Instance.CurrentProject == null)
                {
                    ProjectManager.Instance.CurrentProject.GCodeChangeEvent -= SlicerOnSliceComplete2;
                    ProjectManager.Instance.CurrentProject = new PrintCamProject(threedview1);
                    ProjectManager.Instance.CurrentProject.GCodeChangeEvent += SlicerOnSliceComplete2;

                }

                try{
                         ProjectManager.Instance.CurrentProject.AddFileModels(openFileDialog.FileNames);

                    }
                    catch (Exception exp)
                    {
                        MessageBox.Show(_3DPrinter.setting.Localization.Instance.CurrentLanguage.ErrorAddModelMessage, _3DPrinter.setting.Localization.Instance.CurrentLanguage.Error, MessageBoxButton.OK, MessageBoxImage.Error);
                    }

                foreach (string file in openFileDialog.FileNames)
                {
                    SettingsProvider.Instance.RecentFiles.Add(file);
                }
                showPreview();

            }
        }

        private void SaveProject_OnClick(object sender, RoutedEventArgs e)
        {
            expander1.IsExpanded = false;
            if (ProjectManager.Instance.CurrentProject != null)
            {
                ProjectManager.Instance.CurrentProject.SaveProject();
            }
        }

        private void LoadCode_OnClick(object sender, RoutedEventArgs e)
        {
            expander1.IsExpanded = false;
            if (!ProjectManager.Instance.CurrentProject.EnableLoadCode())
            {
                MessageBoxResult result = MessageBox.Show(this,_3DPrinter.setting.Localization.Instance.CurrentLanguage.WarningMessageModel,_3DPrinter.setting.Localization.Instance.CurrentLanguage.WarningTitle, MessageBoxButton.YesNo, MessageBoxImage.Question);
                if (result == MessageBoxResult.No)
                {
                    return;
                }
            }

            OpenFileDialog openFileDialog = new OpenFileDialog();

            openFileDialog.Filter = "G-Code files (*.gcode, *.gco)|*.gcode;*.gco|Mastercam files(*.nc)|*.nc";
            openFileDialog.Multiselect = false;
            openFileDialog.CheckFileExists = true;
            openFileDialog.DereferenceLinks = false;
            openFileDialog.InitialDirectory = "D:\\";
            if (openFileDialog.ShowDialog() == true)
            {
                //this.toaster.ShowToaster("Это сообщение!!!", "В этом сообщении я буду передавать всякого рода служебную информацию!!!");

                string file = openFileDialog.FileName;

                if (ProjectManager.Instance.CurrentProject == null)
                {
                    ProjectManager.Instance.CurrentProject = new PrintCamProject(threedview1);
                    ProjectManager.Instance.CurrentProject.GCodeChangeEvent += SlicerOnSliceComplete2;
                }
                try
                {
                    ProjectManager.Instance.CurrentProject.AddGCode(file);
                }
                catch (Exception exp)
                {
                    MessageBox.Show(_3DPrinter.setting.Localization.Instance.CurrentLanguage.ErrorAddGCodeMessage, _3DPrinter.setting.Localization.Instance.CurrentLanguage.Error, MessageBoxButton.OK, MessageBoxImage.Error);
                }
                SettingsProvider.Instance.RecentFiles.Add(file);
                showSlicer();

              //  this.toaster.CloseToaster();
            }
        }



        private ListViewItem _temp = null;
        private void EventSetter_OnHandler2(object sender, MouseButtonEventArgs e)
        {
            ListViewItem item = (ListViewItem) sender;
            if (_temp == null)
            {
                _temp = item;
            }
            else
            {
                if (_temp == item)
                {
                    item.IsSelected = false;
                    modelListView1.SelectedIndex = -1;
                    _temp = null;
                    //   threedview1.UpdateChanges();
                }
                else
                {
                    item.IsSelected = true;
                    _temp = item;
                }
            }

            threedview1.UpdateChanges();
        }

        private void MoveToggleButton_OnChecked(object sender, RoutedEventArgs e)
        {
            rotateToggle.IsChecked = false;
            scaleToggle.IsChecked = false;
            rotatePanel.Visibility = Visibility.Collapsed;
            scalePanel.Visibility = Visibility.Collapsed;
            if (moveToggle.IsChecked.Value)
            {
                movePanel.Visibility = Visibility.Visible;
                threedview1.SetChangeMode(1);
            }
            else
            {
                movePanel.Visibility = Visibility.Collapsed;
                threedview1.SetChangeMode(0);
            }
        }

        private void ScaleToggleButton_OnChecked(object sender, RoutedEventArgs e)
        {
            rotateToggle.IsChecked = false;
            moveToggle.IsChecked = false;
            rotatePanel.Visibility = Visibility.Collapsed;
            movePanel.Visibility = Visibility.Collapsed;
            if (scaleToggle.IsChecked.Value)
            {
                scalePanel.Visibility = Visibility.Visible;
                threedview1.SetChangeMode(2);
            }
            else
            {
                scalePanel.Visibility = Visibility.Collapsed;
                threedview1.SetChangeMode(0);
            }

        }

        private void RotateToggleButton_OnChecked(object sender, RoutedEventArgs e)
        {
            moveToggle.IsChecked = false;
            scaleToggle.IsChecked = false;
            movePanel.Visibility = Visibility.Collapsed;
            scalePanel.Visibility = Visibility.Collapsed;
            if (rotateToggle.IsChecked.Value)
            {
                rotatePanel.Visibility = Visibility.Visible;
                threedview1.SetChangeMode(3);
            }
            else
            {
                rotatePanel.Visibility = Visibility.Collapsed;
                threedview1.SetChangeMode(0);
            }
        }

        private void ModelListView1_OnInitialized(object sender, EventArgs e)
        {
            modelListView1.SelectedIndex = ProjectManager.Instance.CurrentProject.SelectedModelIndex;
        }

        private void ModelListView1_OnIsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            modelListView1.SelectedIndex = ProjectManager.Instance.CurrentProject.SelectedModelIndex;
        }

        private void TextBoxBaseScale_OnTextChanged(object sender, TextChangedEventArgs e)
        {


            TextBoxBase_OnTextChanged(sender, e);
        }

        private void TextBoxBase_OnTextChanged(object sender, TextChangedEventArgs e)
        {

            ((TextBox)sender).GetBindingExpression(TextBox.TextProperty).UpdateSource();
            threedview1.UpdateChanges();
        }

        private void SaveModelAsSTL_OnClick(object sender, RoutedEventArgs e)
        {
            if (ProjectManager.Instance.CurrentProject.ModelList.Count > 0)
            {
                SaveFileDialog saveFile = new SaveFileDialog();
                saveFile.Filter = "STL-файл (*.stl)|*.stl";

                if (saveFile.ShowDialog() == true)
                {
                    saveComposition(saveFile.FileName);
                }
            }
        }

        private void saveComposition(string filename)
        {
            List<PrintModel> list = new List<PrintModel>();

            if (ProjectManager.Instance.CurrentProject.SelectedModel != null)
            {
                list.Add((PrintModel)ProjectManager.Instance.CurrentProject.SelectedModel);
            }
            else
            {
                list = ProjectManager.Instance.CurrentProject.ModelList.ToList();
            }
            TopoModel model = new TopoModel();
            foreach (PrintModel stl in list)
            {
                stl.UpdateMatrix();
                model.Merge(stl.ActiveModel, stl.trans);
            }
            if (filename.EndsWith(".obj") || filename.EndsWith(".OBJ"))
                model.exportObj(filename, true);
            else
                model.exportSTL(filename, true);
        }

        private void RotateX_90_OnClick(object sender, RoutedEventArgs e)
        {
            float rotatedValue = 0;
            if (ProjectManager.Instance.CurrentProject.SelectedModel != null)
            {
                float.TryParse(rotateX.Text, NumberStyles.Any, new CultureInfo("ru-RU"), out rotatedValue);
                rotatedValue += 90.0f;
                if (rotatedValue >= 360)
                    rotatedValue -= 360;
                ProjectManager.Instance.CurrentProject.SelectedModel.Rotation.X = rotatedValue;
            }
        }

        private void RotateY_90_OnClick(object sender, RoutedEventArgs e)
        {
            float rotatedValue = 0;
            if (ProjectManager.Instance.CurrentProject.SelectedModel != null)
            {
                float.TryParse(rotateY.Text, NumberStyles.Any, new CultureInfo("ru-RU"), out rotatedValue);
                rotatedValue += 90.0f;
                if (rotatedValue >= 360)
                    rotatedValue -= 360;
                ProjectManager.Instance.CurrentProject.SelectedModel.Rotation.Y = rotatedValue;

            }
            
        }

        private void RotateZ_90_OnClick(object sender, RoutedEventArgs e)
        {
            float rotatedValue = 0;
            if (ProjectManager.Instance.CurrentProject.SelectedModel != null)
            {
                float.TryParse(rotateZ.Text, NumberStyles.Any, new CultureInfo("ru-RU"), out rotatedValue);
                rotatedValue += 90.0f;
                if (rotatedValue >= 360)
                    rotatedValue -= 360;
                ProjectManager.Instance.CurrentProject.SelectedModel.Rotation.Z = rotatedValue;
            }
        }

        private void DeleteModel_OnClick(object sender, RoutedEventArgs e)
        {
            if (ProjectManager.Instance.CurrentProject.SelectedModel != null)
            {
                MessageBoxResult result = MessageBox.Show(this, _3DPrinter.setting.Localization.Instance.CurrentLanguage.DeleteQuestion, _3DPrinter.setting.Localization.Instance.CurrentLanguage.DeleteTitle,MessageBoxButton.YesNo, MessageBoxImage.Question);
                if (result == MessageBoxResult.Yes) {
                    ProjectManager.Instance.CurrentProject.DeleteModel(ProjectManager.Instance.CurrentProject.SelectedModel);
                }
            }
        }

        private void Visible_OnClick(object sender, RoutedEventArgs e)
        {
            threedview1.UpdateChanges();
        }

        private void Land_OnClick(object sender, RoutedEventArgs e)
        {
            if (ProjectManager.Instance.CurrentProject.SelectedModel != null)
                    ProjectManager.Instance.CurrentProject.SelectedModel.Land();
        }

        private void Fit_OnClick(object sender, RoutedEventArgs e)
        {
            ProjectManager.Instance.CurrentProject.Fit();
        }

        private void CentrerButton_OnClick(object sender, RoutedEventArgs e)
        {
            if (ProjectManager.Instance.CurrentProject.SelectedModel != null)
            {
                PrinterSettingsModel settings = ProjectManager.Instance.CurrentProject.projectSettings.PrinterSettings;
                ProjectManager.Instance.CurrentProject.SelectedModel.Center(settings.BedLeft + settings.PrintAreaWidth / 2, settings.BedFront + settings.PrintAreaDepth / 2);
            }
        }

        private void AutoPositionButton_OnClick(object sender, RoutedEventArgs e)
        {
            ProjectManager.Instance.CurrentProject.Autoposition();
        }

        private void MainWindow_OnLoaded(object sender, RoutedEventArgs e)
        {
            


        }

        private void EventSetter_OnHandler3(object sender, MouseButtonEventArgs e)
        {
            ListViewItem item = sender as ListViewItem;
            string file = item.Content as string;

            string ext = System.IO.Path.GetExtension(file).ToUpper();

            if (ext.Equals(".STL") || ext.Equals(".OBJ") || ext.Equals(".3DS"))
            {
                if (ProjectManager.Instance.CurrentProject == null)
                {
                    ProjectManager.Instance.CurrentProject.GCodeChangeEvent -= SlicerOnSliceComplete2;
                    ProjectManager.Instance.CurrentProject = new PrintCamProject(threedview1);
                    ProjectManager.Instance.CurrentProject.GCodeChangeEvent += SlicerOnSliceComplete2;

                }
                ProjectManager.Instance.CurrentProject.AddFileModels(new string[] {file});
                SettingsProvider.Instance.RecentFiles.Add(file);
                showPreview();
            }
            else if (ext.Equals(".G") || ext.Equals(".GCODE") || ext.Equals(".NC") || ext.Equals(".GCO"))
            {
                if (ProjectManager.Instance.CurrentProject == null)
                {
                    ProjectManager.Instance.CurrentProject = new PrintCamProject(threedview1);
                    ProjectManager.Instance.CurrentProject.GCodeChangeEvent += SlicerOnSliceComplete2;
                }
                ProjectManager.Instance.CurrentProject.AddGCode(file);
                SettingsProvider.Instance.RecentFiles.Add(file);
                showSlicer();
            }
            else if (ext.Equals(".PTC"))
            {
                XmlSerializer x = new XmlSerializer(typeof(PrintCamProject));
                StreamReader reader = new StreamReader(file);
                PrintCamProject openedProject = (PrintCamProject)x.Deserialize(reader);
                openedProject.control = threedview1;
                openedProject.GCodeChangeEvent += SlicerOnSliceComplete2;
                openedProject.deserialize();
                reader.Close();
                ProjectManager.Instance.CurrentProject.GCodeChangeEvent -= SlicerOnSliceComplete2;
                ProjectManager.Instance.CurrentProject = openedProject;
                SettingsProvider.Instance.RecentFiles.Add(file);
                if (openedProject.EnableLoadModel())
                {
                    showPreview();
                }
                else
                {
                    showSlicer();
                }
            }

        }


        public MethodInvoker FirmwareDetected;


        public MethodInvoker FirmwareDetected2 = delegate
        {
/*            Main.main.printPanel.UpdateConStatus(true);
            if (conn.isRepetier)
            {
                Main.main.continuousMonitoringMenuItem.Enabled = true;
                Main.main.bedHeightMapToolStripMenuItem.Enabled = true;
            }
            else
            {
                Main.main.continuousMonitoringMenuItem.Enabled = false;
                Main.main.bedHeightMapToolStripMenuItem.Enabled = false;
            }
 */ 
        };


        public MethodInvoker UpdateJobButtons;

        public MethodInvoker UpdateJobButtons2 = delegate
        {
/*
            if (!conn.connector.IsJobRunning())
            {
                Main.main.toolKillJob.Enabled = false;
                Main.main.toolRunJob.Enabled = conn.connector.IsConnected();
                Main.main.toolRunJob.ToolTipText = Trans.T("M_RUN_JOB"); // "Run job";
                Main.main.toolRunJob.Text = Trans.T("M_RUN_JOB"); //"Run job";
                Main.main.toolRunJob.Image = Main.main.imageList.Images[2];
            }
            else
            {
                Main.main.toolRunJob.Enabled = true;
                Main.main.toolKillJob.Enabled = true;
                Main.main.toolRunJob.Image = Main.main.imageList.Images[3];
                Main.main.toolRunJob.ToolTipText = Trans.T("M_PAUSE_JOB"); //"Pause job";
                Main.main.toolRunJob.Text = Trans.T("M_PAUSE_JOB"); //"Pause job";
            }
 */
        };

        public MethodInvoker UpdateEEPROM;

        public MethodInvoker UpdateEEPROM2 = delegate
        {
            int i = 2;
/*
            if (conn.isMarlin || conn.isRepetier || conn.isSprinter) // Activate special menus and function
            {
                main.eeprom.Enabled = true;
            }
            else main.eeprom.Enabled = false;
*/
        };
    }



    public class VisibleConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter,
            System.Globalization.CultureInfo culture)
        {
            if (value == null)
            {
                return Visibility.Collapsed;
            }
            else
            {
                return Visibility.Visible;
            }
        }

        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            return 0;
        }

    }


    public class SizeConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter,
            System.Globalization.CultureInfo culture)
        {
            double v = (double) value;

            return v - 12;
        }

        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            return value;
        }

    }

    public class BoolVisibleConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter,
            System.Globalization.CultureInfo culture)
        {
            if ((bool)value)
            {
                return Visibility.Visible;
            }
            else
            {
                return Visibility.Hidden;
            }
        }

        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            return 0;
        }

    }


    public class ExpanderHeightConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            double h = (double)value;
            return h-48;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return null;
        }
    }


    public class NameFilePositionConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            string fullPath = (string)value;
            return System.IO.Path.GetFileName(fullPath);
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return null;
        }
    }


    public class MenutyleSelector : StyleSelector
    {
        public Style ButtonStyle { get; set; }
        public Style SeparatorStyle { get; set; }
        public Style ToggleStyle { get; set; }
        public Style ComboBoxStyle { get; set; }

        public Style LabelStyle { get; set; }
        

        public override Style SelectStyle(object item, DependencyObject container)
        {
            if (item is MySeparator)
            {
                return SeparatorStyle;
            }
            else if ((item is MyToggleCommand) || (item is MyToggleCommand2))
            {
                return ToggleStyle;
            }
            else if (item is MyComboBoxCommand)
            {
                return ComboBoxStyle;
            }
            else if (item is MyLabelCommand)
            {
                return LabelStyle;
            }
            return ButtonStyle;
        }
    }


}
