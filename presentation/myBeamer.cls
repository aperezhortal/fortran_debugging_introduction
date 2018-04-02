
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

%% Execute default options
\ExecuteOptions{usenames,dvipsnames}

%% Process given options
\ProcessOptions\relax

\LoadClass{beamer}

% \RequirePackage[dvipsnames]{xcolor}

% Packages included in this document class
\RequirePackage[none]{hyphenat} %No hyphenation

%Math packages
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{bm}

\RequirePackage{xparse}%  For \NewDocumentCommand
\RequirePackage{tikz}
\RequirePackage{empheq}
\RequirePackage[many]{tcolorbox}

\RequirePackage{mathtools}

\RequirePackage{graphicx} % Figures

\RequirePackage{setspace} % To change line space
\RequirePackage{float}
\RequirePackage{algorithmic}% http://ctan.org/pkg/algorithms
\RequirePackage[authoryear]{natbib} % To create bibliography and cite
%\RequirePackage[customcolors]{hf-tikz}
\RequirePackage{ulem}
\RequirePackage{pgffor}

\usetikzlibrary{calc}

\RequirePackage{indentfirst} %Indent first paragraph of sections and chapters

\RequirePackage{xpatch}

% Custom commands and declarations


\DeclarePairedDelimiter{\expect}{\langle}{\rangle}

\DeclarePairedDelimiter{\parentesis}{(}{)}

\DeclarePairedDelimiter{\brackets}{[}{]}


% put color to \boxed math command
\newcommand*{\boxcolor}{blue}
\makeatletter
\renewcommand{\boxed}[1]{\textcolor{\boxcolor}{%
\tikz[baseline={([yshift=-1ex]current bounding box.center)}] \node [rectangle, minimum width=1ex,rounded corners,draw] {\normalcolor\m@th$\displaystyle#1$};}}
 \makeatother

\renewcommand*{\thefootnote}{\alph{footnote}}

\newcommand{\light}[1]{\textcolor{gray}{#1}}

\NewDocumentCommand{\DrawBoxWide}{s O{}}{%
    \tikz[overlay,remember picture]{
    \IfBooleanTF{#1}{%
        \coordinate (RightPoint) at ($(left |- right)+(\linewidth-\labelsep-\labelwidth,0.0)$);
    }{%
        \coordinate (RightPoint) at (right.east);
    }%
    \draw[red,#2]
      ($(left)+(-0.1em,0.9em)$) rectangle
      ($(RightPoint)+(0.2em,-0.3em)$);}
}

\newcommand{\tikzmark}[1]{\tikz[overlay,remember picture] \node (#1) {};}



\usetheme{Antibes}

\definecolor{red}{RGB}{255,0,0}
\definecolor{mcgillred}{RGB}{255,24,0}
\definecolor{darkred}{RGB}{200,0,0}

\setbeamercolor{section in head/foot}{fg=white,bg=darkred}

\setbeamercolor*{title}{fg=white,bg=darkred}
\setbeamercolor*{frametitle}{fg=black,bg=white}
\addtobeamertemplate{block begin}{\setlength\abovedisplayskip{0pt}}


\newenvironment{tightcenter}{%
  \setlength\topsep{0pt}
  \setlength\parskip{0pt}  
  \setlength\partopsep{0pt}
  \setlength{\labelsep}{0pt}%
  \begin{center}
}{%
  \end{center}
}

\setbeamertemplate{frametitle}{%
    \begin{tightcenter}    
    \usebeamerfont{frametitle}\setlength\lineskip{2pt}\insertframetitle%
    \vphantom{g}% To avoid fluctuations per frame          
   \end{tightcenter}
}



\makeatletter

\setbeamertemplate{headline}
{%
    \begin{beamercolorbox}[wd=\paperwidth,ht=2.5ex,dp=1.125ex,%
      leftskip=.3cm,rightskip=.3cm plus1fil]{section in head/foot}
      \usebeamerfont{section in head/foot}%  
        \hskip6pt%
	   \setbox\beamer@tempbox=\hbox{\insertsubsectionhead}%
	   

        \ifdim\wd\beamer@tempbox>1pt%
		  \setbox\beamer@tempbox=\hbox{\insertsubsubsectionhead}%
		  \ifdim\wd\beamer@tempbox>1pt%
			\textbf{\insertsectionhead} $\ \bf{\Rightarrow}$ \textbf{\insertsubsectionhead}  $\ \bf{\Rightarrow}$ \textbf{\insertsubsubsectionhead}
		  \else
			\textbf{\insertsectionhead} $\ \bf{\Rightarrow}$ \textbf{\insertsubsectionhead}
		  \fi

		\else
		  \textbf{\insertsectionhead}
        \fi%

      
    \end{beamercolorbox}
} 
\makeatother
\setbeamercolor*{lower separation line head}{bg=mcgillred, fg=black}

\ExplSyntaxOn
\xpretocmd{\empheq}
  {\setlength\abovedisplayskip{0pt}
  \setlength\belowdisplayskip{0pt}
  \setlength\abovedisplayshortskip{0pt}
  \setlength\belowdisplayshortskip{0pt}
  \baselineskip=3pt  
  }
  {}{}
\xpretocmd{\align}
  {\setlength\abovedisplayskip{0pt}
  \setlength\belowdisplayskip{0pt}
  \setlength\abovedisplayshortskip{0pt}
  \setlength\belowdisplayshortskip{0pt}
  \baselineskip=3pt
  }
  {}{}
\ExplSyntaxOff

\let\oldfootnote\footnote
\renewcommand\footnote[1][]{\oldfootnote[frame,#1]}

\newcommand{\colouredcircle}{%
  \tikz{\useasboundingbox (-0.2em,-0.32em) rectangle(0.2em,0.32em);
        \draw[ball color=red,shading=ball,line width=0.03em] (0,0) circle(0.18em);}}

        
\setbeamertemplate{itemize item}{\colouredcircle}
\setbeamercolor{itemize subitem}{fg=red,bg=red}
\setbeamercolor{itemize item}{fg=white,bg=white}
\setbeamerfont{frametitle}{series=\bfseries}

\newenvironment{tightBox}{%
\begin{tcolorbox}[colback=mcgillred!5,
  colframe=mcgillred,boxsep=1pt,
  left=0pt,right=0pt,top=5pt,bottom=5pt]
}{%
  \end{tcolorbox}
}
