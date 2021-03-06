\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{oucart}[2015/05/20 OUC Undergraduate Thesis Template]

\LoadClass[11pt,a4paper]{article}

\newif\iflangcn
\newif\iflangen

\DeclareOption{cn}{\langcntrue}
\DeclareOption{en}{\langentrue}
\ProcessOptions\relax

\RequirePackage{ctex}
\RequirePackage{CJKutf8}

\setCJKmainfont[BoldFont=STHeiti,ItalicFont=STKaiti]{STSong}
\setCJKsansfont[BoldFont=STHeiti]{STXihei}
\setCJKmonofont{STFangsong}

\RequirePackage{caption}
\RequirePackage{booktabs}
\RequirePackage{listings}
\RequirePackage{setspace}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{ulem}
\RequirePackage{hyperref}
\RequirePackage{dtk-logos}
\RequirePackage{xcolor}
\RequirePackage{setspace}
\RequirePackage{subfigure}
\RequirePackage{amsmath}
\RequirePackage{geometry}
\linespread{1.35}

\RequirePackage{fancyhdr}
\pagestyle{fancy}

\RequirePackage{assets/cover}
\RequirePackage{assets/abstractkeywords}
\RequirePackage{assets/signature}
\RequirePackage{assets/gbt7714}

% ``目录'', ``参考文献''样式
\iflangcn
\renewcommand{\contentsname}{\centerline{\zihao{3}{\heiti{目$\qquad$录}}}}
\renewcommand{\refname}{\centerline{参考文献}}
\fi
\iflangen
\renewcommand{\contentsname}{\centerline{\zihao{3}{\heiti{Contents}}}}
\renewcommand{\refname}{\centerline{References}}
\fi

% 调整页边距
\geometry{top=2.54cm,bottom=2.54cm,left=3cm,right=3cm} 

\makeatletter

% 修改引用标记为上角标
\def\@cite#1#2{\textsuperscript{[{#1\if@tempswa , #2\fi}]}}

% 定义基本信息
\newcommand*{\entitle}[1]{
  \def\@entitle{#1}
}
\newcommand*{\advisor}[1]{
  \def\@advisor{#1}
}
\newcommand*{\studentid}[1]{
  \def\@studentid{#1}
}
\newcommand*{\department}[2]{
  \def\@college{#1}
  \def\@department{#2}
}

\lhead{}
\rhead{}
\chead{\small{\@title}} % 页眉

\makeatother

% 修改标题样式
\titleformat{\section}
            {\zihao{3}\heiti\raggedright}
            {\arabic{section}.}{1em}
            {}
\titleformat{\subsection}
            {\zihao{4}\heiti\raggedright}
            {\arabic{section}.\arabic{subsection}}{1em}
            {}
\titleformat{\subsubsection}
            {\zihao{4}\heiti\raggedright}
            {\arabic{section}.\arabic{subsection}.\arabic{subsubsection}}{1em}
            {}
% 修改目录样式
\titlecontents{section}
              [10mm]
              {\zihao{4}\songti}
              {\contentslabel{1em}}
              {}
              {\titlerule*{.}\contentspage}
\titlecontents{subsection}
              [17mm]
              {\zihao{-4}\songti}
              {\contentslabel{2em}}
              {}
              {\titlerule*{.}\contentspage}
\titlecontents{subsubsection}
              [25mm]
              {\zihao{-4}\songti}
              {\contentslabel{3em}}
              {}
              {\titlerule*{.}\contentspage}

% 修改部分页眉样式
\fancypagestyle{zhabstract}{
\chead{\small{摘\ \ \ 要}}
}

\fancypagestyle{enabstract}{
\chead{\small{Abstract}}
}

\fancypagestyle{tableofcontents}{
\chead{\small{目\ \ \ 录}}
}

% 修改图表样式
\captionsetup{figurewithin=section}
\captionsetup{tablewithin=section}

\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}
\renewcommand{\captionfont}{\zihao{5}\heiti} 

% 修改公式样式
\numberwithin{equation}{section}

% 修改列表样式
\renewcommand{\labelenumi}{(\theenumi)}

\definecolor{lightgrey}{rgb}{0.95,0.95,0.95}
% 配置代码块样式
\lstset
{
    language=[LaTeX]TeX,
    frame=L,
    breaklines=true,
    basicstyle=\tt\scriptsize,
    keywordstyle=\color{blue},
    identifierstyle=\color{magenta},
    backgroundcolor=\color{lightgrey},
    emph={  
    subsection, subsubsection, entitle, studentid, advisor, department, cnabstractkeywords, enabstractkeywords, makecover, makesignature, makeabstract, tableofcontents,zihao, setCJKmainfont,setCJKsansfont,setCJKmonofont,linespread,LoadClass,geometry,top,bottom,left,right,heiti,songti,kaishu,newtheorem
    },emphstyle={\color{blue}}
}