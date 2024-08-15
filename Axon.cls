%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% Axon - A minimal, state-of-the-art LaTeX template %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Author: Jeffrey G. Lind III [jeffrey@jeffreylind.dev] %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% Identification %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Axon}[2024/08/11, 0.11, Axon LaTeX Class]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%% Preliminary Declarations %%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\LoadClass{article} % For article inheritance

\RequirePackage{
    graphicx,      % For inserting images
    geometry,      % For formatting
    amsmath,       % For mathematical facilities
    amsthm,        % For mathematical environments
    amsfonts,      % For mathematical fonts
    amssymb,       % For mathematical symbols
    gradient-text, % For text color gradients
    biblatex,      % For bibliography
    hyperref,      % For cross-referencing
    xcolor         % For text coloring
}

\RequirePackage[T1]{fontenc}    % For font encoding
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%% Formatting %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\geometry{
    a4paper,       % Paper Size: A4 (ISO 216:2007 Compliant)
    margin = 10mm, % Margin Size [all]: 10mm
    includefoot
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%% Authors %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\authors}[1]{
    \author{#1}
}

\newcommand{\addauthor}[2]{
    \textbf{#1}\\
    \texttt{#2}
    \vspace{1em}\\
}

\newcommand{\makeauthor}{
    {
        \raggedright
        \@author\par
    }
    \setlength{\parindent}{1.5em} % Reset paragraph indent after author
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%% Title %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\maketitle}{
    {
        \raggedright
        \Huge\bfseries\expanded{
            \noexpand\gradientRGB{\@title}{0, 25, 255}{200, 0, 255}
        }
        \vskip 0.5em
        \par
    }
    \setlength{\parindent}{1.5em} % Reset paragraph indent after title
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%% Abstract %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\abstractname}{
    \LARGE\bfseries Abstract
}

\renewenvironment{abstract}{
    {
        \raggedright
        \abstractname\par
        \normalfont\normalsize
    }
    \setlength{\parindent}{1.5em} % Reset paragraph indent after abstract
}{}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% Environments %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\theoremstyle{definition}
\newtheorem{example}{Example}[section]

\renewenvironment{example}{
  \vspace{6pt}\noindent\refstepcounter{example}%
  \textbf{Example \theexample.}\mbox{}\\
}{
  \vspace{6pt}
}