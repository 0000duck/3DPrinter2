﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Serialization;
using _3DPrinter.utils;

namespace _3DPrinter.setting
{
    [XmlRoot("LingualModel")]
    public class LingualModel : NotifyPropertyChangedBase
    {

        private string _Name;

        [XmlElement("Name")]
        public string Name
        {
            get { return _Name; }
            set
            {
                _Name = value;
                OnPropertyChanged("Name");
            }
        }


        private string _NewProject;

        [XmlElement("NewProject")]
        public string NewProject
        {
            get { return _NewProject; }
            set
            {
                _NewProject = value;
                OnPropertyChanged("NewProject");
            }
        }

        private string _OpenProject;

        [XmlElement("OpenProject")]
        public string OpenProject
        {
            get { return _OpenProject; }
            set
            {
                _OpenProject = value;
                OnPropertyChanged("OpenProject");
            }
        }

        private string _LoadModel;

        [XmlElement("LoadModel")]
        public string LoadModel
        {
            get { return _LoadModel; }
            set
            {
                _LoadModel = value;
                OnPropertyChanged("LoadModel");
            }
        }

       
        private string _LoadCode;

        [XmlElement("LoadCode")]
        public string LoadCode
        {
            get { return _LoadCode; }
            set
            {
                _LoadCode = value;
                OnPropertyChanged("LoadCode");
            }
        }

        private string _SaveProject;

        [XmlElement("SaveProject")]
        public string SaveProject
        {
            get { return _SaveProject; }
            set
            {
                _SaveProject = value;
                OnPropertyChanged("SaveProject");
            }
        }

        private string _Exit;

        [XmlElement("Exit")]
        public string Exit
        {
            get { return _Exit; }
            set
            {
                _Exit = value;
                OnPropertyChanged("Exit");
            }
        }

        private string _RecentFiles;

        [XmlElement("RecentFiles")]
        public string RecentFiles
        {
            get { return _RecentFiles; }
            set
            {
                _RecentFiles = value;
                OnPropertyChanged("RecentFiles");
            }
        }

        private string _Settings;

        [XmlElement("Settings")]
        public string Settings
        {
            get { return _Settings; }
            set
            {
                _Settings = value;
                OnPropertyChanged("Settings");
            }
        }

        private string _About;

        [XmlElement("About")]
        public string About
        {
            get { return _About; }
            set
            {
                _About = value;
                OnPropertyChanged("About");
            }
        }



        private string _View;

        [XmlElement("View")]
        public string View
        {
            get { return _View; }
            set
            {
                _View = value;
                OnPropertyChanged("View");
            }
        }

        private string _ViewMode;

        [XmlElement("ViewMode")]
        public string ViewMode
        {
            get { return _ViewMode; }
            set
            {
                _ViewMode = value;
                OnPropertyChanged("ViewMode");
            }
        }


        private string _FrontView;

        [XmlElement("FrontView")]
        public string FrontView
        {
            get { return _FrontView; }
            set
            {
                _FrontView = value;
                OnPropertyChanged("FrontView");
            }
        }

        private string _RightView;

        [XmlElement("RightView")]
        public string RightView
        {
            get { return _RightView; }
            set
            {
                _RightView = value;
                OnPropertyChanged("RightView");
            }
        }

        private string _LeftView;

        [XmlElement("LeftView")]
        public string LeftView
        {
            get { return _LeftView; }
            set
            {
                _LeftView = value;
                OnPropertyChanged("LeftView");
            }
        }

        private string _BottomView;

        [XmlElement("BottomView")]
        public string BottomView
        {
            get { return _BottomView; }
            set
            {
                _BottomView = value;
                OnPropertyChanged("BottomView");
            }
        }

        private string _TopView;

        [XmlElement("TopView")]
        public string TopView
        {
            get { return _TopView; }
            set
            {
                _TopView = value;
                OnPropertyChanged("TopView");
            }
        }

        private string _BackView;

        [XmlElement("BackView")]
        public string BackView
        {
            get { return _BackView; }
            set
            {
                _BackView = value;
                OnPropertyChanged("BackView");
            }
        }

        private string _ParallelProjection;

        [XmlElement("ParallelProjection")]
        public string ParallelProjection
        {
            get { return _ParallelProjection; }
            set
            {
                _ParallelProjection = value;
                OnPropertyChanged("ParallelProjection");
            }
        }

        private string _ShowEdges;

        [XmlElement("ShowEdges")]
        public string ShowEdges
        {
            get { return _ShowEdges; }
            set
            {
                _ShowEdges = value;
                OnPropertyChanged("ShowEdges");
            }
        }

        private string _ShowFaces;

        [XmlElement("ShowFaces")]
        public string ShowFaces
        {
            get { return _ShowFaces; }
            set
            {
                _ShowFaces = value;
                OnPropertyChanged("ShowFaces");
            }
        }

        private string _FitPrinter;

        [XmlElement("FitPrinter")]
        public string FitPrinter
        {
            get { return _FitPrinter; }
            set
            {
                _FitPrinter = value;
                OnPropertyChanged("FitPrinter");
            }
        }

        private string _FitObjects;

        [XmlElement("FitObjects")]
        public string FitObjects
        {
            get { return _FitObjects; }
            set
            {
                _FitObjects = value;
                OnPropertyChanged("FitObjects");
            }
        }

        private string _IsometricView;

        [XmlElement("IsometricView")]
        public string IsometricView
        {
            get { return _IsometricView; }
            set
            {
                _IsometricView = value;
                OnPropertyChanged("IsometricView");
            }
        }

        

        


        private string _Slicer;

        [XmlElement("Slicer")]
        public string Slicer
        {
            get { return _Slicer; }
            set
            {
                _Slicer = value;
                OnPropertyChanged("Slicer");
            }
        }

        private string _Extruders;

        [XmlElement("Extruders")]
        public string Extruders
        {
            get { return _Extruders; }
            set
            {
                _Extruders = value;
                OnPropertyChanged("Extruders");
            }
        }

        private string _RunSlice;

        [XmlElement("RunSlice")]
        public string RunSlice
        {
            get { return _RunSlice; }
            set
            {
                _RunSlice = value;
                OnPropertyChanged("RunSlice");
            }
        }

        private string _ShowTravelMove;

        [XmlElement("ShowTravelMove")]
        public string ShowTravelMove
        {
            get { return _ShowTravelMove; }
            set
            {
                _ShowTravelMove = value;
                OnPropertyChanged("ShowTravelMove");
            }
        }

        private string _ShowFilament;

        [XmlElement("ShowFilament")]
        public string ShowFilament
        {
            get { return _ShowFilament; }
            set
            {
                _ShowFilament = value;
                OnPropertyChanged("ShowFilament");
            }
        }


        private string _CorrectNormals;

        [XmlElement("CorrectNormals")]
        public string CorrectNormals
        {
            get { return _CorrectNormals; }
            set
            {
                _CorrectNormals = value;
                OnPropertyChanged("CorrectNormals");
            }
        }


        private string _Profile;

        [XmlElement("Profile")]
        public string Profile
        {
            get { return _Profile; }
            set
            {
                _Profile = value;
                OnPropertyChanged("Profile");
            }
        }

        private string _InfillDensity;

        [XmlElement("InfillDensity")]
        public string InfillDensity
        {
            get { return _InfillDensity; }
            set
            {
                _InfillDensity = value;
                OnPropertyChanged("InfillDensity");
            }
        }

        private string _Support;

        [XmlElement("Support")]
        public string Support
        {
            get { return _Support; }
            set
            {
                _Support = value;
                OnPropertyChanged("Support");
            }
        }


        private string _DeleteModel;

        [XmlElement("DeleteModel")]
        public string DeleteModel
        {
            get { return _DeleteModel; }
            set
            {
                _DeleteModel = value;
                OnPropertyChanged("DeleteModel");
            }
        }

        private string _SaveAsSTL;

        [XmlElement("SaveAsSTL")]
        public string SaveAsSTL
        {
            get { return _SaveAsSTL; }
            set
            {
                _SaveAsSTL = value;
                OnPropertyChanged("SaveAsSTL");
            }
        }

        private string _Lay;

        [XmlElement("Lay")]
        public string Lay
        {
            get { return _Lay; }
            set
            {
                _Lay = value;
                OnPropertyChanged("Lay");
            }
        }

        private string _ScaleToPrinter;

        [XmlElement("ScaleToPrinter")]
        public string ScaleToPrinter
        {
            get { return _ScaleToPrinter; }
            set
            {
                _ScaleToPrinter = value;
                OnPropertyChanged("ScaleToPrinter");
            }
        }

        private string _CenterObject;

        [XmlElement("CenterObject")]
        public string CenterObject
        {
            get { return _CenterObject; }
            set
            {
                _CenterObject = value;
                OnPropertyChanged("CenterObject");
            }
        }

        private string _Autoposition;

        [XmlElement("Autoposition")]
        public string Autoposition
        {
            get { return _Autoposition; }
            set
            {
                _Autoposition = value;
                OnPropertyChanged("Autoposition");
            }
        }

        private string _Move;

        [XmlElement("Move")]
        public string Move
        {
            get { return _Move; }
            set
            {
                _Move = value;
                OnPropertyChanged("Move");
            }
        }


        private string _Scale;

        [XmlElement("Scale")]
        public string Scale
        {
            get { return _Scale; }
            set
            {
                _Scale = value;
                OnPropertyChanged("Scale");
            }
        }

        private string _Rotate;

        [XmlElement("Rotate")]
        public string Rotate
        {
            get { return _Rotate; }
            set
            {
                _Rotate = value;
                OnPropertyChanged("Rotate");
            }
        }


        private string _Information;

        [XmlElement("Information")]
        public string Information
        {
            get { return _Information; }
            set
            {
                _Information = value;
                OnPropertyChanged("Information");
            }
        }

        private string _Points;

        [XmlElement("Points")]
        public string Points
        {
            get { return _Points; }
            set
            {
                _Points = value;
                OnPropertyChanged("Points");
            }
        }

        private string _Edges;

        [XmlElement("Edges")]
        public string Edges
        {
            get { return _Edges; }
            set
            {
                _Edges = value;
                OnPropertyChanged("Edges");
            }
        }

        private string _Faces;

        [XmlElement("Faces")]
        public string Faces
        {
            get { return _Faces; }
            set
            {
                _Faces = value;
                OnPropertyChanged("Faces");
            }
        }

        private string _Volume;

        [XmlElement("Volume")]
        public string Volume
        {
            get { return _Volume; }
            set
            {
                _Volume = value;
                OnPropertyChanged("Volume");
            }
        }

        private string _Surface;

        [XmlElement("Surface")]
        public string Surface
        {
            get { return _Surface; }
            set
            {
                _Surface = value;
                OnPropertyChanged("Surface");
            }
        }

        private string _Size;

        [XmlElement("Size")]
        public string Size
        {
            get { return _Size; }
            set
            {
                _Size = value;
                OnPropertyChanged("Size");
            }
        }


        private string _SaveGCode;

        [XmlElement("SaveGCode")]
        public string SaveGCode
        {
            get { return _SaveGCode; }
            set
            {
                _SaveGCode = value;
                OnPropertyChanged("SaveGCode");
            }
        }

        private string _Statistic;

        [XmlElement("Statistic")]
        public string Statistic
        {
            get { return _Statistic; }
            set
            {
                _Statistic = value;
                OnPropertyChanged("Statistic");
            }
        }

        private string _ProcessTime;

        [XmlElement("ProcessTime")]
        public string ProcessTime
        {
            get { return _ProcessTime; }
            set
            {
                _ProcessTime = value;
                OnPropertyChanged("ProcessTime");
            }
        }


        private string _LayerCount;

        [XmlElement("LayerCount")]
        public string LayerCount
        {
            get { return _LayerCount; }
            set
            {
                _LayerCount = value;
                OnPropertyChanged("LayerCount");
            }
        }

        private string _LineCount;

        [XmlElement("LineCount")]
        public string LineCount
        {
            get { return _LineCount; }
            set
            {
                _LineCount = value;
                OnPropertyChanged("LineCount");
            }
        }

        private string _FilamentLength;

        [XmlElement("FilamentLength")]
        public string FilamentLength
        {
            get { return _FilamentLength; }
            set
            {
                _FilamentLength = value;
                OnPropertyChanged("FilamentLength");
            }
        }


        private string _Models;

        [XmlElement("Models")]
        public string Models
        {
            get { return _Models; }
            set
            {
                _Models = value;
                OnPropertyChanged("Models");
            }
        }


        private string _ObjectVisible;

        [XmlElement("ObjectVisible")]
        public string ObjectVisible
        {
            get { return _ObjectVisible; }
            set
            {
                _ObjectVisible = value;
                OnPropertyChanged("ObjectVisible");
            }
        }


        private string _CommonSettings;

        [XmlElement("CommonSettings")]
        public string CommonSettings
        {
            get { return _CommonSettings; }
            set
            {
                _CommonSettings = value;
                OnPropertyChanged("CommonSettings");
            }
        }

        private string _Visualization;

        [XmlElement("Visualization")]
        public string Visualization
        {
            get { return _Visualization; }
            set
            {
                _Visualization = value;
                OnPropertyChanged("Visualization");
            }
        }

        private string _PrinterSettings;

        [XmlElement("PrinterSettings")]
        public string PrinterSettings
        {
            get { return _PrinterSettings; }
            set
            {
                _PrinterSettings = value;
                OnPropertyChanged("PrinterSettings");
            }
        }

        private string _SlicerSettings;

        [XmlElement("SlicerSettings")]
        public string SlicerSettings
        {
            get { return _SlicerSettings; }
            set
            {
                _SlicerSettings = value;
                OnPropertyChanged("SlicerSettings");
            }
        }


        private string _MaterialSettings;

        [XmlElement("MaterialSettings")]
        public string MaterialSettings
        {
            get { return _MaterialSettings; }
            set
            {
                _MaterialSettings = value;
                OnPropertyChanged("MaterialSettings");
            }
        }


        private string _WorkDirectory;

        [XmlElement("WorkDirectory")]
        public string WorkDirectory
        {
            get { return _WorkDirectory; }
            set
            {
                _WorkDirectory = value;
                OnPropertyChanged("WorkDirectory");
            }
        }

        private string _Overview;

        [XmlElement("Overview")]
        public string Overview
        {
            get { return _Overview; }
            set
            {
                _Overview = value;
                OnPropertyChanged("Overview");
            }
        }

        private string _CurrentLanguage;

        [XmlElement("CurrentLanguage")]
        public string CurrentLanguage
        {
            get { return _CurrentLanguage; }
            set
            {
                _CurrentLanguage = value;
                OnPropertyChanged("CurrentLanguage");
            }
        }


        private string _Associate;

        [XmlElement("Associate")]
        public string Associate
        {
            get { return _Associate; }
            set
            {
                _Associate = value;
                OnPropertyChanged("Associate");
            }
        }

        private string _FileAssociations;

        [XmlElement("FileAssociations")]
        public string FileAssociations
        {
            get { return _FileAssociations; }
            set
            {
                _FileAssociations = value;
                OnPropertyChanged("FileAssociations");
            }
        }

        private string _Common;

        [XmlElement("Common")]
        public string Common
        {
            get { return _Common; }
            set
            {
                _Common = value;
                OnPropertyChanged("Common");
            }
        }

        private string _Model;

        [XmlElement("Model")]
        public string Model
        {
            get { return _Model; }
            set
            {
                _Model = value;
                OnPropertyChanged("Model");
            }
        }

        private string _Filament;

        [XmlElement("Filament")]
        public string Filament
        {
            get { return _Filament; }
            set
            {
                _Filament = value;
                OnPropertyChanged("Filament");
            }
        }

        private string _Lights;

        [XmlElement("Lights")]
        public string Lights
        {
            get { return _Lights; }
            set
            {
                _Lights = value;
                OnPropertyChanged("Lights");
            }
        }

        private string _Light1;

        [XmlElement("Light1")]
        public string Light1
        {
            get { return _Light1; }
            set
            {
                _Light1 = value;
                OnPropertyChanged("Light1");
            }
        }

        private string _Light2;

        [XmlElement("Light2")]
        public string Light2
        {
            get { return _Light2; }
            set
            {
                _Light2 = value;
                OnPropertyChanged("Light2");
            }
        }

        private string _Light3;

        [XmlElement("Light3")]
        public string Light3
        {
            get { return _Light3; }
            set
            {
                _Light3 = value;
                OnPropertyChanged("Light3");
            }
        }

        private string _Light4;

        [XmlElement("Light4")]
        public string Light4
        {
            get { return _Light4; }
            set
            {
                _Light4 = value;
                OnPropertyChanged("Light4");
            }
        }

        private string _ShowCompass;

        [XmlElement("ShowCompass")]
        public string ShowCompass
        {
            get { return _ShowCompass; }
            set
            {
                _ShowCompass = value;
                OnPropertyChanged("ShowCompass");
            }
        }

        private string _ShowPrintBed;

        [XmlElement("ShowPrintBed")]
        public string ShowPrintBed
        {
            get { return _ShowPrintBed; }
            set
            {
                _ShowPrintBed = value;
                OnPropertyChanged("ShowPrintBed");
            }
        }

        private string _BackgroundTop;

        [XmlElement("BackgroundTop")]
        public string BackgroundTop
        {
            get { return _BackgroundTop; }
            set
            {
                _BackgroundTop = value;
                OnPropertyChanged("BackgroundTop");
            }
        }

        private string _BackgroungBottom;

        [XmlElement("BackgroungBottom")]
        public string BackgroungBottom
        {
            get { return _BackgroungBottom; }
            set
            {
                _BackgroungBottom = value;
                OnPropertyChanged("BackgroungBottom");
            }
        }

        private string _BedColor;

        [XmlElement("BedColor")]
        public string BedColor
        {
            get { return _BedColor; }
            set
            {
                _BedColor = value;
                OnPropertyChanged("BedColor");
            }
        }

        private string _PrinterFrameColor;

        [XmlElement("PrinterFrameColor")]
        public string PrinterFrameColor
        {
            get { return _PrinterFrameColor; }
            set
            {
                _PrinterFrameColor = value;
                OnPropertyChanged("PrinterFrameColor");
            }
        }


        private string _FaceColor;

        [XmlElement("FaceColor")]
        public string FaceColor
        {
            get { return _FaceColor; }
            set
            {
                _FaceColor = value;
                OnPropertyChanged("FaceColor");
            }
        }


        private string _InnerFaceColor;

        [XmlElement("InnerFaceColor")]
        public string InnerFaceColor
        {
            get { return _InnerFaceColor; }
            set
            {
                _InnerFaceColor = value;
                OnPropertyChanged("InnerFaceColor");
            }
        }

        private string _CuttedFaceColor;

        [XmlElement("CuttedFaceColor")]
        public string CuttedFaceColor
        {
            get { return _CuttedFaceColor; }
            set
            {
                _CuttedFaceColor = value;
                OnPropertyChanged("CuttedFaceColor");
            }
        }

        private string _EdgeColor;

        [XmlElement("EdgeColor")]
        public string EdgeColor
        {
            get { return _EdgeColor; }
            set
            {
                _EdgeColor = value;
                OnPropertyChanged("EdgeColor");
            }
        }

        private string _SelectedObjectColor;

        [XmlElement("SelectedObjectColor")]
        public string SelectedObjectColor
        {
            get { return _SelectedObjectColor; }
            set
            {
                _SelectedObjectColor = value;
                OnPropertyChanged("SelectedObjectColor");
            }
        }

        private string _SelectedFrameColor;

        [XmlElement("SelectedFrameColor")]
        public string SelectedFrameColor
        {
            get { return _SelectedFrameColor; }
            set
            {
                _SelectedFrameColor = value;
                OnPropertyChanged("SelectedFrameColor");
            }
        }

        private string _OuterObjectColor;

        [XmlElement("OuterObjectColor")]
        public string OuterObjectColor
        {
            get { return _OuterObjectColor; }
            set
            {
                _OuterObjectColor = value;
                OnPropertyChanged("OuterObjectColor");
            }
        }

        private string _ErrorObject;

        [XmlElement("ErrorObject")]
        public string ErrorObject
        {
            get { return _ErrorObject; }
            set
            {
                _ErrorObject = value;
                OnPropertyChanged("ErrorObject");
            }
        }

        private string _ErrorEdgeColor;

        [XmlElement("ErrorEdgeColor")]
        public string ErrorEdgeColor
        {
            get { return _ErrorEdgeColor; }
            set
            {
                _ErrorEdgeColor = value;
                OnPropertyChanged("ErrorEdgeColor");
            }
        }

        private string _FilamentColor;

        [XmlElement("FilamentColor")]
        public string FilamentColor
        {
            get { return _FilamentColor; }
            set
            {
                _FilamentColor = value;
                OnPropertyChanged("FilamentColor");
            }
        }

        private string _HotFilamentColor;

        [XmlElement("HotFilamentColor")]
        public string HotFilamentColor
        {
            get { return _HotFilamentColor; }
            set
            {
                _HotFilamentColor = value;
                OnPropertyChanged("HotFilamentColor");
            }
        }

        private string _SelectedFilamentColor;

        [XmlElement("SelectedFilamentColor")]
        public string SelectedFilamentColor
        {
            get { return _SelectedFilamentColor; }
            set
            {
                _SelectedFilamentColor = value;
                OnPropertyChanged("SelectedFilamentColor");
            }
        }

        private string _LightEnable;

        [XmlElement("LightEnable")]
        public string LightEnable
        {
            get { return _LightEnable; }
            set
            {
                _LightEnable = value;
                OnPropertyChanged("LightEnable");
            }
        }

        private string _LightDirection;

        [XmlElement("LightDirection")]
        public string LightDirection
        {
            get { return _LightDirection; }
            set
            {
                _LightDirection = value;
                OnPropertyChanged("LightDirection");
            }
        }

        private string _AmbientColor;

        [XmlElement("AmbientColor")]
        public string AmbientColor
        {
            get { return _AmbientColor; }
            set
            {
                _AmbientColor = value;
                OnPropertyChanged("AmbientColor");
            }
        }

        private string _DifusseColor;

        [XmlElement("DifusseColor")]
        public string DifusseColor
        {
            get { return _DifusseColor; }
            set
            {
                _DifusseColor = value;
                OnPropertyChanged("DifusseColor");
            }
        }

        private string _Specular;

        [XmlElement("Specular")]
        public string Specular
        {
            get { return _Specular; }
            set
            {
                _Specular = value;
                OnPropertyChanged("Specular");
            }
        }


        private string _MaterialProfile;

        [XmlElement("MaterialProfile")]
        public string MaterialProfile
        {
            get { return _MaterialProfile; }
            set
            {
                _MaterialProfile = value;
                OnPropertyChanged("MaterialProfile");
            }
        }

        private string _Delete;

        [XmlElement("Delete")]
        public string Delete
        {
            get { return _Delete; }
            set
            {
                _Delete = value;
                OnPropertyChanged("Delete");
            }
        }

        private string _FilamentDiameter;

        [XmlElement("FilamentDiameter")]
        public string FilamentDiameter
        {
            get { return _FilamentDiameter; }
            set
            {
                _FilamentDiameter = value;
                OnPropertyChanged("FilamentDiameter");
            }
        }

        private string _Flow;

        [XmlElement("Flow")]
        public string Flow
        {
            get { return _Flow; }
            set
            {
                _Flow = value;
                OnPropertyChanged("Flow");
            }
        }

        private string _PrintTemperature;

        [XmlElement("PrintTemperature")]
        public string PrintTemperature
        {
            get { return _PrintTemperature; }
            set
            {
                _PrintTemperature = value;
                OnPropertyChanged("PrintTemperature");
            }
        }

        private string _BedTemperature;

        [XmlElement("BedTemperature")]
        public string BedTemperature
        {
            get { return _BedTemperature; }
            set
            {
                _BedTemperature = value;
                OnPropertyChanged("BedTemperature");
            }
        }

        private string _MaxFanSpeed;

        [XmlElement("MaxFanSpeed")]
        public string MaxFanSpeed
        {
            get { return _MaxFanSpeed; }
            set
            {
                _MaxFanSpeed = value;
                OnPropertyChanged("MaxFanSpeed");
            }
        }

        private string _MinFanSpeed;

        [XmlElement("MinFanSpeed")]
        public string MinFanSpeed
        {
            get { return _MinFanSpeed; }
            set
            {
                _MinFanSpeed = value;
                OnPropertyChanged("MinFanSpeed");
            }
        }

        private string _MinLayerTime;

        [XmlElement("MinLayerTime")]
        public string MinLayerTime
        {
            get { return _MinLayerTime; }
            set
            {
                _MinLayerTime = value;
                OnPropertyChanged("MinLayerTime");
            }
        }

        private string _PrinterProfile;

        [XmlElement("PrinterProfile")]
        public string PrinterProfile
        {
            get { return _PrinterProfile; }
            set
            {
                _PrinterProfile = value;
                OnPropertyChanged("PrinterProfile");
            }
        }

        private string _Connection;

        [XmlElement("Connection")]
        public string Connection
        {
            get { return _Connection; }
            set
            {
                _Connection = value;
                OnPropertyChanged("Connection");
            }
        }

        private string _Printer;

        [XmlElement("Printer")]
        public string Printer
        {
            get { return _Printer; }
            set
            {
                _Printer = value;
                OnPropertyChanged("Printer");
            }
        }

        private string _Dimensions;

        [XmlElement("Dimensions")]
        public string Dimensions
        {
            get { return _Dimensions; }
            set
            {
                _Dimensions = value;
                OnPropertyChanged("Dimensions");
            }
        }

        private string _Connector;

        [XmlElement("Connector")]
        public string Connector
        {
            get { return _Connector; }
            set
            {
                _Connector = value;
                OnPropertyChanged("Connector");
            }
        }

        private string _Port;

        [XmlElement("Port")]
        public string Port
        {
            get { return _Port; }
            set
            {
                _Port = value;
                OnPropertyChanged("Port");
            }
        }

        private string _BaudRate;

        [XmlElement("BaudRate")]
        public string BaudRate
        {
            get { return _BaudRate; }
            set
            {
                _BaudRate = value;
                OnPropertyChanged("BaudRate");
            }
        }

        private string _TransferProtocol;

        [XmlElement("TransferProtocol")]
        public string TransferProtocol
        {
            get { return _TransferProtocol; }
            set
            {
                _TransferProtocol = value;
                OnPropertyChanged("TransferProtocol");
            }
        }

        private string _ResetOnEmergency;

        [XmlElement("ResetOnEmergency")]
        public string ResetOnEmergency
        {
            get { return _ResetOnEmergency; }
            set
            {
                _ResetOnEmergency = value;
                OnPropertyChanged("ResetOnEmergency");
            }
        }


        private string _ReceiveCacheSize;

        [XmlElement("ReceiveCacheSize")]
        public string ReceiveCacheSize
        {
            get { return _ReceiveCacheSize; }
            set
            {
                _ReceiveCacheSize = value;
                OnPropertyChanged("ReceiveCacheSize");
            }
        }

        private string _SerialConnection;

        [XmlElement("SerialConnection")]
        public string SerialConnection
        {
            get { return _SerialConnection; }
            set
            {
                _SerialConnection = value;
                OnPropertyChanged("SerialConnection");
            }
        }

        private string _VirtualPrinter;

        [XmlElement("VirtualPrinter")]
        public string VirtualPrinter
        {
            get { return _VirtualPrinter; }
            set
            {
                _VirtualPrinter = value;
                OnPropertyChanged("VirtualPrinter");
            }
        }

        private string _AutoDetect;

        [XmlElement("AutoDetect")]
        public string AutoDetect
        {
            get { return _AutoDetect; }
            set
            {
                _AutoDetect = value;
                OnPropertyChanged("AutoDetect");
            }
        }

        private string _Ascii;

        [XmlElement("Ascii")]
        public string Ascii
        {
            get { return _Ascii; }
            set
            {
                _Ascii = value;
                OnPropertyChanged("Ascii");
            }
        }

        private string _ProtocolRepetier;

        [XmlElement("ProtocolRepetier")]
        public string ProtocolRepetier
        {
            get { return _ProtocolRepetier; }
            set
            {
                _ProtocolRepetier = value;
                OnPropertyChanged("ProtocolRepetier");
            }
        }

        private string _SendEmCommand;

        [XmlElement("SendEmCommand")]
        public string SendEmCommand
        {
            get { return _SendEmCommand; }
            set
            {
                _SendEmCommand = value;
                OnPropertyChanged("SendEmCommand");
            }
        }

        private string _SendEmComDTR;

        [XmlElement("SendEmComDTR")]
        public string SendEmComDTR
        {
            get { return _SendEmComDTR; }
            set
            {
                _SendEmComDTR = value;
                OnPropertyChanged("SendEmComDTR");
            }
        }


        private string _SendReset;

        [XmlElement("SendReset")]
        public string SendReset
        {
            get { return _SendReset; }
            set
            {
                _SendReset = value;
                OnPropertyChanged("SendReset");
            }
        }


        private string _UsePingPong;

        [XmlElement("UsePingPong")]
        public string UsePingPong
        {
            get { return _UsePingPong; }
            set
            {
                _UsePingPong = value;
                OnPropertyChanged("UsePingPong");
            }
        }

        private string _TravelFeedRate;

        [XmlElement("TravelFeedRate")]
        public string TravelFeedRate
        {
            get { return _TravelFeedRate; }
            set
            {
                _TravelFeedRate = value;
                OnPropertyChanged("TravelFeedRate");
            }
        }

        private string _ZAxisFeedRate;

        [XmlElement("ZAxisFeedRate")]
        public string ZAxisFeedRate
        {
            get { return _ZAxisFeedRate; }
            set
            {
                _ZAxisFeedRate = value;
                OnPropertyChanged("ZAxisFeedRate");
            }
        }

        private string _DefaultExtruderTemperature;

        [XmlElement("DefaultExtruderTemperature")]
        public string DefaultExtruderTemperature
        {
            get { return _DefaultExtruderTemperature; }
            set
            {
                _DefaultExtruderTemperature = value;
                OnPropertyChanged("DefaultExtruderTemperature");
            }
        }

        private string _DefaultHeatingBedTemerature;

        [XmlElement("DefaultHeatingBedTemerature")]
        public string DefaultHeatingBedTemerature
        {
            get { return _DefaultHeatingBedTemerature; }
            set
            {
                _DefaultHeatingBedTemerature = value;
                OnPropertyChanged("DefaultHeatingBedTemerature");
            }
        }

        private string _ParkPosition;

        [XmlElement("ParkPosition")]
        public string ParkPosition
        {
            get { return _ParkPosition; }
            set
            {
                _ParkPosition = value;
                OnPropertyChanged("ParkPosition");
            }
        }

        private string _CheckInterval;

        [XmlElement("CheckInterval")]
        public string CheckInterval
        {
            get { return _CheckInterval; }
            set
            {
                _CheckInterval = value;
                OnPropertyChanged("CheckInterval");
            }
        }

        private string _CheckExtruderAndBed;

        [XmlElement("CheckExtruderAndBed")]
        public string CheckExtruderAndBed
        {
            get { return _CheckExtruderAndBed; }
            set
            {
                _CheckExtruderAndBed = value;
                OnPropertyChanged("CheckExtruderAndBed");
            }
        }

        private string _RemoveTemperatureRequests;

        [XmlElement("RemoveTemperatureRequests")]
        public string RemoveTemperatureRequests
        {
            get { return _RemoveTemperatureRequests; }
            set
            {
                _RemoveTemperatureRequests = value;
                OnPropertyChanged("RemoveTemperatureRequests");
            }
        }

        private string _ParkAfterJob;

        [XmlElement("ParkAfterJob")]
        public string ParkAfterJob
        {
            get { return _ParkAfterJob; }
            set
            {
                _ParkAfterJob = value;
                OnPropertyChanged("ParkAfterJob");
            }
        }

        private string _DisableExtruderAfterJob;

        [XmlElement("DisableExtruderAfterJob")]
        public string DisableExtruderAfterJob
        {
            get { return _DisableExtruderAfterJob; }
            set
            {
                _DisableExtruderAfterJob = value;
                OnPropertyChanged("DisableExtruderAfterJob");
            }
        }

        private string _DisableHeatedBed;

        [XmlElement("DisableHeatedBed")]
        public string DisableHeatedBed
        {
            get { return _DisableHeatedBed; }
            set
            {
                _DisableHeatedBed = value;
                OnPropertyChanged("DisableHeatedBed");
            }
        }

        private string _DisableMotors;

        [XmlElement("DisableMotors")]
        public string DisableMotors
        {
            get { return _DisableMotors; }
            set
            {
                _DisableMotors = value;
                OnPropertyChanged("DisableMotors");
            }
        }

        private string _PrintMirror;

        [XmlElement("PrintMirror")]
        public string PrintMirror
        {
            get { return _PrintMirror; }
            set
            {
                _PrintMirror = value;
                OnPropertyChanged("PrintMirror");
            }
        }

        private string _PrintableRadius;

        [XmlElement("PrintableRadius")]
        public string PrintableRadius
        {
            get { return _PrintableRadius; }
            set
            {
                _PrintableRadius = value;
                OnPropertyChanged("PrintableRadius");
            }
        }

        private string _PrintableHeight;

        [XmlElement("PrintableHeight")]
        public string PrintableHeight
        {
            get { return _PrintableHeight; }
            set
            {
                _PrintableHeight = value;
                OnPropertyChanged("PrintableHeight");
            }
        }

        private string _CalssicPrinter;

        [XmlElement("CalssicPrinter")]
        public string CalssicPrinter
        {
            get { return _CalssicPrinter; }
            set
            {
                _CalssicPrinter = value;
                OnPropertyChanged("CalssicPrinter");
            }
        }

        private string _ClassicPrinterWithDump;

        [XmlElement("ClassicPrinterWithDump")]
        public string ClassicPrinterWithDump
        {
            get { return _ClassicPrinterWithDump; }
            set
            {
                _ClassicPrinterWithDump = value;
                OnPropertyChanged("ClassicPrinterWithDump");
            }
        }

        private string _CicularPrinter;

        [XmlElement("CicularPrinter")]
        public string CicularPrinter
        {
            get { return _CicularPrinter; }
            set
            {
                _CicularPrinter = value;
                OnPropertyChanged("CicularPrinter");
            }
        }

        private string _CNCRouter;

        [XmlElement("CNCRouter")]
        public string CNCRouter
        {
            get { return _CNCRouter; }
            set
            {
                _CNCRouter = value;
                OnPropertyChanged("CNCRouter");
            }
        }

        private string _Left;

        [XmlElement("Left")]
        public string Left
        {
            get { return _Left; }
            set
            {
                _Left = value;
                OnPropertyChanged("Left");
            }
        }

        private string _Front;

        [XmlElement("Front")]
        public string Front
        {
            get { return _Front; }
            set
            {
                _Front = value;
                OnPropertyChanged("Front");
            }
        }

        private string _ExtruderNumber;

        [XmlElement("ExtruderNumber")]
        public string ExtruderNumber
        {
            get { return _ExtruderNumber; }
            set
            {
                _ExtruderNumber = value;
                OnPropertyChanged("ExtruderNumber");
            }
        }

        private string _ExtruderName;

        [XmlElement("ExtruderName")]
        public string ExtruderName
        {
            get { return _ExtruderName; }
            set
            {
                _ExtruderName = value;
                OnPropertyChanged("ExtruderName");
            }
        }

        private string _ExtruderDiameter;

        [XmlElement("ExtruderDiameter")]
        public string ExtruderDiameter
        {
            get { return _ExtruderDiameter; }
            set
            {
                _ExtruderDiameter = value;
                OnPropertyChanged("ExtruderDiameter");
            }
        }

        private string _ExtruderColor;

        [XmlElement("ExtruderColor")]
        public string ExtruderColor
        {
            get { return _ExtruderColor; }
            set
            {
                _ExtruderColor = value;
                OnPropertyChanged("ExtruderColor");
            }
        }

        private string _ExtruderOffsetX;

        [XmlElement("ExtruderOffsetX")]
        public string ExtruderOffsetX
        {
            get { return _ExtruderOffsetX; }
            set
            {
                _ExtruderOffsetX = value;
                OnPropertyChanged("ExtruderOffsetX");
            }
        }

        private string _ExtruderOffsetY;

        [XmlElement("ExtruderOffsetY")]
        public string ExtruderOffsetY
        {
            get { return _ExtruderOffsetY; }
            set
            {
                _ExtruderOffsetY = value;
                OnPropertyChanged("ExtruderOffsetY");
            }
        }


        private string _ExtruderTemperatureOffset;

        [XmlElement("ExtruderTemperatureOffset")]
        public string ExtruderTemperatureOffset
        {
            get { return _ExtruderTemperatureOffset; }
            set
            {
                _ExtruderTemperatureOffset = value;
                OnPropertyChanged("ExtruderTemperatureOffset");
            }
        }

        private string _PrinterType;

        [XmlElement("PrinterType")]
        public string PrinterType
        {
            get { return _PrinterType; }
            set
            {
                _PrinterType = value;
                OnPropertyChanged("PrinterType");
            }
        }

        private string _HomeCoordinate;

        [XmlElement("HomeCoordinate")]
        public string HomeCoordinate
        {
            get { return _HomeCoordinate; }
            set
            {
                _HomeCoordinate = value;
                OnPropertyChanged("HomeCoordinate");
            }
        }

        private string _ExtruderRange;

        [XmlElement("ExtruderRange")]
        public string ExtruderRange
        {
            get { return _ExtruderRange; }
            set
            {
                _ExtruderRange = value;
                OnPropertyChanged("ExtruderRange");
            }
        }

        private string _Position0;

        [XmlElement("Position0")]
        public string Position0
        {
            get { return _Position0; }
            set
            {
                _Position0 = value;
                OnPropertyChanged("Position0");
            }
        }

        private string _PrintAreaWidth;

        [XmlElement("PrintAreaWidth")]
        public string PrintAreaWidth
        {
            get { return _PrintAreaWidth; }
            set
            {
                _PrintAreaWidth = value;
                OnPropertyChanged("PrintAreaWidth");
            }
        }

        private string _PrintAreaHeight;

        [XmlElement("PrintAreaHeight")]
        public string PrintAreaHeight
        {
            get { return _PrintAreaHeight; }
            set
            {
                _PrintAreaHeight = value;
                OnPropertyChanged("PrintAreaHeight");
            }
        }

        private string _PrintAreaDepth;

        [XmlElement("PrintAreaDepth")]
        public string PrintAreaDepth
        {
            get { return _PrintAreaDepth; }
            set
            {
                _PrintAreaDepth = value;
                OnPropertyChanged("PrintAreaDepth");
            }
        }

        private string _DumpAreaLeft;

        [XmlElement("DumpAreaLeft")]
        public string DumpAreaLeft
        {
            get { return _DumpAreaLeft; }
            set
            {
                _DumpAreaLeft = value;
                OnPropertyChanged("DumpAreaLeft");
            }
        }

        private string _DumpAreaFront;

        [XmlElement("DumpAreaFront")]
        public string DumpAreaFront
        {
            get { return _DumpAreaFront; }
            set
            {
                _DumpAreaFront = value;
                OnPropertyChanged("DumpAreaFront");
            }
        }

        private string _DumpAreaWidth;

        [XmlElement("DumpAreaWidth")]
        public string DumpAreaWidth
        {
            get { return _DumpAreaWidth; }
            set
            {
                _DumpAreaWidth = value;
                OnPropertyChanged("DumpAreaWidth");
            }
        }

        private string _DumpAreaDepth;

        [XmlElement("DumpAreaDepth")]
        public string DumpAreaDepth
        {
            get { return _DumpAreaDepth; }
            set
            {
                _DumpAreaDepth = value;
                OnPropertyChanged("DumpAreaDepth");
            }
        }

        private string _CNCTop;

        [XmlElement("CNCTop")]
        public string CNCTop
        {
            get { return _CNCTop; }
            set
            {
                _CNCTop = value;
                OnPropertyChanged("CNCTop");
            }
        }

        private string _SlicerProfile;

        [XmlElement("SlicerProfile")]
        public string SlicerProfile
        {
            get { return _SlicerProfile; }
            set
            {
                _SlicerProfile = value;
                OnPropertyChanged("SlicerProfile");
            }
        }

        private string _Speed;

        [XmlElement("Speed")]
        public string Speed
        {
            get { return _Speed; }
            set
            {
                _Speed = value;
                OnPropertyChanged("Speed");
            }
        }

        private string _Quality;

        [XmlElement("Quality")]
        public string Quality
        {
            get { return _Quality; }
            set
            {
                _Quality = value;
                OnPropertyChanged("Quality");
            }
        }

        private string _Structures;

        [XmlElement("Structures")]
        public string Structures
        {
            get { return _Structures; }
            set
            {
                _Structures = value;
                OnPropertyChanged("Structures");
            }
        }


        private string _Extrusion;

        [XmlElement("Extrusion")]
        public string Extrusion
        {
            get { return _Extrusion; }
            set
            {
                _Extrusion = value;
                OnPropertyChanged("Extrusion");
            }
        }

        private string _GCode;

        [XmlElement("GCode")]
        public string GCode
        {
            get { return _GCode; }
            set
            {
                _GCode = value;
                OnPropertyChanged("GCode");
            }
        }


        private string _Advanced;

        [XmlElement("Advanced")]
        public string Advanced
        {
            get { return _Advanced; }
            set
            {
                _Advanced = value;
                OnPropertyChanged("Advanced");
            }
        }

        private string _PrintSpeed;

        [XmlElement("PrintSpeed")]
        public string PrintSpeed
        {
            get { return _PrintSpeed; }
            set
            {
                _PrintSpeed = value;
                OnPropertyChanged("PrintSpeed");
            }
        }

        private string _TravelSpeed;

        [XmlElement("TravelSpeed")]
        public string TravelSpeed
        {
            get { return _TravelSpeed; }
            set
            {
                _TravelSpeed = value;
                OnPropertyChanged("TravelSpeed");
            }
        }

        private string _FirstLayerSpeed;

        [XmlElement("FirstLayerSpeed")]
        public string FirstLayerSpeed
        {
            get { return _FirstLayerSpeed; }
            set
            {
                _FirstLayerSpeed = value;
                OnPropertyChanged("FirstLayerSpeed");
            }
        }

        private string _OuterPerimeterSpeed;

        [XmlElement("OuterPerimeterSpeed")]
        public string OuterPerimeterSpeed
        {
            get { return _OuterPerimeterSpeed; }
            set
            {
                _OuterPerimeterSpeed = value;
                OnPropertyChanged("OuterPerimeterSpeed");
            }
        }

        private string _InnerPerimeterSpeed;

        [XmlElement("InnerPerimeterSpeed")]
        public string InnerPerimeterSpeed
        {
            get { return _InnerPerimeterSpeed; }
            set
            {
                _InnerPerimeterSpeed = value;
                OnPropertyChanged("InnerPerimeterSpeed");
            }
        }

        private string _InfillSpeed;

        [XmlElement("InfillSpeed")]
        public string InfillSpeed
        {
            get { return _InfillSpeed; }
            set
            {
                _InfillSpeed = value;
                OnPropertyChanged("InfillSpeed");
            }
        }

        private string _SkinInfillSpeed;

        [XmlElement("SkinInfillSpeed")]
        public string SkinInfillSpeed
        {
            get { return _SkinInfillSpeed; }
            set
            {
                _SkinInfillSpeed = value;
                OnPropertyChanged("SkinInfillSpeed");
            }
        }

        private string _LayerHeight;

        [XmlElement("LayerHeight")]
        public string LayerHeight
        {
            get { return _LayerHeight; }
            set
            {
                _LayerHeight = value;
                OnPropertyChanged("LayerHeight");
            }
        }

        private string _FirstLayerHeight;

        [XmlElement("FirstLayerHeight")]
        public string FirstLayerHeight
        {
            get { return _FirstLayerHeight; }
            set
            {
                _FirstLayerHeight = value;
                OnPropertyChanged("FirstLayerHeight");
            }
        }

        private string _CombineEverythingA;

        [XmlElement("CombineEverythingA")]
        public string CombineEverythingA
        {
            get { return _CombineEverythingA; }
            set
            {
                _CombineEverythingA = value;
                OnPropertyChanged("CombineEverythingA");
            }
        }

        private string _CombineEverythingB;

        [XmlElement("CombineEverythingB")]
        public string CombineEverythingB
        {
            get { return _CombineEverythingB; }
            set
            {
                _CombineEverythingB = value;
                OnPropertyChanged("CombineEverythingB");
            }
        }

        private string _KeepOpenFaces;

        [XmlElement("KeepOpenFaces")]
        public string KeepOpenFaces
        {
            get { return _KeepOpenFaces; }
            set
            {
                _KeepOpenFaces = value;
                OnPropertyChanged("KeepOpenFaces");
            }
        }

        private string _ExtensiveStitching;

        [XmlElement("ExtensiveStitching")]
        public string ExtensiveStitching
        {
            get { return _ExtensiveStitching; }
            set
            {
                _ExtensiveStitching = value;
                OnPropertyChanged("ExtensiveStitching");
            }
        }

        private string _ShellThinckness;

        [XmlElement("ShellThinckness")]
        public string ShellThinckness
        {
            get { return _ShellThinckness; }
            set
            {
                _ShellThinckness = value;
                OnPropertyChanged("ShellThinckness");
            }
        }

        private string _TopBottomThinckness;

        [XmlElement("TopBottomThinckness")]
        public string TopBottomThinckness
        {
            get { return _TopBottomThinckness; }
            set
            {
                _TopBottomThinckness = value;
                OnPropertyChanged("TopBottomThinckness");
            }
        }

        private string _InfillOverlap;

        [XmlElement("InfillOverlap")]
        public string InfillOverlap
        {
            get { return _InfillOverlap; }
            set
            {
                _InfillOverlap = value;
                OnPropertyChanged("InfillOverlap");
            }
        }

        private string _InfillPattern;

        [XmlElement("InfillPattern")]
        public string InfillPattern
        {
            get { return _InfillPattern; }
            set
            {
                _InfillPattern = value;
                OnPropertyChanged("InfillPattern");
            }
        }

        private string _Automatic;

        [XmlElement("Automatic")]
        public string Automatic
        {
            get { return _Automatic; }
            set
            {
                _Automatic = value;
                OnPropertyChanged("Automatic");
            }
        }

        private string _Grid;

        [XmlElement("Grid")]
        public string Grid
        {
            get { return _Grid; }
            set
            {
                _Grid = value;
                OnPropertyChanged("Grid");
            }
        }

        private string _Lines;

        [XmlElement("Lines")]
        public string Lines
        {
            get { return _Lines; }
            set
            {
                _Lines = value;
                OnPropertyChanged("Lines");
            }
        }

        private string _Concentric;

        [XmlElement("Concentric")]
        public string Concentric
        {
            get { return _Concentric; }
            set
            {
                _Concentric = value;
                OnPropertyChanged("Concentric");
            }
        }

        private string _SupportPattern;

        [XmlElement("SupportPattern")]
        public string SupportPattern
        {
            get { return _SupportPattern; }
            set
            {
                _SupportPattern = value;
                OnPropertyChanged("SupportPattern");
            }
        }

        private string _OverhangAngle;

        [XmlElement("OverhangAngle")]
        public string OverhangAngle
        {
            get { return _OverhangAngle; }
            set
            {
                _OverhangAngle = value;
                OnPropertyChanged("OverhangAngle");
            }
        }

        private string _DistanceXY;

        [XmlElement("DistanceXY")]
        public string DistanceXY
        {
            get { return _DistanceXY; }
            set
            {
                _DistanceXY = value;
                OnPropertyChanged("DistanceXY");
            }
        }

        private string _DistanceZ;

        [XmlElement("DistanceZ")]
        public string DistanceZ
        {
            get { return _DistanceZ; }
            set
            {
                _DistanceZ = value;
                OnPropertyChanged("DistanceZ");
            }
        }

        private string _SkirtLineCount;

        [XmlElement("SkirtLineCount")]
        public string SkirtLineCount
        {
            get { return _SkirtLineCount; }
            set
            {
                _SkirtLineCount = value;
                OnPropertyChanged("SkirtLineCount");
            }
        }

        private string _SkirtDistance;

        [XmlElement("SkirtDistance")]
        public string SkirtDistance
        {
            get { return _SkirtDistance; }
            set
            {
                _SkirtDistance = value;
                OnPropertyChanged("SkirtDistance");
            }
        }

        private string _GCodeFlavor;

        [XmlElement("GCodeFlavor")]
        public string GCodeFlavor
        {
            get { return _GCodeFlavor; }
            set
            {
                _GCodeFlavor = value;
                OnPropertyChanged("GCodeFlavor");
            }
        }

        private string _Position;

        [XmlElement("Position")]
        public string Position
        {
            get { return _Position; }
            set
            {
                _Position = value;
                OnPropertyChanged("Position");
            }
        }


        private string _StardGCode;

        [XmlElement("StardGCode")]
        public string StardGCode
        {
            get { return _StardGCode; }
            set
            {
                _StardGCode = value;
                OnPropertyChanged("StardGCode");
            }
        }

        private string _EndGCode;

        [XmlElement("EndGCode")]
        public string EndGCode
        {
            get { return _EndGCode; }
            set
            {
                _EndGCode = value;
                OnPropertyChanged("EndGCode");
            }
        }

        private string _BeforeExtruderSwitch;

        [XmlElement("BeforeExtruderSwitch")]
        public string BeforeExtruderSwitch
        {
            get { return _BeforeExtruderSwitch; }
            set
            {
                _BeforeExtruderSwitch = value;
                OnPropertyChanged("BeforeExtruderSwitch");
            }
        }

        private string _AfterExtruderSwitch;

        [XmlElement("AfterExtruderSwitch")]
        public string AfterExtruderSwitch
        {
            get { return _AfterExtruderSwitch; }
            set
            {
                _AfterExtruderSwitch = value;
                OnPropertyChanged("AfterExtruderSwitch");
            }
        }


        private string _RetractionSpeed;

        [XmlElement("RetractionSpeed")]
        public string RetractionSpeed
        {
            get { return _RetractionSpeed; }
            set
            {
                _RetractionSpeed = value;
                OnPropertyChanged("RetractionSpeed");
            }
        }

        private string _RetractionDistance;

        [XmlElement("RetractionDistance")]
        public string RetractionDistance
        {
            get { return _RetractionDistance; }
            set
            {
                _RetractionDistance = value;
                OnPropertyChanged("RetractionDistance");
            }
        }

        private string _MinTravelBeforeRetract;

        [XmlElement("MinTravelBeforeRetract")]
        public string MinTravelBeforeRetract
        {
            get { return _MinTravelBeforeRetract; }
            set
            {
                _MinTravelBeforeRetract = value;
                OnPropertyChanged("MinTravelBeforeRetract");
            }
        }

        private string _MinExtrusionBeforeRetract;

        [XmlElement("MinExtrusionBeforeRetract")]
        public string MinExtrusionBeforeRetract
        {
            get { return _MinExtrusionBeforeRetract; }
            set
            {
                _MinExtrusionBeforeRetract = value;
                OnPropertyChanged("MinExtrusionBeforeRetract");
            }
        }

        private string _ZHop;

        [XmlElement("ZHop")]
        public string ZHop
        {
            get { return _ZHop; }
            set
            {
                _ZHop = value;
                OnPropertyChanged("ZHop");
            }
        }

        private string _CutOffObjectBottom;

        [XmlElement("CutOffObjectBottom")]
        public string CutOffObjectBottom
        {
            get { return _CutOffObjectBottom; }
            set
            {
                _CutOffObjectBottom = value;
                OnPropertyChanged("CutOffObjectBottom");
            }
        }

        private string _SpiralizeContour;

        [XmlElement("SpiralizeContour")]
        public string SpiralizeContour
        {
            get { return _SpiralizeContour; }
            set
            {
                _SpiralizeContour = value;
                OnPropertyChanged("SpiralizeContour");
            }
        }

        private string _PerimeterBeforeInfill;

        [XmlElement("PerimeterBeforeInfill")]
        public string PerimeterBeforeInfill
        {
            get { return _PerimeterBeforeInfill; }
            set
            {
                _PerimeterBeforeInfill = value;
                OnPropertyChanged("PerimeterBeforeInfill");
            }
        }

        private string _SupportExtruder;

        [XmlElement("SupportExtruder")]
        public string SupportExtruder
        {
            get { return _SupportExtruder; }
            set
            {
                _SupportExtruder = value;
                OnPropertyChanged("SupportExtruder");
            }
        }

        private string _RetractionOnExtruderSwitch;

        [XmlElement("RetractionOnExtruderSwitch")]
        public string RetractionOnExtruderSwitch
        {
            get { return _RetractionOnExtruderSwitch; }
            set
            {
                _RetractionOnExtruderSwitch = value;
                OnPropertyChanged("RetractionOnExtruderSwitch");
            }
        }

        private string _VolumeOverlap;

        [XmlElement("VolumeOverlap")]
        public string VolumeOverlap
        {
            get { return _VolumeOverlap; }
            set
            {
                _VolumeOverlap = value;
                OnPropertyChanged("VolumeOverlap");
            }
        }

        private string _CreateOozeShield;

        [XmlElement("CreateOozeShield")]
        public string CreateOozeShield
        {
            get { return _CreateOozeShield; }
            set
            {
                _CreateOozeShield = value;
                OnPropertyChanged("CreateOozeShield");
            }
        }

        private string _CoolHeadLift;

        [XmlElement("CoolHeadLift")]
        public string CoolHeadLift
        {
            get { return _CoolHeadLift; }
            set
            {
                _CoolHeadLift = value;
                OnPropertyChanged("CoolHeadLift");
            }
        }

        private string _Version;

        [XmlElement("Version")]
        public string Version
        {
            get { return _Version; }
            set
            {
                _Version = value;
                OnPropertyChanged("Version");
            }
        }

        private string _Developer;

        [XmlElement("Developer")]
        public string Developer
        {
            get { return _Developer; }
            set
            {
                _Developer = value;
                OnPropertyChanged("Developer");
            }
        }

        private string _Niipm;

        [XmlElement("Niipm")]
        public string Niipm
        {
            get { return _Niipm; }
            set
            {
                _Niipm = value;
                OnPropertyChanged("Niipm");
            }
        }

        private string _Address;

        [XmlElement("Address")]
        public string Address
        {
            get { return _Address; }
            set
            {
                _Address = value;
                OnPropertyChanged("Address");
            }
        }

        private string _AddressNiipm;

        [XmlElement("AddressNiipm")]
        public string AddressNiipm
        {
            get { return _AddressNiipm; }
            set
            {
                _AddressNiipm = value;
                OnPropertyChanged("AddressNiipm");
            }
        }

        private string _Phone;

        [XmlElement("Phone")]
        public string Phone
        {
            get { return _Phone; }
            set
            {
                _Phone = value;
                OnPropertyChanged("Phone");
            }
        }

        private string _Site;

        [XmlElement("Site")]
        public string Site
        {
            get { return _Site; }
            set
            {
                _Site = value;
                OnPropertyChanged("Site");
            }
        }


        private string _Fax;

        [XmlElement("Fax")]
        public string Fax
        {
            get { return _Fax; }
            set
            {
                _Fax = value;
                OnPropertyChanged("Fax");
            }
        }


        private string _CopyRight;

        [XmlElement("CopyRight")]
        public string CopyRight
        {
            get { return _CopyRight; }
            set
            {
                _CopyRight = value;
                OnPropertyChanged("CopyRight");
            }
        }

        private string _SaveProjectQuestion;

        [XmlElement("SaveProjectQuestion")]
        public string SaveProjectQuestion
        {
            get { return _SaveProjectQuestion; }
            set
            {
                _SaveProjectQuestion = value;
                OnPropertyChanged("SaveProjectQuestion");
            }
        }

        private string _SaveProjectTitle;

        [XmlElement("SaveProjectTitle")]
        public string SaveProjectTitle
        {
            get { return _SaveProjectTitle; }
            set
            {
                _SaveProjectTitle = value;
                OnPropertyChanged("SaveProjectTitle");
            }
        }

        private string _WarningMessageGCode;

        [XmlElement("WarningMessageGCode")]
        public string WarningMessageGCode
        {
            get { return _WarningMessageGCode; }
            set
            {
                _WarningMessageGCode = value;
                OnPropertyChanged("WarningMessageGCode");
            }
        }


        private string _WarningTitle;

        [XmlElement("WarningTitle")]
        public string WarningTitle
        {
            get { return _WarningTitle; }
            set
            {
                _WarningTitle = value;
                OnPropertyChanged("WarningTitle");
            }
        }

        private string _WarningMessageModel;

        [XmlElement("WarningMessageModel")]
        public string WarningMessageModel
        {
            get { return _WarningMessageModel; }
            set
            {
                _WarningMessageModel = value;
                OnPropertyChanged("WarningMessageModel");
            }
        }

        private string _DeleteQuestion;

        [XmlElement("DeleteQuestion")]
        public string DeleteQuestion
        {
            get { return _DeleteQuestion; }
            set
            {
                _DeleteQuestion = value;
                OnPropertyChanged("DeleteQuestion");
            }
        }

        private string _DeleteTitle;

        [XmlElement("DeleteTitle")]
        public string DeleteTitle
        {
            get { return _DeleteTitle; }
            set
            {
                _DeleteTitle = value;
                OnPropertyChanged("DeleteTitle");
            }
        }


        private string _Processing;

        [XmlElement("Processing")]
        public string Processing
        {
            get { return _Processing; }
            set
            {
                _Processing = value;
                OnPropertyChanged("Processing");
            }
        }

        private string _Stage;

        [XmlElement("Stage")]
        public string Stage
        {
            get { return _Stage; }
            set
            {
                _Stage = value;
                OnPropertyChanged("Stage");
            }
        }   


        private string _Description1;

        [XmlElement("Description1")]
        public string Description1
        {
            get { return _Description1; }
            set
            {
                _Description1 = value;
                OnPropertyChanged("Description1");
            }
        }

        private string _Description2;

        [XmlElement("Description2")]
        public string Description2
        {
            get { return _Description2; }
            set
            {
                _Description2 = value;
                OnPropertyChanged("Description2");
            }
        }

        private string _Description3;

        [XmlElement("Description3")]
        public string Description3
        {
            get { return _Description3; }
            set
            {
                _Description3 = value;
                OnPropertyChanged("Description3");
            }
        }

        private string _Description4;

        [XmlElement("Description4")]
        public string Description4
        {
            get { return _Description4; }
            set
            {
                _Description4 = value;
                OnPropertyChanged("Description4");
            }
        }

        private string _Description5;

        [XmlElement("Description5")]
        public string Description5
        {
            get { return _Description5; }
            set
            {
                _Description5 = value;
                OnPropertyChanged("Description5");
            }
        }

        private string _Description6;

        [XmlElement("Description6")]
        public string Description6
        {
            get { return _Description6; }
            set
            {
                _Description6 = value;
                OnPropertyChanged("Description6");
            }
        }


        private string _None;

        [XmlElement("None")]
        public string None
        {
            get { return _None; }
            set
            {
                _None = value;
                OnPropertyChanged("None");
            }
        }

        private string _TouchingBed;

        [XmlElement("TouchingBed")]
        public string TouchingBed
        {
            get { return _TouchingBed; }
            set
            {
                _TouchingBed = value;
                OnPropertyChanged("TouchingBed");
            }
        }

        private string _Everywhere;

        [XmlElement("Everywhere")]
        public string Everywhere
        {
            get { return _Everywhere; }
            set
            {
                _Everywhere = value;
                OnPropertyChanged("Everywhere");
            }
        }

        private string _Error;

        [XmlElement("Error")]
        public string Error
        {
            get { return _Error; }
            set
            {
                _Error = value;
                OnPropertyChanged("Error");
            }
        }

        private string _WorkDirectoryErrorMessage;

        [XmlElement("WorkDirectoryErrorMessage")]
        public string WorkDirectoryErrorMessage
        {
            get { return _WorkDirectoryErrorMessage; }
            set
            {
                _WorkDirectoryErrorMessage = value;
                OnPropertyChanged("WorkDirectoryErrorMessage");
            }
        }

        private string _OutSideErrorMessage;

        [XmlElement("OutSideErrorMessage")]
        public string OutSideErrorMessage
        {
            get { return _OutSideErrorMessage; }
            set
            {
                _OutSideErrorMessage = value;
                OnPropertyChanged("OutSideErrorMessage");
            }
        }

        private string _SlicerError;

        [XmlElement("SlicerError")]
        public string SlicerError
        {
            get { return _SlicerError; }
            set
            {
                _SlicerError = value;
                OnPropertyChanged("SlicerError");
            }
        }


        private string _UnknownProfileName;

        [XmlElement("UnknownProfileName")]
        public string UnknownProfileName
        {
            get { return _UnknownProfileName; }
            set
            {
                _UnknownProfileName = value;
                OnPropertyChanged("UnknownProfileName");
            }
        }

        private string _CreatePrinterConfig;

        [XmlElement("CreatePrinterConfig")]
        public string CreatePrinterConfig
        {
            get { return _CreatePrinterConfig; }
            set
            {
                _CreatePrinterConfig = value;
                OnPropertyChanged("CreatePrinterConfig");
            }
        }

        private string _CreateMaterialConfig;

        [XmlElement("CreateMaterialConfig")]
        public string CreateMaterialConfig
        {
            get { return _CreateMaterialConfig; }
            set
            {
                _CreateMaterialConfig = value;
                OnPropertyChanged("CreateMaterialConfig");
            }
        }

        private string _CreateSlicerConfig;

        [XmlElement("CreateSlicerConfig")]
        public string CreateSlicerConfig
        {
            get { return _CreateSlicerConfig; }
            set
            {
                _CreateSlicerConfig = value;
                OnPropertyChanged("CreateSlicerConfig");
            }
        }

        private string _WarningTitle2;

        [XmlElement("WarningTitle2")]
        public string WarningTitle2
        {
            get { return _WarningTitle2; }
            set
            {
                _WarningTitle2 = value;
                OnPropertyChanged("WarningTitle2");
            }
        }

        private string _RemovePrinterConfigQuestion;

        [XmlElement("RemovePrinterConfigQuestion")]
        public string RemovePrinterConfigQuestion
        {
            get { return _RemovePrinterConfigQuestion; }
            set
            {
                _RemovePrinterConfigQuestion = value;
                OnPropertyChanged("RemovePrinterConfigQuestion");
            }
        }

        private string _RemoveSlicerConfigQuestion;

        [XmlElement("RemoveSlicerConfigQuestion")]
        public string RemoveSlicerConfigQuestion
        {
            get { return _RemoveSlicerConfigQuestion; }
            set
            {
                _RemoveSlicerConfigQuestion = value;
                OnPropertyChanged("RemoveSlicerConfigQuestion");
            }
        }

        private string _RemoveMaterialConfigQuestion;

        [XmlElement("RemoveMaterialConfigQuestion")]
        public string RemoveMaterialConfigQuestion
        {
            get { return _RemoveMaterialConfigQuestion; }
            set
            {
                _RemoveMaterialConfigQuestion = value;
                OnPropertyChanged("RemoveMaterialConfigQuestion");
            }
        }

        private string _ForbiddenMessage;

        [XmlElement("ForbiddenMessage")]
        public string ForbiddenMessage
        {
            get { return _ForbiddenMessage; }
            set
            {
                _ForbiddenMessage = value;
                OnPropertyChanged("ForbiddenMessage");
            }
        }

        private string _ErrorOpenProjectMessage;

        [XmlElement("ErrorOpenProjectMessage")]
        public string ErrorOpenProjectMessage
        {
            get { return _ErrorOpenProjectMessage; }
            set
            {
                _ErrorOpenProjectMessage = value;
                OnPropertyChanged("ErrorOpenProjectMessage");
            }
        }

        private string _ErrorAddModelMessage;

        [XmlElement("ErrorAddModelMessage")]
        public string ErrorAddModelMessage
        {
            get { return _ErrorAddModelMessage; }
            set
            {
                _ErrorAddModelMessage = value;
                OnPropertyChanged("ErrorAddModelMessage");
            }
        }

        private string _ErrorAddGCodeMessage;

        [XmlElement("ErrorAddGCodeMessage")]
        public string ErrorAddGCodeMessage
        {
            get { return _ErrorAddGCodeMessage; }
            set
            {
                _ErrorAddGCodeMessage = value;
                OnPropertyChanged("ErrorAddGCodeMessage");
            }
        }


        private string _Connect;

        [XmlElement("Connect")]
        public string Connect
        {
            get { return _Connect; }
            set
            {
                _Connect = value;
                OnPropertyChanged("Connect");
            }
        }

        private string _Disconnect;

        [XmlElement("Disconnect")]
        public string Disconnect
        {
            get { return _Disconnect; }
            set
            {
                _Disconnect = value;
                OnPropertyChanged("Disconnect");
            }
        }

        private string _Print;

        [XmlElement("Print")]
        public string Print
        {
            get { return _Print; }
            set
            {
                _Print = value;
                OnPropertyChanged("Print");
            }
        }

        private string _PrintPause;

        [XmlElement("PrintPause")]
        public string PrintPause
        {
            get { return _PrintPause; }
            set
            {
                _PrintPause = value;
                OnPropertyChanged("PrintPause");
            }
        }


        private string _PrintContinue;

        [XmlElement("PrintContinue")]
        public string PrintContinue
        {
            get { return _PrintContinue; }
            set
            {
                _PrintContinue = value;
                OnPropertyChanged("PrintContinue");
            }
        }

        private string _Stop;

        [XmlElement("Stop")]
        public string Stop
        {
            get { return _Stop; }
            set
            {
                _Stop = value;
                OnPropertyChanged("Stop");
            }
        }


          

        private string _PrintMgmt;

        [XmlElement("PrintMgmt")]
        public string PrintMgmt
        {
            get { return _PrintMgmt; }
            set
            {
                _PrintMgmt = value;
                OnPropertyChanged("PrintMgmt");
            }
        }
    }

}
