%--------------------------------------------------------------
%	Elerinmosa Institute of Technology Thesis Format
%	Released February, 2012
%	Revised 25th December, 2012
%	Original Author: ODEJOBI Odetunji
%   Adapted for EIT by Tewogbade Ayobami
%
%	Department of Computer Software Engineering
%	Elerinmosa Institute of Technology, Erin-osun
%	For NID
%	Todo: List of Plates/ Dedication / 
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% CHANGE LOG
%
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
%-----------import required packages------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{eitthesis}[10/08/2022 - EIT Thesis Style (v. 1.0.0), **Ayobami Tewogbade**]

\ProcessOptions

\LoadClassWithOptions{report}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{natbib} % For author, date citing style
\bibpunct{(}{)}{;}{a}{,}{,} 
\RequirePackage[top=1.0in, left=1.5in,right=1.0in,bottom=1.0in]{geometry} % To set the required margins
\pagestyle{plain}

%--------Custom Tags---------------------------------
\newcommand{\yor}{\textit{Yor\`ub\'a}}
\newcommand{\eit}{Elerinmosa Institute of Technology}
\newcommand{\oau}{\d{O}b\'{a}f\d{\'{e}}mi Aw\'{o}l\d{\'{o}}w\d{\`{o}} University}
%---------This set line spacing----------------------
\newlength{\defbaselineskip}
\setlength{\defbaselineskip}{\baselineskip}
\newcommand{\setlinespacing}[1]%
           {\setlength{\baselineskip}{#1 \defbaselineskip}}

%------------This reformats chapter headings------------------------
\renewcommand\chaptername{CHAPTER}	 
\renewcommand\appendixname{APPENDIX}
\renewcommand\abstractname{ABSTRACT}  
\renewcommand\contentsname{TABLE OF CONTENTS}
\renewcommand\bibname{REFERENCES}


\titleformat{\chapter}[display]{\normalfont\Large\bfseries\centering}{\ifmainbody\chaptername~
\chaptoletter{\thechapter} \else \appendixname~\thechapter \fi}{1pc}{\large \uppercase \expandafter}

%\titlecontents{chapter}[0pt]{\vspace{10pt}}{\bfseries\chaptername~\chaptoletter{\thecontentslabel}:~} {\bfseries}{\bfseries\hfill\contentspage}
%	

%-----------This is used to generate chapter number in full---------	   
\def\chaptoletter#1{\ifnum#1=1{ONE}\else\ifnum #1=2 {TWO}\else\ifnum #1=3 {THREE}\else\ifnum #1=4 {FOUR}\else\ifnum #1=5 {FIVE}\else\ifnum #1=6 {SIX}\else\ifnum #1=7 {SEVEN}\else\ifnum #1=8 {EIGHT}\else\ifnum #1=9 {NINE}\else\ifnum #1=10 {TEN}\else\ifnum #1=11 {ELEVEN}\else\ifnum #1=12 {TWELVE}\else\ifnum #1=13 {THIRTEEN}\else\ifnum #1=14 {FOURTEEN}\else\ifnum #1=15 {FIFTEEN}\else {#1}\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi\fi}	   

\def\institution#1{\gdef\@institution{#1}}
\def\qualification#1{\gdef\@qualification{#1}}
\def\address#1{\gdef\@address{#1}}
\def\department#1{\gdef\@department{#1}}
\def\faculty#1{\gdef\@faculty{#1}}
\def\college#1{\gdef\@college{#1}}
\def\supervisor#1{\gdef\@supervisor{#1}}
\def\cosupervisor#1{\gdef\@cosupervisor{#1}}
\def\hod#1{\gdef\@hod{#1}}
\def\twosupervisors{\twosupervisorstrue}
\def\submitdate#1{\gdef\@submitdate{#1}}
\def\dedication#1{\dedicationtrue\gdef\dedication{#1}}

%--------------Degree type and degree initials----------
\def\degree#1{\gdef\@degree{#1}}
\def\matricno#1{\gdef\@matricno{#1}}
\def\unilogo#1{\gdef\@unilogo{#1}}
\def\course#1{\gdef\@course{#1}}
\def\library#1{\gdef\@library{#1}}
\def\degreeinitial#1{\gdef\@degreeinitial{#1}}
\def\nd{\degree{National Diploma}\degreeinitial{ND}}
\def\msc{\degree{Master of Science}\degreeinitial{M.Sc.}}
\def\phd{\degree{Doctor of Philosophy}\degreeinitial{Ph.D.}}
\def\mphil{\degree{Masters of Philosophy}\degreeinitial{M. Phil.}}
\def\ma{\degree{Master of Arts}\degreeinitial{M.A.}}
\def\pgd{\degree{Postgraduate Diploma}\degreeinitial{PGD}}
\def\bsc{\degree{Bachelor of Science}\degreeinitial{B.Sc.}}
\def\@qualification{}
\def\@course{}
\def\@dedicate{}
\def\@matricno{}
\def\@unilogo{}
\def\@institution{Elerinmosa Institute of Technology}
\def\@address{Erin-osun}
\def\@department{Computer Software Engineering}
\def\@faculty{Science and Engineering}
\def\@college{Science and Engineering}
\def\@library{Ol\'u\d{s}\d{o}l\'a Ak\'inr\`in\'ad\'e Library}
\def\@supervisor{}
\def\@cosupervisor{}
\def\@hod{}
\def\@submitdate{\number\the\year}

\def\draft{\newcommand{\properpagestyle}{\pagestyle{myheadings}
\markright{{\rm Draft Version -- \today}}}\draft@modetrue\properpagestyle}
\def\nobib{\print@bibfalse}
\def\nologo{\logo@modefalse}
\def\nolistoffigures{\figurespagefalse}
\def\nolistoftables{\tablespagefalse}
\def\nocertification{\certificationfalse}
\def\noauthorisation{\permissionfalse}
\def\noprefatory{\front@pagesfalse\permissionfalse\figurespagefalse\tablespagefalse}

\newif\ifmainbody 	\mainbodytrue
\newif\ifdraft@mode     \draft@modefalse
\newif\iflogo@mode		\logo@modetrue
\newif\ifpermission     \permissiontrue 
\newif\ifcertification	\certificationtrue
\newif\ifdedication     \dedicationfalse
\newif\iffigurespage    \figurespagetrue 
\newif\iftablespage     \tablespagetrue
\newif\iffront@pages    \front@pagestrue
\newif\ifprint@bib      \print@bibtrue
\newif\iftwosupervisors	\twosupervisorsfalse

\def\signature#1#2{\parbox[b]{1in}{\smash{#1}\vskip12pt}
\hfill \parbox[t]{3in}{\shortstack{\vrule width 3in height 0.4pt\\\small#2}}}

%-------------------title page---------------
\def\maketitle{%
\setlinespacing{1.5}
	\thispagestyle{empty}%
\textbf{	
\ifdraft@mode
	  \begin{center}
	  	\Large DRAFT COPY\\ \large Printed \today 
	  \end{center}
\fi
	\null\vskip0.5in
	\begin{center}
		\Large\MakeUppercase{\@title}
	\end{center}
	\vfill
	\begin{center}
		\large\rm By\\
		\large\MakeUppercase{\@author}\\
		\@qualification
	\end{center}
	\vfill
	\iflogo@mode
	\begin{center}
		\includegraphics{\@unilogo}
	\end{center}
	\fi
	\vfill
	\begin{center}
		A THESIS SUBMITTED TO\\
		DEPARTMENT OF \MakeUppercase{\@department}\\
		%COLLEGE OF \MakeUppercase{\@college}\\
		\MakeUppercase{\@institution,} \MakeUppercase{\@address} 
	\end{center}
	\vfill
	\begin{center}
		IN PARTIAL FULFILMENT OF THE REQUIREMENTS\\
		FOR THE AWARD OF \MakeUppercase{\@degree} IN\\ \MakeUppercase{\@course}
	\end{center}
	\vfill
	\begin{center}
		\MakeUppercase{\number\the\year} 
	\end{center}
	}
	\addtocontents{toc}{~\hfill \textbf{Page} \par}
	\addtocontents{lot}{~\hfill \textbf{Page} \par}
	\addtocontents{lof}{~\hfill \textbf{Page} \par}
	\prefatory
}

%--------------Authorisation Page---------------------------------------
\def\authorisation{
\newpage
\begin{center}
\textbf{
\MakeUppercase{\@institution}, \MakeUppercase{\@address}, \MakeUppercase{\large Nigeria}\\
\MakeUppercase{\@library}\\
NATIONAL DIPLOMA THESIS\\
}
\vskip0.5in
\textbf{AUTHORISATION TO COPY}
\end{center}
\begin{list}{}{
		\setlength{\leftmargin}{1in}
		\setlength{\labelwidth}{0pt}
		\setlength{\labelsep}{\leftmargin}}
	\raggedright
	\item[\hbox to 0pt{\bf Author:}]      {\@author} 
	\item[\hbox to 0pt{\bf Title:}]       {\@title}
	\item[\hbox to 0pt{\bf Degree:}]  {\@degreeinitial (\@course)}
	\item[\hbox to 0pt{\bf Year:}]       {\number\year}
\end{list}
\vskip0.5in
I, {\@author}, hereby authorise the {\@library} to copy my thesis in part or whole in response to request from individuals and or organisations for the purpose of private study or research.
\vskip1.2in
	\signature{}{Signature of Author and Date}\\
}

%----------------Certification page------------------------------
\def\certification{
\newpage
\addcontentsline{toc}{chapter}{Certification}
\begin{center}
{\bf \Large CERTIFICATION}
\end{center}
\vskip0.3in 
\begin{sloppypar} 
The undersigned hereby certify that this is an original research carried out by {\@author} with the registration number {\@matricno} in the Department of {\@department},  {\@institution} under my supervision.
\end{sloppypar}

\vskip2.0in
\signature{Supervisor:}{\@supervisor} 
\iftwosupervisors
\vskip1.5in
\signature{Co-Supervisor:}{\@cosupervisor}
\fi
\vskip1.5in
\signature{Head of Department:}{\@hod} 
}

%-------------Load prefatory section----------------
\def\prefatory{
%\titlepage
\typeout{preparing prefatory section}
	\pagenumbering{roman}
	\pagestyle{plain}
	\iffront@pages
		\ifpermission\authorisation \else\addtocounter{page}{1}\fi
		\ifcertification\certification\else \addtocounter{page}{1}\fi
		\ifdedication
			\newpage\begin{center}\Large\em\null\vskip1in
			\dedication
			\vfill\end{center}
		\fi
	\fi
%\pagenumbering{arabic}
	}

%------------Insert Table of Content Entry into TOC
\let\@thetableofcontents\tableofcontents
\renewcommand{\tableofcontents}{%
	\newpage
  	\addcontentsline{toc}{chapter}{Table of Contents}
  	\setlinespacing{1.0}
  	\@thetableofcontents
\listoftables %process LOT
\listoffigures % process LOF
}
  
% ------------Adds list of tables and figures to the TOC-----------------------
\let\@thelistoftables\listoftables
\renewcommand{\listoftables}{%
	\newpage
	\setlinespacing{1.0}
	\addcontentsline{toc}{chapter}{List of Tables}
	\@thelistoftables
}

\let\@thelistoffigures\listoffigures
\renewcommand{\listoffigures}{%
	\newpage
	\setlinespacing{1.0}
	\addcontentsline{toc}{chapter}{List of Figures}
	\@thelistoffigures
}
	
%----------Defines what happens after prefatory--------------------
\def\beginmainbody{
	\ifdraft@mode
		 	\pagestyle{fancy}
		 	\fancyhf{}
		 	\chead{\thepage}
		 	\lhead{Draft Version}
		 	\rhead{Printed on \today}
	%	 	\pagenumbering{arabic}
	\else

			\pagestyle{fancy}
			\fancyhf{}
			\chead{\thepage}
			\renewcommand{\headrulewidth}{0pt}
%			\pagenumbering{arabic}
	\fi
\setlinespacing{2.0}
}	

%-------------Starts Reference section and add an entry into TOC----------
\let\@ldthebibliography\thebibliography
\renewcommand{\thebibliography}[1]{%
	\addcontentsline{toc}{chapter}{\bibname}
	\setlinespacing{1.0}
	\@ldthebibliography{#1}
}
	
%-------------Starts appendix section and add an entry into TOC-----------	
\let\@ldappendix\appendix
\renewcommand{\appendix}{
%\addcontentsline{toc}{chapter}{APPENDICES}}

\mainbodyfalse

\titlecontents{chapter}[0pt]{\vspace{10pt}}{\bfseries\appendixname\space\thecontentslabel:~} {\bfseries}{\bfseries\hfill\contentspage}
\@ldappendix
}

%-----------For acknowledge and Abstract---------------------	
\def\prechapter#1{%
	\chapter*{#1}
	\addcontentsline{toc}{chapter}{#1}
	\setlinespacing{2.0}
%\pagenumbering{arabic}
	}

%\let\@ldfigure\figure
%\let\@ldendfigure\endfigure
%\renewenvironment{figure}[1]{\begingroup \@ldfigure \begin{minipage}[c]\ifnum\pdfstrcmp{#1}{landscape}=0 [\textwidth]{\textheight} \else [\textheight]{\textwidth}\fi\centering}
%{\end{minipage} \@ldendfigure \endgroup}

\def\figurep{\begingroup \begin{figure} \begin{minipage}[c][\textheight]{\textwidth}\centering}
\def\endfigurep{\end{minipage} \end{figure} \endgroup}
	
\def\tablep{\begingroup \begin{table} \begin{minipage}[c][\textheight]{\textwidth}\centering}
\def\endtablep{\end{minipage} \end{table} \endgroup}

%----------This removes the dotted lines in TOC------------
\makeatletter
\renewcommand{\@dotsep}{10000} 
\makeatother

%---------Defines Definition and Algorithm Environment.-----------
\newtheorem{definition}{Definition}[section]

