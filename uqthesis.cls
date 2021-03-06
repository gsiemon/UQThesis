%*************************************
% UQ Thesis Formatting Style Class
% Modified for use with R Markdown
%*************************************
% uqthesis.cls

% This file defines the formatting style for your thesis in accordance with the
% Thesis Format Requirements (See Section 7 of UQ Procedure 4.60.08 Higher
% Degree by Research Examination) for Masters and PhD theses.

%*************************************
% Class structure: identification part
%*************************************

\ProvidesClass{uqthesis}[2020/03/07 version 1.0 UQ PhD and Masters thesis style for R Markdown]
\NeedsTeXFormat{LaTeX2e}[2016/05/16]

%Load the memoir class.
\LoadClass[12pt, a4paper]{memoir}

%*************************************
% Load packages
%*************************************
\RequirePackage{mathptmx}
%Set the font to Times New Roman. This package also alters the math-mode font to TNR.

\RequirePackage{graphicx}
%Use pdfLaTeX.

\RequirePackage{booktabs, longtable}
%These allow tables to split over pages. Very useful in theses!

\RequirePackage{url}
%Typeset urls properly.

\RequirePackage{geometry}
%This allows us to set the margins correctly.

\RequirePackage{memhfixc}
	%Need this to make sure the layout is correct.

\RequirePackage{amsmath,amssymb,amsthm}
%Useful maths packages.

\RequirePackage{setspace}
%Used to set the appropriate linespacing.

\RequirePackage{uqtitle}
%Get the title page right.

%*************************************
% Set page and heading styles
%*************************************
% ********* Set page layout **********
\setlrmarginsandblock{20mm}{20mm}{*}
\setulmarginsandblock{20mm}{20mm}{*}

\setheadfoot{15mm}{\baselineskip}
\setheaderspaces{*}{\baselineskip}{*}

\def\baselinestretch{1.1}

%Make sure that TeX sorts out the geometry correctly.
\checkandfixthelayout

% ********* Chapter and section style **********
\makechapterstyle{mychapterstyle}{%
    \renewcommand{\chapnamefont}{\LARGE\rmfamily\bfseries}%
    \renewcommand{\chapnumfont}{\LARGE\rmfamily\bfseries}%
    \renewcommand{\chaptitlefont}{\Huge\rmfamily\bfseries}%
    \renewcommand{\printchaptertitle}[1]{%
        \chaptitlefont\hrule height 0.5pt \vspace{1em}%
        {##1}\vspace{1em}\hrule height 0.5pt%
        }%
    \renewcommand{\printchapternum}{%
        \chapnumfont\thechapter%
        }%
}

\chapterstyle{mychapterstyle}

\setsecheadstyle{\Large\rmfamily\bfseries}
\setsubsecheadstyle{\large\rmfamily\bfseries}
\setsubsubsecheadstyle{\normalfont\rmfamily\bfseries}
\setparaheadstyle{\normalfont\rmfamily}

\makeevenhead{headings}{\thepage}{}{\small\slshape\leftmark}
\makeoddhead{headings}{\small\slshape\rightmark}{}{\thepage}

% ********* Table of contents style **********
\settocdepth{subsection}

\setsecnumdepth{subsection}
\maxsecnumdepth{subsection}
\settocdepth{subsection}
\maxtocdepth{subsection}

\renewcommand{\listfigurename}{List of Figures}
\renewcommand{\listtablename}{List of Tables}

% ********* General page styles **********

%Get the correct line spacing. Note that \onehalfspacing DOES NOT work because of the way which LaTeX measures linespacing (which is different to Word).
\linespread{1.3}
%Make sure footnotes don't split over a page.
\interfootnotelinepenalty=10000

%*************************************
% Fix white space to improve readability
%*************************************
%Redefine the sqrt command so that it puts a space after the surd.
%This makes AMSMATH much easier to read.
%COMMENT THIS OUT OR DELETE IF YOU DON'T WISH TO USE IT.
\let\SQRT\sqrt
\renewcommand{\sqrt}[1]{\ensuremath{\SQRT{#1} \;}}

%*************************************
%% HYPERLINKS (Ref: Rob Hyndman)
%*************************************

\RequirePackage{xcolor} % Needed for links
\definecolor{darkblue}{rgb}{0,0,.6}
\RequirePackage{url}
\RequirePackage[citecolor=0 0 0,colorlinks=false]{hyperref}
\hypersetup{
     breaklinks=true,
     bookmarksopen=true,
     bookmarksnumbered=true,
     linkcolor=darkblue,
     urlcolor=blue,
     citecolor=darkblue,
     colorlinks=true}

%*****************************************************
% Extra stuff for Rmarkdown to work (Ref: Rob Hyndman)
% This allows coloured syntax highliting of R code within
% the thesis document.
%*****************************************************
\providecommand{\tightlist}{%
  \setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}}
\usepackage{framed}
\definecolor{shadecolor}{RGB}{248,248,248}
\newenvironment{Shaded}{\begin{snugshade}}{\end{snugshade}}
\usepackage{fancyvrb}
\newcommand{\VerbBar}{|}
\newcommand{\VERB}{\Verb[commandchars=\\\{\}]}
\DefineVerbatimEnvironment{verbatim}{Verbatim}{xleftmargin=0em}
\DefineVerbatimEnvironment{Highlighting}{Verbatim}{xleftmargin=0em,commandchars=\\\{\}}

\newcommand{\KeywordTok}[1]{\textcolor[rgb]{0.13,0.29,0.53}{\textbf{{#1}}}}
\newcommand{\DataTypeTok}[1]{\textcolor[rgb]{0.13,0.29,0.53}{{#1}}}
\newcommand{\DecValTok}[1]{\textcolor[rgb]{0.00,0.00,0.81}{{#1}}}
\newcommand{\BaseNTok}[1]{\textcolor[rgb]{0.00,0.00,0.81}{{#1}}}
\newcommand{\FloatTok}[1]{\textcolor[rgb]{0.00,0.00,0.81}{{#1}}}
\newcommand{\ConstantTok}[1]{\textcolor[rgb]{0.00,0.00,0.00}{{#1}}}
\newcommand{\CharTok}[1]{\textcolor[rgb]{0.31,0.60,0.02}{{#1}}}
\newcommand{\SpecialCharTok}[1]{\textcolor[rgb]{0.00,0.00,0.00}{{#1}}}
\newcommand{\StringTok}[1]{\textcolor[rgb]{0.31,0.60,0.02}{{#1}}}
\newcommand{\VerbatimStringTok}[1]{\textcolor[rgb]{0.31,0.60,0.02}{{#1}}}
\newcommand{\SpecialStringTok}[1]{\textcolor[rgb]{0.31,0.60,0.02}{{#1}}}
\newcommand{\ImportTok}[1]{{#1}}
\newcommand{\CommentTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{\textit{{#1}}}}
\newcommand{\DocumentationTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{\textbf{\textit{{#1}}}}}
\newcommand{\AnnotationTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{\textbf{\textit{{#1}}}}}
\newcommand{\CommentVarTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{\textbf{\textit{{#1}}}}}
\newcommand{\OtherTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{{#1}}}
\newcommand{\FunctionTok}[1]{\textcolor[rgb]{0.00,0.00,0.00}{{#1}}}
\newcommand{\VariableTok}[1]{\textcolor[rgb]{0.00,0.00,0.00}{{#1}}}
\newcommand{\ControlFlowTok}[1]{\textcolor[rgb]{0.13,0.29,0.53}{\textbf{{#1}}}}
\newcommand{\OperatorTok}[1]{\textcolor[rgb]{0.81,0.36,0.00}{\textbf{{#1}}}}
\newcommand{\BuiltInTok}[1]{{#1}}
\newcommand{\ExtensionTok}[1]{{#1}}
\newcommand{\PreprocessorTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{\textit{{#1}}}}
\newcommand{\AttributeTok}[1]{\textcolor[rgb]{0.77,0.63,0.00}{{#1}}}
\newcommand{\RegionMarkerTok}[1]{{#1}}
\newcommand{\InformationTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{\textbf{\textit{{#1}}}}}
\newcommand{\WarningTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{\textbf{\textit{{#1}}}}}
\newcommand{\AlertTok}[1]{\textcolor[rgb]{0.94,0.16,0.16}{{#1}}}
\newcommand{\ErrorTok}[1]{\textcolor[rgb]{0.64,0.00,0.00}{\textbf{{#1}}}}
\newcommand{\NormalTok}[1]{{#1}}

%*************************************
