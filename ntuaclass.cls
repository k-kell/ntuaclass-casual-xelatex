\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ntuaclass}[NTUA HOMEWORK TEMPLATE]
\LoadClass[a4paper,12pt]{article}
%%----------------PACKAGES------------------%%

%%----------------GREEK SETUP---------------%%
\RequirePackage{xgreek}
\RequirePackage{alphabeta,csquotes}

%%---------------SYMBOLS-FONTS-GRAPHICS-----%%
\RequirePackage[default]{fontsetup} %already loads fontspec and unicode-math
\RequirePackage{amsmath,physics}
\RequirePackage{graphicx,caption}
\RequirePackage[style=numeric]{biblatex}
\RequirePackage[left=2.5cm,right=2.5cm,top=2.5cm,bottom=2.5cm]{geometry}
\RequirePackage{tocloft}
\RequirePackage{fancyhdr}
\RequirePackage{tikz}
\RequirePackage{pgfplots}
\RequirePackage{gnuplot-lua-tikz}
\RequirePackage{float}
\RequirePackage{subfig}
\RequirePackage{booktabs}
\RequirePackage{indentfirst}
\RequirePackage{siunitx}
\RequirePackage{extarrows}
\RequirePackage{microtype}
\RequirePackage[bookmarksnumbered=true]{hyperref}
\RequirePackage{cleveref}


%%-----------------CLEVEREF SETUP-----------%%
\crefname{equation}{εξίσωση}{εξισώσεις}
\crefname{figure}{Σχήμα}{Σχήματα}
\newcommand{\crefrangeconjunction}{--}
\newcommand{\crefpairconjunction }{ και } 


%%---------------HEADER/FOOTER STYLES-------%%
\setlength{\parskip}{1em}
\setlength{\headheight}{15pt}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\textit{\nouppercase{\leftmark}}}
\fancyhead[R]{\textit{\kel@Mathima}}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0.7pt}
\renewcommand{\footrulewidth}{0.3pt}


%%---------------CORRECT THOUSAND SEP-------%%
\sisetup{group-digits=true,
         group-four-digits=true,
         group-separator = {\,},
         output-decimal-marker = {,}}

\pgfplotsset{
  compat=1.17,
  siunitxlabels/.style={
    /pgfplots/typeset ticklabel/.code={\pgfmathparse{\tick}$\num[zero-decimal-to-integer]{\pgfmathresult}$},
  },
}


%%--------------MY COMMANDS-----------------%%

%%--------------TOC DOT SETUP---------------%%

\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}


%%--------------INSERT PDF/JPEG ETC---------%%

%%---#1=filename.filextension--e.g.=test.pdf%%
%%---#2=caption---e.g.=test caption---------%%
%%---#3=fignumber(for \ref purposes)--e.g.=3%%

    \newcommand{\pdf}[3]{
      \begin{figure}[tbp]
          \centering
          \includegraphics[width=\textwidth]{#1}
          \caption{#2}
          \label{fig:#3}
      \end{figure}
  }


%%-----------------INSERT SVG----------------%%

%%---#1=filename.pdf_tex---------------------%%
%%---#2=caption---e.g.=test caption---------%%
%%---#3=fignumber(for \ref purposes)--e.g.=3%%
\newcommand{\svg}[3]{
  \begin{figure}[tbp]
    \centering
    \def\svgwidth{\columnwidth}
    \input{#1}
    \caption{#2}
    \label{fig:#3}
  \end{figure}
}


%%--------------CUSTOM TITLE----------------%%

\let\kel@Type\@empty
\let\kel@Title\@empty
\let\kel@Eks\@empty
\let\kel@Mathima\@empty
\let\kel@Onomatepwnumo\@empty
\let\kel@Armhtrwou\@empty
\let\kel@Omada\@empty
\let\kel@Hmeromhnia\@empty

\newcommand{\Type}[1]{\renewcommand{\kel@Type}{#1}}
\newcommand{\Title}[1]{\renewcommand{\kel@Title}{#1}}
\newcommand{\Eks}[1]{\renewcommand{\kel@Eks}{#1}}
\newcommand{\Mathima}[1]{\renewcommand{\kel@Mathima}{#1}}
\newcommand{\Onomatepwnumo}[1]{\renewcommand{\kel@Onomatepwnumo}{#1}}
\newcommand{\Armhtrwou}[1]{\renewcommand{\kel@Armhtrwou}{#1}}
\newcommand{\Omada}[1]{\renewcommand{\kel@Omada}{#1}}
\newcommand{\Hmeromhnia}[1]{\renewcommand{\kel@Hmeromhnia}{#1}}

\newcommand{\ntuatitle}{%
\begin{titlepage}
\begin{center}
\vspace{-10ex}
\includegraphics[scale=0.05]{ntualogo.png}\\
\Large{Ε}\large{ΘΝΙΚΟ}
\Large{Μ}\large{ΕΤΣΟΒΙΟ}
\Large{Π}\large{ΟΛΥΤΕΧΝΕΙΟ} \\
\normalsize{Σ}\small{ΧΟΛΗ}
\normalsize{Μ}\small{ΗΧΑΝΟΛΟΓΩΝ}
\normalsize{Μ}\small{ΗΧΑΝΙΚΩΝ}\\
\vspace{10ex}
\if\kel@Type\@empty
\Large\textbf{\kel@Title} \\
\vspace{12ex}
\else
\huge{\textbf{\kel@Type:}}\\
\vspace{2ex}
\Large\textbf{\kel@Title} \\
\vspace{10ex}
\fi
\large
\textit{Εργασία για το μάθημα του $\kel@Eks^{ου}$ εξαμήνου:}\\
\Large \textbf{\kel@Mathima} \\
\vspace{8ex}
\Large Ονοματεπώνυμο: \textbf{\kel@Onomatepwnumo}\\
\vspace{2ex}
\large  Aριθμός Μητρώου:   \textbf{\kel@Armhtrwou}\\
\vspace{2ex}
\if\kel@Omada\@empty
\else
\large Ομάδα: \textbf{${\kel@Omada}^η$}\\

\fi
\vspace{24ex}
Αθήνα, \kel@Hmeromhnia
\end{center}
\end{titlepage}

}

%%--------------CUSTOM METADATA--------------%%

\newcommand{\fixmetadata}{
\hypersetup{
  unicode,
  colorlinks=true,
  linkcolor=black,
  citecolor=blue,
  urlcolor=cyan,
  pdfauthor={\kel@Onomatepwnumo},
  pdftitle={\kel@Title}
  }
}


%%--------------CUSTOM TOC------------------%%

\newcommand{\maketoc}{
\setcounter{page}{0}
\tableofcontents
\thispagestyle{empty}
\clearpage
}

%%-------------CUSTOM CHAP NAME------------%%

\newcommand{\setchapname}[1]{
\addto\captionsgreek{
   \renewcommand{\chaptername}{#1}}
}
