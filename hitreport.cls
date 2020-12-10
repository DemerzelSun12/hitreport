\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{hitreport}
              [2017/09/16 v2.6 Standard LaTeX Template for CUMC]
%% Inital Code
\newif\if@hitreport@preface\@hitreport@prefacetrue
% tokens definition
%%%% 承诺书
% 信息
\newcommand\major[1]{\def\@major{#1}}
\newcommand\name[1]{\def\@name{#1}}
\newcommand\stuid[1]{\def\@stuid{#1}}
\newcommand\college[1]{\def\@college{#1}}
\renewcommand\date[1]{\def\@date{#1}}
\newcommand\lab[1]{\def\@lab{#1}}
\newcommand\course[1]{\def\@course{#1}}
\newcommand\instructor[1]{\def\@instructor{#1}}
\newcommand\expname[1]{\def\@expname{#1}}
\newcommand\term[1]{\def\@term{#1}}

%%%% 编号专用页
% 没有
%% Declaration of Options
\DeclareOption{colorprint}{\@hitreport@bwprintfalse}
\DeclareOption{bwprint}{\@hitreport@bwprinttrue}
\DeclareOption{withoutpreface}{\@hitreport@prefacefalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
%% Executing of Options
%\ExecuteOptions{colorprint}
\ProcessOptions\relax
%% Loading Class
\LoadClass[a4paper,12pt]{article}
%% Loading Package
\RequirePackage{ifxetex}
\RequireXeTeX
\ifxetex\else
\ClassError{hitreportthesis}{You must use the `xelatex' driver\MessageBreak Please choose `xelatex'}{%
Just choose `xelatex', no `pdflatex' or `latex' and so on.}
\fi
% 支持中文的 ctex 宏包
\RequirePackage{ctex}
% 页面布局
\RequirePackage{geometry}
% 数学宏包
\RequirePackage{amsmath}
\RequirePackage{mathrsfs}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{bm}
\RequirePackage{titletoc}
% 设置颜色
\RequirePackage{xcolor}
% 插入图片
\RequirePackage{graphicx}
% 表格
\RequirePackage{array}
%% 长表格
\RequirePackage{longtable}
%% booktabs 提供了\toprule 等命令.
\RequirePackage{booktabs}
%% multirow 支持在表格中跨行
\RequirePackage{multirow}
%% 调整间隔, 让表格更好看些
\RequirePackage{bigstrut}
%% 在跨行表格中输入定界符
\RequirePackage{bigdelim}
% 保护脆落命令
\RequirePackage{cprotect}
% 设置代码环境
\RequirePackage{listings}
\RequirePackage{xcolor}

\RequirePackage[titles]{tocloft}
\renewcommand{\cftdot}{$\cdot$}
\renewcommand{\cftsecdotsep}{1.5} 
\setlength{\cftbeforesecskip}{7pt}
\setlength{\cftbeforesubsecskip}{3pt}
\renewcommand{\cftsecfont}{\bfseries\zihao{-4}\heiti}
\renewcommand{\cftsecleader}{\cftdotfill{\cftsecdotsep}}
\renewcommand{\cftsecaftersnumb}{\hskip.4em}



\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}

\lstset{
  frame=tb,
  aboveskip=3mm,
  belowskip=3mm,
  showstringspaces=false,
  columns=flexible,
  framerule=1pt,
  rulecolor=\color{gray!35},
  backgroundcolor=\color{gray!5},
  basicstyle={\small\ttfamily},
  numbers=none,
  numberstyle=\tiny\color{gray},
  keywordstyle=\color{blue},
  commentstyle=\color{dkgreen},
  stringstyle=\color{mauve},
  breaklines=true,
  breakatwhitespace=true,
  tabsize=3,
}
% 首行缩进
\RequirePackage{indentfirst}
% 设置浮动体的标题
\RequirePackage{caption}
% 定制列表环境
\RequirePackage{enumitem}
% 下划线
\RequirePackage{ulem}
% 尺寸计算
\RequirePackage{calc}

\RequirePackage[titletoc,title]{appendix}

%\RequirePackage[title,toc,titletoc]{appendix}

\RequirePackage{etoolbox}
\AtBeginEnvironment{thebibliography}{%
    \phantomsection
    \addcontentsline{toc}{section}{\refname}
    }
% 超链接 hyperref 的设置
\RequirePackage{hyperref}
%% Document Layout
% 页面布局
\geometry{top=25mm,bottom=25mm,left=25mm,right=25mm}
\renewcommand*{\baselinestretch}{1.38}
% 修改tabular 环境, 设置表格中的行间距为正文行间距.
\let\hitreport@oldtabular\tabular
\let\hitreport@endoldtabular\endtabular
\renewenvironment{tabular}%
	{\bgroup%
	\renewcommand{\arraystretch}{1.38}%
	\hitreport@oldtabular}%
	{\hitreport@endoldtabular\egroup}
% 每行缩进两个汉字
\setlength\parindent{2em}
% 设置字体
\setmainfont{Times New Roman}
%\setmonofont{Courier New}
\setsansfont{Arial}
\setCJKfamilyfont{kai}[AutoFakeBold]{simkai.ttf}
\newcommand*{\kai}{\CJKfamily{kai}}
\setCJKfamilyfont{song}[AutoFakeBold]{SimSun}
\newcommand*{\song}{\CJKfamily{song}}
\setCJKfamilyfont{hwxk}{STXingkai}             %使用STXingkai华文行楷字体
\newcommand{\huawenxingkai}{\CJKfamily{hwxk}}
\newcommand{\hei}{\CJKfamily{hei}} 

\renewcommand\normalsize{%
	\@setfontsize\normalsize{12.05}{14.45}%
	\abovedisplayskip 12\p@ \@plus3\p@ \@minus7\p@
	\abovedisplayshortskip \z@ \@plus3\p@
	\belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@}
% 数学环境, 定理等设置
\newtheorem{definition}{\hitreport@cap@definition}
\newtheorem{theorem}{\hitreport@cap@theorem}
\newtheorem{lemma}{\hitreport@cap@lemma}
\newtheorem{corollary}{\hitreport@cap@corollary}
\newtheorem{assumption}{\hitreport@cap@assumption}
\newtheorem{conjecture}{\hitreport@cap@conjecture}
\newtheorem{axiom}{\hitreport@cap@axiom}
\newtheorem{principle}{\hitreport@cap@principle}
\newtheorem{problem}{\hitreport@cap@problem}
\newtheorem{example}{\hitreport@cap@example}
\newtheorem{proof}{\hitreport@cap@proof}
\newtheorem{solution}{\hitreport@cap@solution}

% 浮动环境设置
% 默认情况下, \LaTeX{} 要求每页的文字至少占据 20%,否则该页就只单独放置一个浮动环境,
% 而这通常不是我们想要的, 我们将这个要求降低到 5%.
 \renewcommand*{\textfraction}{0.05}
% 有时如果多个浮动环境连续放在一起, \LaTeX{}
% 会将它们分在几个不同页，即使它们可在同一页放
% 得下. 我们可以通过修改 |\topfraction| 和 |\bottomfraction| 分别设置顶端和底端的浮
% 动环境的最大比例.
 \renewcommand*{\topfraction}{0.9}
 \renewcommand*{\bottomfraction}{0.8}
% 有时\LaTeX{}会把一个浮动环境单独放在一页,
% 我们要求这个环境至少要占据 85% 才能单独放在一页.
% 注意:  |\floatpagefraction| 的数值必须小于 |\topfraction|.
 \renewcommand*{\floatpagefraction}{0.85}
% 关于图片 graphicx
 % 如果图片没有指定后缀, 依次按下列顺序搜索
\DeclareGraphicsExtensions{.pdf,.eps,.jpg,.png}
 % 设置图表搜索路径, 可以给图表文件夹取如下名字
\graphicspath{{figures/}{figure/}{pictures/}%
  {picture/}{pic/}{pics/}{image/}{images/}}
% 图表标题
\DeclareCaptionFont{song}{\songti}
\DeclareCaptionFont{minusfour}{\zihao{-4}}
\captionsetup[figure]{%
	format=hang,   % 标题从第二行开始都有缩进, 应该和 justification=raggedright 的效果一样.
	labelsep=quad, % 分隔符是一个空格
	font={song,minusfour,bf}, % 图的字体, 宋体小四
	position=bottom % position=bottom, 不代表标题放在下面, 标题仍放在你放\caption的位置.
}
\captionsetup[table]{%
	format=hang,   % 标题从第二行开始都有缩进, 应该和 justification=raggedright 的效果一样.
	labelsep=quad, % 分隔符是一个空格
	font={song,minusfour,bf}, % 表的字体, 宋体小四
	position=top % position=bottom, 不代表标题放在下面, 标题仍放在你放\caption的位置.
}
% 列表环境设置
\setlist{%
	topsep=0.3em, % 列表顶端的垂直空白
	partopsep=0pt, % 列表环境前面紧接着一个空白行时其顶端的额外垂直空白
	itemsep=0ex plus 0.1ex, % 列表项之间的额外垂直空白
	parsep=0pt, % 列表项内的段落之间的垂直空白
	leftmargin=1.5em, % 环境的左边界和列表之间的水平距离
	rightmargin=0em, % 环境的右边界和列表之间的水平距离
	labelsep=0.5em, % 包含标签的盒子与列表项的第一行文本之间的间隔
	labelwidth=2em % 包含标签的盒子的正常宽度；若实际宽度更宽，则使用实际宽度。
}

% 超链接
	 \hypersetup{%
         xetex,
		% unicode=false, % hyperref 和 xetex 同时使用时不能开启 Unicode 选项.
         pdfstartview=FitH,
         CJKbookmarks=true,
         bookmarksnumbered=true,
         bookmarksopen=true,
         colorlinks, %注释掉此项则交叉引用为彩色边框(将colorlinks和pdfborder同时注释掉)
         pdfborder=001,   %注释掉此项则交叉引用为彩色边框
		 allcolors=black,
		 breaklinks=true}%
% \if@hitreport@bwprint
% \AtBeginDocument{\hypersetup{hidelinks}}
% \else\relax\fi
\lstnewenvironment{tcode}
  {
    \lstset{basicstyle = \small\ttfamily,
        language=TeX,
        tabsize = 4,
        frame = single,
        escapechar = `,
        breaklines = true,
        breakatwhitespace = true,
        frameround = tttt,
    }
  }
  {}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Document Markup



%\pagestyle{fancy}
%\lhead{实验名称：\@expname}
%\chead{姓名：\@name}
%\rhead{学号：\@stuid}

% 下划线定义
%\def\hitu[#1]#2{
%  \underline{\hbox to #1{\hfil#2\hfil}}}

% 首页头部
\newcommand{\makeheader}{

\begin{table}[!htbp]
  \centering
  \begin{tabular*}{\linewidth}{llllll}
    课程名称： & \hitu[150pt]\@course   & 指导老师： & \hitu[50pt]\@instructor   & 实验名称：       &  \hitu[50pt]\@grades
  \end{tabular*}
\end{table}
\thispagestyle{empty}

}

% 生成封面, 使用\maketitle
\renewcommand{\maketitle}{
	\begingroup
      \newpage
      \@maketitle
    \endgroup
%  \global\let\thanks\relax
%  \global\let\maketitle\relax
%  \global\let\@maketitle\relax
%  \global\let\@thanks\@empty
%  \global\let\@author\@empty
%  \global\let\@date\@empty
%  \global\let\@title\@empty
%  \global\let\title\relax
%  \global\let\author\relax
%  \global\let\date\relax
%  \global\let\and\relax
}

\def\@maketitle{%
  \newpage
  \if@hitreport@preface
  \null
	\begin{center}
	  		\begin{center}
	  		\begin{figure}[t]
	  		\begin{center}
	  			\parbox[b]{2cm}{
	  				\includegraphics[scale=0.22]{HIT.jpg} % 校徽图片
	  			}
	  			\parbox[b]{13.5cm}{
	  				\begin{center}
	  					\includegraphics[scale=0.75]{hitname.jpg} 
	  					% 学校名图片，两张图片必须放在与.tex文件同一目录下，名字可以自己相应更改，但必须保持一致
	  					
	  					\large \textbf{Harbin Institute of Technology} 
	  				\end{center}
	  			}
	  		\end{center}
	  		\end{figure}
	    	\end{center}
	
	
	    
	    \begin{center}
	        \vspace{5pt}
	    \end{center}
	    
	    \bfseries{\huawenxingkai \fontsize{42}{0} \selectfont \@title}\\
	    
	    \vspace{0.5cm}
	    \bfseries{\hei \fontsize{24}{0} \selectfont \@expname}
	    \vspace{3cm}
	    \begin{center}
	      \Large
	      \linespread{2}
	      \centering
	      \renewcommand\arraystretch{1.6}
	      \begin{tabular}{lc}
	      {}{课程名称：} & {}\@course     \\ \cline{2-2} 
	      {}{学院：}   & {}\@college    \\ \cline{2-2} 
	      {}{专业：}   & {}\@major      \\ \cline{2-2} 
	      {}{学号：}   & {}\@stuid      \\ \cline{2-2} 
	      {}{姓名：}   & {}\@name       \\ \cline{2-2} 
	      {}{指导老师：} & {}\@instructor \\ \cline{2-2} 
	      {}{学期：}   & {}\@term         \\ \cline{2-2}
	      \end{tabular}
	    \end{center}
	    \vspace{2cm}
	    \Large{\@date}
	  \end{center}
	  \thispagestyle{empty}
	  \newpage
}

% 中文标题名称设置
\renewcommand\contentsname{\hitreport@cap@contentsname}
\renewcommand\listfigurename{\hitreport@cap@listfigurename}
\renewcommand\listtablename{\hitreport@cap@listtablename}
\renewcommand\refname{\hitreport@cap@refname}
\renewcommand\indexname{\hitreport@cap@indexname}
\renewcommand\figurename{\hitreport@cap@figurename}
\renewcommand\tablename{\hitreport@cap@tablename}
\renewcommand\appendixname{\hitreport@cap@appendixname}
\renewcommand\abstractname{\hitreport@cap@abstractname}

% 中文标题格式设置
% 目录深度
\setcounter{secnumdepth}{3}
% 节标题格式, 居中, 使用\chinese命令修改计数器
\def\@seccntformat#1{\csname the#1\endcsname\ }
\renewcommand\thesection{\chinese{section}、}
\renewcommand\thesubsection{\arabic{section}\thinspace.\thinspace\arabic{subsection}}
\renewcommand\thesubsubsection{\thesubsection\thinspace.\thinspace\arabic{subsubsection}}
\renewcommand\section{\@startsection{section}{1}{\z@}%
 	{-3.5ex \@plus -1ex \@minus -.2ex}%
	{2.3ex \@plus.2ex}%
	{\centering\normalfont\Large\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
	{-3.25ex\@plus -1ex \@minus -.2ex}%
	{1.5ex \@plus .2ex}%
	{\normalfont\large\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
	{-3.25ex\@plus -1ex \@minus -.2ex}%
	{1.5ex \@plus .2ex}%
	{\normalfont\normalsize\bfseries}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
	{3.25ex \@plus1ex \@minus.2ex}%
	{-1em}%
	{\normalfont\normalsize\bfseries}}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
	 {3.25ex \@plus1ex \@minus .2ex}%
	 {-1em}%
	 {\normalfont\normalsize\bfseries}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Define new environment and command
%% 摘要两个字设置为 4 号.
%% 定义摘要环境
\renewenvironment{abstract}{%
\if@twocolumn
		\section*{\abstractname}%
	\else
	 \begin{center}%
	{\zihao{4}\bfseries \abstractname\vspace{-.5em}\vspace{\z@}}%
	 \end{center}%
 	 \quotation
	\fi}
	{\if@twocolumn\else\endquotation\newpage\null\fi}
\renewenvironment{quotation}
	{\list{}{\listparindent 2em%
	 \itemindent \listparindent
	 \rightmargin\z@
	 \leftmargin\z@
	 \parsep \z@ \@plus\p@}%
	\item\relax}
	{\endlist}

\newcommand\keywords[1]{%
	\renewcommand{\hitreport@tokens@keywords}{#1}
	\par
	\vskip1ex
	{\noindent\zihao{-4}\heiti\hitreport@cap@keywordsname：}~{\hitreport@tokens@keywords}
	}
% 定义附录	

% \renewcommand{\setthesection}{\appendixname\Alph{section}}
% \renewcommand\appendix{\par
	% \setcounter{section}{0}%
	 % \setcounter{subsection}{0}%
	% \gdef\thesection{\appendixname\@Alph\c@section}}		
% 重定义参考文献环境
\renewenvironment{thebibliography}[1]
     {\section*{\refname}%
      \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}	



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Initialization
 %%%数学定理相关的常量
\newcommand*{\hitreport@cap@definition}{定义}
\newcommand*{\hitreport@cap@theorem}{定理}
\newcommand*{\hitreport@cap@lemma}{引理}
\newcommand*{\hitreport@cap@corollary}{推论}
\newcommand*{\hitreport@cap@assumption}{假设}
\newcommand*{\hitreport@cap@conjecture}{猜想}
\newcommand*{\hitreport@cap@axiom}{公理}
\newcommand*{\hitreport@cap@principle}{定律}
\newcommand*{\hitreport@cap@problem}{问题}
\newcommand*{\hitreport@cap@example}{例}
\newcommand*{\hitreport@cap@proof}{证明}
\newcommand*{\hitreport@cap@solution}{解}
 %%%  中文标题名称
\newcommand*{\hitreport@cap@contentsname}{目录}
\newcommand*{\hitreport@cap@listfigurename}{插图清单}
\newcommand*{\hitreport@cap@listtablename}{附表清单}
\newcommand*{\hitreport@cap@refname}{参考文献}
\newcommand*{\hitreport@cap@indexname}{索引}
\newcommand*{\hitreport@cap@figurename}{图}
\newcommand*{\hitreport@cap@tablename}{表}
\newcommand*{\hitreport@cap@appendixname}{附录}
\newcommand*{\hitreport@cap@abstractname}{摘要}
 %%%  中文关键字
\newcommand*{\hitreport@cap@keywordsname}{关键字}

\endinput
