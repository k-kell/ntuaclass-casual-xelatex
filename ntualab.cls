\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ntualab}[NTUA LAB REPORT]
\LoadClass[a4paper,12pt]{extreport}
%%----------------PACKAGES------------------%%

%%----------------GREEK SETUP---------------%%
\RequirePackage[utf8]{inputenc}
\RequirePackage[LGR,T1]{fontenc}
\RequirePackage[english,greek]{babel}
\RequirePackage{alphabeta}

%%---------------SYMBOLS-FONTS-GRAPHICS-----%%
\RequirePackage{amssymb,amsfonts,amsmath,indentfirst}
\RequirePackage{graphicx}
\RequirePackage{caption}
\RequirePackage[left=2.5cm,right=2.5cm,top=2.5cm,bottom=2.5cm]{geometry}
\RequirePackage{bookmark}
\RequirePackage{tocloft}
\RequirePackage{fancyhdr}
\RequirePackage{tikz}
\RequirePackage{pgfplots}
\RequirePackage{float}
\RequirePackage{subfig}
\RequirePackage{booktabs}
\RequirePackage{siunitx}
\RequirePackage{extarrows}
\RequirePackage{microtype}
\RequirePackage{hyperref}
\hypersetup{unicode,
    colorlinks=true,
    linkcolor=blue,
    citecolor=blue,
    urlcolor=cyan
}


%%---------------HEADER/FOOTER STYLES-------%%
\setlength{\parskip}{1em}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\leftmark}
\fancyhead[R]{\thepage}
\fancyfoot[C]{\thepage}


%%--------------MY COMMANDS-----------------%%

%%--------------CUSTOM CAPTIONS-------------%%

\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\addto\captionsgreek{%
   \renewcommand{\chaptername}{Ερώτημα}}


%%--------------ENGLISH TEXT----------------%%
   \newcommand{\en}[1]{
    \foreignlanguage{english}{#1}
 
 }

%%--------------INSERT PDF/JPEG ETC---------%%

%%---#1=filename.filextension--e.g.=test.pdf%%
%%---#2=caption---e.g.=test caption---------%%
%%---#3=fignumber(for \ref purposes)--e.g.=3%%

    \newcommand{\pdf}[3]{
      \begin{figure}[H]
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
  \begin{figure}[H]
    \centering
    \def\svgwidth{\columnwidth}
    \input{#1}
    \caption{#2}
    \label{fig:#3}
  \end{figure}
}


%%--------------CUSTOM TITLE----------------%%

\newcommand{\ntuatitle}[7]  {
\title{
\vspace{-10ex}
\includegraphics[scale=0.05]{ntualogo.png}\\
\Large{Ε}\large{ΘΝΙΚΟ}
\Large{Μ}\large{ΕΤΣΟΒΙΟ}
\Large{Π}\large{ΟΛΥΤΕΧΝΕΙΟ} \\
\normalsize{Σ}\small{ΧΟΛΗ}
\normalsize{Μ}\small{ΗΧΑΝΟΛΟΓΩΝ}
\normalsize{Μ}\small{ΗΧΑΝΙΚΩΝ}\\
\begin{center}
\vspace{10ex}
\huge \textbf{Εργαστηριακή Άσκηση:}\\
\vspace{2ex}
\Large\textbf{#1} \\
\vspace{10ex}
\large
Εργασία για το μάθημα του $#2^{ου}$ εξαμήνου: #3 \\
\vspace{8ex}
\large Ονοματεπώνυμο: \textbf{#4}\\
\vspace{2ex}
\large Aριθμός Μητρώου:  \textbf{#5}\\
\vspace{2ex}
\large Ομάδα: \textbf{$#6^η$}
\vspace{20ex}
\end{center}
}
\date{Αθήνα #7}}
