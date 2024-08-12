%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% Axon - A minimal, state-of-the-art LaTeX template %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Author: Jeffrey G. Lind III [jeffrey@jeffreylind.dev] %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%% Identification %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Axon}[2024/08/11, 0.6, Axon LaTeX Class]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%% Preliminary Declarations %%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\LoadClass{article}             % For article inheritance

\RequirePackage{
    graphicx,                   % For inserting images
    geometry,                   % For formatting
    amsmath,                    % For mathematical facilities
    gradient-text,              % For text color gradients
    biblatex,                   % For bibliography
    hyperref                    % For cross-referencing
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

\newcommand{\authors}[1]{
    \author{#1}
}

\newcommand{\addauthor}[2]{
    \textbf{#1}\\
    \texttt{#2}
    \vspace{1em}\\
}

\renewcommand{\maketitle}{
    \raggedright{
        \Huge\bfseries\expanded{
            \noexpand\gradientRGB{\@title}{0, 25, 255}{200, 0, 255}
        }
        \vskip 0.5em
    }
}

\newcommand{\makeauthor}{
    \@author\par
}

\renewcommand{\abstractname}{
    \LARGE\bfseries Abstract
}

\renewenvironment{abstract}{
    \abstractname\par
    \normalfont\normalsize
}{}