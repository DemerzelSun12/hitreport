%%
%% This is file `hitreport.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% hitreport.dtx  (with options: `cls')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2021 by Xiao Sun <demerzelsun@gmail.com>
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3c
%% of this license or (at your option) any later version.
%% The latest version of this license is in:
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 

\NeedsTeXFormat{LaTeX2e}[2017/04/15]
\ProvidesClass{hitreport}
[2020/12/31 v1.1 Standard LaTeX Template for hitreport]
\newcommand\hit@error[1]{%
  \ClassError{hitreport}{#1}{}%
}
\newcommand\hit@warning[1]{%
  \ClassWarning{hitreport}{#1}%
}
\newcommand\hit@patch@error[1]{%
  \hit@error{Failed to patch command \protect#1}%
}
\newcommand\hit@deprecate[2]{%
  \def\hit@@tmp{#2}%
  \hit@warning{%
    The #1 is deprecated%
    \ifx\hit@@tmp\@empty\else
      . Use #2 instead%
    \fi
  }%
}
\@ifl@t@r\fmtversion{2017/04/15}{}{
  \hit@error{%
    TeX Live 2017 or later version is required to compile this document%
  }
}
\RequirePackage{ifxetex}
\RequireXeTeX
\ifxetex\else
\ClassError{hitreport}{You must use the `xelatex' driver\MessageBreak
Please choose `xelatex'}{Just choose `xelatex', no `pdflatex' or `latex' and so on.}
\fi
\RequirePackage{kvdefinekeys}
\RequirePackage{kvsetkeys}
\RequirePackage{kvoptions}
\SetupKeyvalOptions{
  family=hit,
  prefix=hit@,
  setkeys=\kvsetkeys}
\newcommand\hitsetup[1]{%
  \kvsetkeys{hit}{#1}%
}
\newcommand\hit@define@key[1]{%
  \kvsetkeys{hit@key}{#1}%
}
\kv@set@family@handler{hit@key}{%
  \@namedef{hit@#1@@name}{#1}%
  \def\hit@@default{}%
  \def\hit@@choices{}%
  \kv@define@key{hit@value}{name}{%
    \@namedef{hit@#1@@name}{##1}%
  }%
  \@namedef{hit@#1@@check}{}%
  \@namedef{hit@#1@@code}{}%
  \kv@define@key{hit@value}{choices}{%
    \def\hit@@choices{##1}%
    \@namedef{hit@#1@@reset}{}%
    \@namedef{hit@#1@@check}{%
      \@ifundefined{%
        ifhit@\@nameuse{hit@#1@@name}@\@nameuse{hit@\@nameuse{hit@#1@@name}}%
      }{%
        \hit@error{Invalid value "#1 = \@nameuse{hit@\@nameuse{hit@#1@@name}}"}%
      }%
      \@nameuse{hit@#1@@reset}%
      \@nameuse{hit@\@nameuse{hit@#1@@name}@\@nameuse{hit@\@nameuse{hit@#1@@name}}true}%
    }%
  }%
  \kv@define@key{hit@value}{default}{%
    \def\hit@@default{##1}%
  }%
  \kvsetkeys{hit@value}{#2}%
  \@namedef{hit@\@nameuse{hit@#1@@name}}{}%
  \kv@set@family@handler{hit@choice}{%
    \ifx\hit@@default\@empty
      \def\hit@@default{##1}%
    \fi
    \expandafter\newif\csname ifhit@\@nameuse{hit@#1@@name}@##1\endcsname
    \expandafter\g@addto@macro\csname hit@#1@@reset\endcsname{%
      \@nameuse{hit@\@nameuse{hit@#1@@name}@##1false}%
    }%
  }%
  \kvsetkeys@expandafter{hit@choice}{\hit@@choices}%
  \expandafter\let\csname hit@\@nameuse{hit@#1@@name}\endcsname\hit@@default
  \expandafter\ifx\csname hit@\@nameuse{hit@#1@@name}\endcsname\@empty\else
    \@nameuse{hit@#1@@check}%
  \fi
  \kv@define@key{hit}{#1}{%
    \@namedef{hit@\@nameuse{hit@#1@@name}}{##1}%
    \@nameuse{hit@#1@@check}%
    \@nameuse{hit@#1@@code}%
  }%
}
\newcommand\hit@option@hook[2]{%
  \expandafter\g@addto@macro\csname hit@#1@@code\endcsname{#2}%
}
\hit@define@key{
  campus = {
    name = campus,
    choices = {
      harbin,
      shenzhen,
      weihai,
    },
  },
  fontset = {
    choices = {
      windows,
      mac,
      ubuntu,
      fandol,
      none,
    },
    default = none,
  },
  system = {
    choices = {
      mac,
      unix,
      windows,
      auto,
    },
    default = auto,
  },
  font = {
    choices = {
      times,
      termes,
      xits,
      libertinus,
      lm,
      auto,
      none,
    },
    default = auto,
  },
  cjk-font = {
    name = cjk@font,
    choices = {
      windows,
      mac,
      noto,
      fandol,
      auto,
      none,
    },
    default = auto,
  },
  math-font = {
    name = math@font,
    choices = {
      xits,
      stix,
      libertinus,
      lm,
      none,
    },
    default = xits,
  },
  math-style = {
    name = math@style,
    choices = {
      GB,
      ISO,
      TeX,
    },
    default = GB,
  },
}
\newcommand\hit@tokens@keywords{}
\ProcessOptions\relax
\DeclareBoolOption[false]{openright}
\DeclareComplementaryOption{openany}{openright}
\DeclareBoolOption[true]{raggedbottom}
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessKeyvalOptions*
\ifhit@openright
  \PassOptionsToClass{openright}{book}
\else
  \PassOptionsToClass{openany}{book}
\fi
\PassOptionsToPackage{quiet}{fontspec}
\LoadClass[a4paper,UTF8,zihao=-4,scheme=plain,fontset=none]{ctexbook}[2017/04/01]
\RequirePackage{etoolbox}
\RequirePackage{filehook}
\RequirePackage{xparse}
\RequirePackage{geometry}
\geometry{
  paper          = a4paper,  % 210 * 297mm
  marginparwidth = 2cm,
  marginparsep   = 0.5cm,
}
\newcommand\hit@set@geometry{%
  \geometry{
    margin     = 3cm,
    headheight = 0.5cm,
    headsep    = 0.3cm,
    footskip   = 0.8cm,
  }%
}
\hit@set@geometry
\RequirePackage{fancyhdr}
\RequirePackage{titletoc}
\RequirePackage{notoccite}
\RequirePackage{amsmath}
\RequirePackage{unicode-math}
\RequirePackage{tikz}
\RequirePackage{pdfpages}
\includepdfset{fitpaper=true}
\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage[labelformat=simple]{subcaption}
\RequirePackage{hyperref}
\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{threeparttable}
\RequirePackage{bigstrut}
\RequirePackage{bigdelim}
\RequirePackage{listings}
\RequirePackage{xcolor}
\RequirePackage{url}
\PassOptionsToPackage{chapter}{algorithm}
\AtEndOfPackageFile*{algorithm}{
  \floatname{algorithm}{\thu@algorithm@name}
  \renewcommand\listofalgorithms{%
    \hit@listof{algorithm}%
  }
  \renewcommand\listalgorithmname{\hit@list@algorithm@name}
  \def\ext@algorithm{loa}
  \contentsuse{algorithm}{loa}
  \titlecontents{algorithm}
    [\z@]{}
    {\contentspush{\fname@algorithm~\thecontentslabel\quad}}{}
    {\hit@leaders\thecontentspage}
}
\PassOptionsToPackage{algochapter}{algorithm2e}
\AtEndOfPackageFile*{algorithm2e}{
  \renewcommand\algorithmcfname{\hit@algorithm@name}
  \SetAlgoCaptionLayout{thu@caption@font}
  \SetAlCapSty{relax}
  \SetAlgoCaptionSeparator{\hspace*{1em}}
  \SetAlFnt{\fontsize{11bp}{14.3bp}\selectfont}
  \renewcommand\listofalgorithms{%
    \hit@listof{algorithmcf}%
  }
  \renewcommand\listalgorithmcfname{\hit@list@algorithm@name}
  \def\ext@algorithmcf{loa}
  \contentsuse{algocf}{loa}
  \titlecontents{algocf}
    [\z@]{}
    {\contentspush{\algorithmcfname~\thecontentslabel\quad}}{}
    {\hit@leaders\thecontentspage}
}
\AtEndOfPackageFile*{minted}{
  \newcommand\hit@set@listing@language{%
    \floatname{listing}{代码}%
  }
  \hit@set@listing@language
}
\AtEndPreamble{
  \@ifpackageloaded{biblatex}{}{
    \@ifpackageloaded{apacite}{}{
      \RequirePackage{natbib}
    }
  }
}
\AtEndOfPackageFile*{natbib}{
  \@ifpackageloaded{apacite}{}{
    \RequirePackage{bibunits}
  }
}
\newcommand\hit@package@conflict[2]{
  \AtBeginOfPackageFile*{#2}{
    \hit@error{The "#2" package is incompatible with required "#1"}
  }
}
\hit@package@conflict{unicode-math}{amscd}
\hit@package@conflict{unicode-math}{amsfonts}
\hit@package@conflict{unicode-math}{amssymb}
\hit@package@conflict{unicode-math}{bbm}
\hit@package@conflict{unicode-math}{bm}
\hit@package@conflict{unicode-math}{eucal}
\hit@package@conflict{unicode-math}{eufrak}
\hit@package@conflict{unicode-math}{mathrsfs}
\RequirePackage{cite}
\RequirePackage{listings}
\lstset{
    numbers=left, %设置行号位置
    numberstyle=\tiny, %设置行号大小
    keywordstyle=\color{blue}, %设置关键字颜色
    commentstyle=\color[cmyk]{1,0,1,0}, %设置注释颜色
    frame=single, %设置边框格式
    escapeinside=``, %逃逸字符(1左面的键)，用于显示中文
    breaklines, %自动折行
    extendedchars=false, %解决代码跨页时，章节标题，页眉等汉字不显示的问题
    xleftmargin=2em,
    xrightmargin=2em,
    aboveskip=1em, %设置边距
    tabsize=4, %设置tab空格数
    showspaces=false, %不显示空格
    belowskip=3mm,
    showstringspaces=false,columns=flexible,
    framerule=1pt,
    rulecolor=\color{gray!35},
    backgroundcolor=\color{gray!5},
    basicstyle={\small\ttfamily},
    stringstyle=\color{mauve},
    breakatwhitespace=true
}
\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}
\RequirePackage{indentfirst}
\RequirePackage{caption}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage{environ}
\ifhit@raggedbottom
  \RequirePackage[bottom,perpage,hang]{footmisc}
  \raggedbottom
\else
  \RequirePackage[perpage,hang]{footmisc}
\fi
\RequirePackage{xeCJKfntef}
\RequirePackage{soul}
\RequirePackage{ulem}
\RequirePackage{calc}
\RequirePackage[titletoc,title]{appendix}
\AtBeginEnvironment{thebibliography}{%
    \phantomsection
    \addcontentsline{toc}{section}{\refname}
    }
\let\hitreport@oldtabular\tabular
\let\hitreport@endoldtabular\endtabular
\renewenvironment{tabular}%
{\bgroup%
\renewcommand{\arraystretch}{1.2}%
\hitreport@oldtabular}%
{\hitreport@endoldtabular\egroup}
\setlength\parindent{2em}
\def\cleardoublepage{%
  \clearpage
  \if@twoside
    \ifodd\c@page
    \fi
  \fi
}
\renewcommand\frontmatter{%
  \cleardoublepage
  \@mainmatterfalse
  \pagenumbering{Roman}%
}
\renewcommand\mainmatter{%
  \cleardoublepage
  \@mainmattertrue
  \pagenumbering{arabic}%
}
\renewcommand\backmatter{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \@mainmatterfalse
}
\ifhit@fontset@mac
  \hitsetup{
    font     = times,
    cjk-font = mac,
  }
\else
  \ifhit@fontset@windows
    \hitsetup{
      font     = times,
      cjk-font = windows,
    }
  \else
    \ifhit@fontset@fandol
      \hitsetup{
        font     = termes,
        cjk-font = fandol,
      }
    \else
      \ifhit@fontset@ubuntu
        \hitsetup{
          font     = termes,
          cjk-font = noto,
        }
      \fi
    \fi
  \fi
\fi
\ifhit@system@auto
  \IfFileExists{/System/Library/Fonts/Menlo.ttc}{
    \hitsetup{system = mac}
  }{
    \IfFileExists{/dev/null}{
      \IfFileExists{null:}{
        \hitsetup{system = windows}
      }{
        \hitsetup{system = unix}
      }
    }{
      \hitsetup{system = windows}
    }
  }
\fi
\let\hit@font@family@xits\@empty
\newcommand\hit@set@xits@names{%
  \ifx\hit@font@family@xits\@empty
    \IfFontExistsTF{XITSMath-Regular.otf}{%
      \gdef\hit@font@family@xits{XITS}%
      \gdef\hit@font@style@xits@rm{Regular}%
      \gdef\hit@font@style@xits@bf{Bold}%
      \gdef\hit@font@style@xits@it{Italic}%
      \gdef\hit@font@style@xits@bfit{BoldItalic}%
      \gdef\hit@font@name@xits@math@rm{XITSMath-Regular}%
      \gdef\hit@font@name@xits@math@bf{XITSMath-Bold}%
    }{%
      \gdef\hit@font@family@xits{xits}%
      \gdef\hit@font@style@xits@rm{regular}%
      \gdef\hit@font@style@xits@bf{bold}%
      \gdef\hit@font@style@xits@it{italic}%
      \gdef\hit@font@style@xits@bfit{bolditalic}%
      \gdef\hit@font@name@xits@math@rm{xits-math}%
      \gdef\hit@font@name@xits@math@bf{xits-mathbold}%
    }%
  \fi
}
\let\hit@font@family@libertinus\@empty
\newcommand\hit@set@libertinus@names{%
  \ifx\hit@font@family@libertinus\@empty
    \IfFontExistsTF{LibertinusSerif-Regular.otf}{%
      \gdef\hit@font@family@libertinus@serif{LibertinusSerif}%
      \gdef\hit@font@family@libertinus@sans{LibertinusSans}%
      \gdef\hit@font@name@libertinus@math{LibertinusMath-Regular}%
      \gdef\hit@font@style@libertinus@rm{Regular}%
      \gdef\hit@font@style@libertinus@bf{Bold}%
      \gdef\hit@font@style@libertinus@it{Italic}%
      \gdef\hit@font@style@libertinus@bfit{BoldItalic}%
    }{%
      \gdef\hit@font@family@libertinus@serif{libertinusserif}%
      \gdef\hit@font@family@libertinus@sans{libertinussans}%
      \gdef\hit@font@name@libertinus@math{libertinusmath-regular}%
      \gdef\hit@font@style@libertinus@rm{regular}%
      \gdef\hit@font@style@libertinus@bf{bold}%
      \gdef\hit@font@style@libertinus@it{italic}%
      \gdef\hit@font@style@libertinus@bfit{bolditalic}%
    }%
  \fi
}
\ifhit@font@auto
  \ifhit@system@unix
    \hitsetup{font=termes}
  \else
    \hitsetup{font=times}
  \fi
\fi
\newcommand\hit@load@font@times{%
  \setmainfont{Times New Roman}%
  \setsansfont{Arial}%
  \ifhit@system@mac
    \setmonofont{Menlo}[Scale = MatchLowercase]%
  \else
    \setmonofont{Courier New}[Scale = MatchLowercase]%
  \fi
}
\newcommand\hit@load@font@termes{%
  \setmainfont{texgyretermes}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
  ]%
  \hit@load@texgyre@sans@mono
}
\newcommand\hit@load@texgyre@sans@mono{%
  \setsansfont{texgyreheros}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
  ]%
  \setmonofont{texgyrecursor}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
    Ligatures      = CommonOff,
  ]%
}
\newcommand\hit@load@font@xits{%
  \hit@set@xits@names
  \setmainfont{\hit@font@family@xits}[
    Extension      = .otf,
    UprightFont    = *-\hit@font@style@xits@rm,
    BoldFont       = *-\hit@font@style@xits@bf,
    ItalicFont     = *-\hit@font@style@xits@it,
    BoldItalicFont = *-\hit@font@style@xits@bfit,
  ]%
  \hit@load@texgyre@sans@mono
}
\newcommand\hit@load@font@libertinus{%
  \hit@set@libertinus@names
  \setmainfont{\hit@font@family@libertinus@serif}[
    Extension      = .otf,
    UprightFont    = *-\hit@font@style@libertinus@rm,
    BoldFont       = *-\hit@font@style@libertinus@bf,
    ItalicFont     = *-\hit@font@style@libertinus@it,
    BoldItalicFont = *-\hit@font@style@libertinus@bfit,
  ]%
  \setsansfont{\hit@font@family@libertinus@sans}[
    Extension      = .otf,
    UprightFont    = *-\hit@font@style@libertinus@rm,
    BoldFont       = *-\hit@font@style@libertinus@bf,
    ItalicFont     = *-\hit@font@style@libertinus@it,
  ]%
  \setmonofont{lmmonolt10}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-oblique,
    BoldItalicFont = *-boldoblique,
  ]%
}
\@namedef{hit@load@font@lm}{%
  \setmainfont{lmroman10}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
  ]%
  \setsansfont{lmsans10}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-oblique,
    BoldItalicFont = *-boldoblique,
  ]%
  \setmonofont{lmmonolt10}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-oblique,
    BoldItalicFont = *-boldoblique,
  ]%
}
\newcommand\hit@load@font{%
  \@nameuse{hit@load@font@\hit@font}%
}
\hit@load@font
\hit@option@hook{font}{\hit@load@font}
\newcommand\hit@stix@stylistic@set{%
  \ifhit@math@style@TeX\else
    8
  \fi
}
\newcommand\hit@set@math@style{%
  \ifhit@math@style@TeX
    \unimathsetup{
      math-style = TeX,
      bold-style = TeX,
      partial    = italic,
    }%
  \else
    \unimathsetup{
      math-style = ISO,
      bold-style = ISO,
      partial    = upright,
    }%
  \fi
  \ifhit@math@style@GB
    \protected\def\le{\leqslant}%
    \protected\def\ge{\geqslant}%
    \DeclareRobustCommand\mathellipsis{\mathinner{\unicodecdots}}%
  \else
    \protected\def\le{\leq}%
    \protected\def\ge{\geq}%
    \DeclareRobustCommand\mathellipsis{\mathinner{\unicodeellipsis}}%
  \fi
}
\hitsetup{math-style=GB}%
\hit@set@math@style
\hit@option@hook{math-style}{\hit@set@math@style}
\newcommand\hit@load@math@font@xits{%
  \hit@set@xits@names
  \setmathfont{\hit@font@name@xits@math@rm}[
    Extension    = .otf,
    StylisticSet = \hit@stix@stylistic@set,
  ]%
  \setmathfont{\hit@font@name@xits@math@rm}[
    Extension    = .otf,
    StylisticSet = 1,
    range        = {cal,bfcal},
  ]%
}
\newcommand\hit@load@math@font@stix{%
  \setmathfont{STIX2Math}[
    Extension    = .otf,
    StylisticSet = \hit@stix@stylistic@set,
  ]%
  \setmathfont{STIX2Math}[
    Extension    = .otf,
    StylisticSet = 1,
    range        = {cal,bfcal},
  ]%
}
\newcommand\hit@load@math@font@libertinus{%
  \hit@set@libertinus@names
  \setmathfont{\hit@font@name@libertinus@math .otf}%
}
\newcommand\hit@load@math@font@lm{%
  \setmathfont{latinmodern-math.otf}%
}
\newcommand\hit@load@math@font{%
  \@nameuse{hit@load@math@font@\hit@math@font}
}
\hit@load@math@font
\hit@option@hook{math-font}{\hit@load@math@font}
\hit@option@hook{math-style}{\hit@load@math@font}
\ifhit@cjk@font@auto
  \ifhit@system@mac
    \hitsetup{cjk-font = mac}
  \else
    \ifhit@system@windows
      \hitsetup{cjk-font = windows}
    \else
      \IfFontExistsTF{Noto Serif CJK SC}{
        \hitsetup{cjk-font = noto}
      }{
        \hitsetup{cjk-font = fandol}
      }
    \fi
  \fi
\fi
\newcommand\hit@load@cjk@font@windows{%
  \xeCJKsetup{EmboldenFactor=3}%
  \setCJKmainfont{SimSun}[
    AutoFakeBold = true,
    ItalicFont   = KaiTi,
  ]%
  \setCJKsansfont{SimHei}[AutoFakeBold]%
  \setCJKmonofont{FangSong}%
  \setCJKfamilyfont{zhsong}{SimSun}[AutoFakeBold]%
  \setCJKfamilyfont{zhhei}{SimHei}[AutoFakeBold]%
  \setCJKfamilyfont{zhkai}{KaiTi}%
  \setCJKfamilyfont{zhfs}{FangSong}%
  \setCJKfamilyfont{hwxk}{STXingkai}%
}
\newcommand\hit@load@cjk@font@mac{%
  \setCJKmainfont{Songti SC}[
    UprightFont    = * Light,
    BoldFont       = * Bold,
    ItalicFont     = Kaiti SC,
    BoldItalicFont = Kaiti SC Bold,
  ]%
  \setCJKsansfont{Heiti SC}[BoldFont=* Medium]%
  \setCJKmonofont{STFangsong}
  \setCJKfamilyfont{zhsong}{Songti SC}[
    UprightFont = * Light,
      BoldFont  = * Bold,
  ]%
  \setCJKfamilyfont{zhhei}{Heiti SC}[
    UprightFont = * Light,
    BoldFont    = * Medium,
  ]%
  \setCJKfamilyfont{zhfs}{STFangsong}%
  \setCJKfamilyfont{hwxk}{STXingkai}%
  \setCJKfamilyfont{zhkai}{Kaiti SC}[BoldFont = * Bold]%
  \setCJKfamilyfont{zhli}{Baoli SC}%
  \setCJKfamilyfont{zhyuan}{Yuanyi SC}[
    UprightFont = * Light,
    BoldFont    = * Bold,
  ]%
}
\newcommand\hit@load@cjk@font@noto{%
  \setCJKmainfont{Noto Serif CJK SC}[
    UprightFont    = * Light,
    BoldFont       = * Bold,
    ItalicFont     = FandolKai-Regular,
    ItalicFeatures = {Extension = .otf},
  ]%
  \setCJKsansfont{Noto Sans CJK SC}[
    BoldFont    = * Medium,
  ]%
  \setCJKmonofont{Noto Sans Mono CJK SC}%
  \setCJKfamilyfont{zhsong}{Noto Serif CJK SC}[
    UprightFont = * Light,
    UprightFont = * Bold,
  ]%
  \setCJKfamilyfont{zhhei}{Noto Sans CJK SC}[
    BoldFont    = * Medium,
  ]%
  \setCJKfamilyfont{zhfs}{FandolFang}[
    Extension   = .otf,
    UprightFont = *-Regular,
  ]%
  \setCJKfamilyfont{zhkai}{FandolKai}[
    Extension   = .otf,
    UprightFont = *-Regular,
  ]%
  \setCJKfamilyfont{hwxk}{STXingkai}[
    Extension   = .otf,
    UprightFont = *-Regular,
  ]%
}
\newcommand\hit@load@cjk@font@fandol{%
  \setCJKmainfont{FandolSong}[
    Extension   = .otf,
    UprightFont = *-Regular,
    BoldFont    = *-Bold,
    ItalicFont  = FandolKai-Regular,
  ]%
  \setCJKsansfont{FandolHei}[
    Extension   = .otf,
    UprightFont = *-Regular,
    BoldFont    = *-Bold,
  ]%
  \setCJKmonofont{FandolFang}[
    Extension   = .otf,
    UprightFont = *-Regular,
  ]%
  \setCJKfamilyfont{zhsong}{FandolSong}[
    Extension   = .otf,
    UprightFont = *-Regular,
    BoldFont    = *-Bold,
  ]%
  \setCJKfamilyfont{zhhei}{FandolHei}[
    Extension   = .otf,
    UprightFont = *-Regular,
    BoldFont    = *-Bold,
  ]%
  \setCJKfamilyfont{zhfs}{FandolFang}[
    Extension   = .otf,
    UprightFont = *-Regular,
  ]%
  \setCJKfamilyfont{zhkai}{FandolKai}[
    Extension   = .otf,
    UprightFont = *-Regular,
  ]%
  \setCJKfamilyfont{hwxk}{FandolKai}[
    Extension   = .otf,
    UprightFont = *-Regular,
  ]%
}
\ifhit@cjk@font@none\else
  \providecommand\songti{\CJKfamily{zhsong}}
  \providecommand\heiti{\CJKfamily{zhhei}}
  \providecommand\fangsong{\CJKfamily{zhfs}}
  \providecommand\kaishu{\CJKfamily{zhkai}}
  \providecommand\huawenxingkai{\CJKfamily{hwxk}}
\fi
\newcommand\hit@load@cjk@font{%
  \@nameuse{hit@load@cjk@font@\hit@cjk@font}%
}
\hit@load@cjk@font
\hit@option@hook{cjk-font}{\hit@load@cjk@font}
\renewcommand\normalsize{%
  \@setfontsize\normalsize{12bp}{20bp}%
  \abovedisplayskip 6bp%
  \abovedisplayshortskip 6bp%
  \belowdisplayskip 6bp
  \belowdisplayshortskip \abovedisplayshortskip}

\normalsize
\ifx\MakeRobust\@undefined \else
    \MakeRobust\normalsize
\fi
\DeclareRobustCommand\small{%
   \@setfontsize\small{10.5bp}{17.5bp}%
   \abovedisplayskip 6bp%
   \abovedisplayshortskip 6bp%
   \belowdisplayshortskip 6bp%
   \def\@listi{\leftmargin\leftmargini
               \topsep \z@skip
               \parsep \z@skip
               \itemsep \z@skip}%
   \belowdisplayskip \abovedisplayskip
}
\DeclareRobustCommand\footnotesize{%
   \@setfontsize\footnotesize{9bp}{15bp}%
   \abovedisplayskip 6bp%
   \abovedisplayshortskip 6bp%
   \belowdisplayshortskip 6bp%
   \def\@listi{\leftmargin\leftmargini
               \topsep \z@skip
               \parsep \z@skip
               \itemsep \z@skip}%
   \belowdisplayskip \abovedisplayskip
}
\DeclareRobustCommand\scriptsize{\@setfontsize\scriptsize{7.5bp}{12.5bp}}
\DeclareRobustCommand\tiny{\@setfontsize\tiny{6.5bp}{10.83bp}}
\DeclareRobustCommand\large{\@setfontsize\large{15bp}{25bp}}
\DeclareRobustCommand\Large{\@setfontsize\Large{18bp}{30bp}}
\DeclareRobustCommand\LARGE{\@setfontsize\LARGE{22bp}{36.67bp}}
\DeclareRobustCommand\huge{\@setfontsize\huge{24bp}{40bp}}
\DeclareRobustCommand\Huge{\@setfontsize\Huge{26bp}{43.33bp}}
\def\hit@def@fontsize#1#2{%
  \expandafter\newcommand\csname #1\endcsname[1][1.3]{%
    \fontsize{#2}{##1\dimexpr #2}\selectfont}}
\hit@def@fontsize{chuhao}{42bp}
\hit@def@fontsize{xiaochu}{36bp}
\hit@def@fontsize{yihao}{26bp}
\hit@def@fontsize{xiaoyi}{24bp}
\hit@def@fontsize{erhao}{22bp}
\hit@def@fontsize{xiaoer}{18bp}
\hit@def@fontsize{sanhao}{16bp}
\hit@def@fontsize{xiaosan}{15bp}
\hit@def@fontsize{sihao}{14bp}
\hit@def@fontsize{xiaosi}{12bp}
\hit@def@fontsize{wuhao}{10.5bp}
\hit@def@fontsize{xiaowu}{9bp}
\hit@def@fontsize{liuhao}{7.5bp}
\hit@def@fontsize{xiaoliu}{6.5bp}
\hit@def@fontsize{qihao}{5.5bp}
\hit@def@fontsize{bahao}{5bp}
\newcommand\hit@set@chapter@names{%
  \ctexset{
    chapter/name   = {第,章},
  }%
  \def\bibname{参考文献}%
  \def\appendixname{附录}%
  \def\indexname{索引}%
  \def\contentsname{目\quad 录}%
  \def\listfigurename{插图索引}%
  \def\listtablename{表格索引}%
  \def\hit@list@figure@table@name{插图和附表索引}%
  \def\hit@list@algorithm@name{算法索引}%
  \def\listequationname{公式索引}%
}
\hit@set@chapter@names
\newcommand\hit@set@names{%
  \ctexset{
    figurename = 图,
    tablename  = 表,
  }%
  \def\hit@algorithm@name{算法}%
  \def\hit@equation@name{公式}%
  \def\hit@assumption@name{假设}%
  \def\hit@definition@name{定义}%
  \def\hit@proposition@name{命题}%
  \def\hit@lemma@name{引理}%
  \def\hit@theorem@name{定理}%
  \def\hit@axiom@name{公理}%
  \def\hit@corollary@name{推论}%
  \def\hit@exercise@name{练习}%
  \def\hit@example@name{例}%
  \def\hit@remark@name{注释}%
  \def\hit@problem@name{问题}%
  \def\hit@conjecture@name{猜想}%
  \def\hit@proof@name{证明}%
  \def\hit@theorem@separator{：}%
}
\hit@set@names
\xeCJKDeclareCharClass{CJK}{"2460 -> "2473}
\xeCJKDeclareCharClass{CJK}{"2605}
\newcommand\hit@set@punctuations{%
  \xeCJKDeclareCharClass{FullLeft}{"2018, "201C}%
  \xeCJKDeclareCharClass{FullRight}{
    "00B7, "2019, "201D, "2013, "2014, "2025, "2026, "2E3A,
  }%
}
\hit@set@punctuations
\pagestyle{fancy}
\fancypagestyle{plain}{%
  \fancyhf{}%
  \renewcommand\footrulewidth{0pt}%
    \renewcommand\headrulewidth{0.75bp}%
    \fancyhead[C]{%
      \wuhao
      \leftmark
      }%
    \fancyfoot[C]{\wuhao\thepage}%
    \let\@mkboth\markboth
    \def\chaptermark##1{%
      \markboth{\CTEXifname{\CTEXthechapter\quad}{}##1}{}%
    }%
  \let\sectionmark\@gobble
}
\pagestyle{plain}
\ctexset{chapter/pagestyle = plain}
\ctexset{%
  punct=quanjiao,
  space=auto,
}
\newcommand\hit@set@indent{%
    \ctexset{autoindent=2}%
}
\hit@set@indent
\urlstyle{same}
\g@addto@macro\UrlBreaks{%
  \do0\do1\do2\do3\do4\do5\do6\do7\do8\do9%
  \do\A\do\B\do\C\do\D\do\E\do\F\do\G\do\H\do\I\do\J\do\K\do\L\do\M
  \do\N\do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V\do\W\do\X\do\Y\do\Z
  \do\a\do\b\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j\do\k\do\l\do\m
  \do\n\do\o\do\p\do\q\do\r\do\s\do\t\do\u\do\v\do\w\do\x\do\y\do\z
}
\Urlmuskip=0mu plus 0.1mu
\partopsep=\z@skip
\def\@listi{\leftmargin\leftmargini
            \parsep \z@skip
            \topsep \z@skip
            \itemsep\z@skip}
\let\@listI\@listi
\@listi
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    \z@skip
              \parsep    \z@skip
              \itemsep   \z@skip}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    \z@skip
              \parsep    \z@skip
              \partopsep \z@skip
              \itemsep   \z@skip}
\setlist{nosep}
\newcommand\hit@circled[1]{%
  \ifnum#1 >10\relax
    \hit@error{%
      Too many footnotes in this page.
      Keep footnote less than 10%
    }%
  \fi
  {\symbol{\the\numexpr#1+"245F\relax}}%
}
\renewcommand{\thefootnote}{\hit@circled{\c@footnote}}
\renewcommand{\thempfootnote}{\hit@circled{\c@mpfootnote}}
\def\footnoterule{\vskip-3\p@\hrule\@width0.3\textwidth\@height0.4\p@\vskip2.6\p@}
\footnotemargin=13.5bp
\long\def\@makefntext#1{%
  \begingroup
    % 序号取消上标
    \def\@makefnmark{\hbox{\normalfont\@thefnmark}}%
    \xiaowu
    \ifFN@hangfoot
      \bgroup
      \setbox\@tempboxa\hbox{%
        \ifdim\footnotemargin>\z@
          \hb@xt@\footnotemargin{\@makefnmark\hss}%
        \else
          \@makefnmark
        \fi
      }%
      \leftmargin\wd\@tempboxa
      \rightmargin\z@
      \linewidth \columnwidth
      \advance \linewidth -\leftmargin
      \parshape \@ne \leftmargin \linewidth
      % \footnotesize
      \xiaowu
      \@setpar{{\@@par}}%
      \leavevmode
      \llap{\box\@tempboxa}%
      \parskip\hangfootparskip\relax
      \parindent\hangfootparindent\relax
    \else
      \parindent1em%
      \noindent
      \ifdim\footnotemargin>\z@
        \hb@xt@ \footnotemargin{\hss\@makefnmark}%
      \else
        \ifdim\footnotemargin=\z@
          \llap{\@makefnmark}%
        \else
          \llap{\hb@xt@ -\footnotemargin{\@makefnmark\hss}}%
        \fi
      \fi
    \fi
    \footnotelayout#1%
    \ifFN@hangfoot
      \par\egroup
    \fi
  \endgroup
}
\hit@define@key{
  keywords,
}
\newcommand\hit@clist@use[2]{%
  \def\hit@@tmp{}%
  \def\hit@clist@processor##1{%
    \ifx\hit@@tmp\@empty
      \def\hit@@tmp{#2}%
    \else
      #2%
    \fi
    ##1%
  }%
  \expandafter\comma@parse\expandafter{#1}{\hit@clist@processor}%
}
\newenvironment{abstract}{%
  \cleardoublepage
  \begingroup
    \hit@chapter*{\hit@abstract@name}%
  \endgroup
}{%
  \par
  \null\par
    \textbf{关键词：}%
  \hit@clist@use{\hit@keywords}{；}%
    \cleardoublepage
}
\DeclareRobustCommand\bm[1]{{\symbf{#1}}}
\DeclareRobustCommand\boldsymbol[1]{{\symbf{#1}}}
\newcommand\square{\mdlgwhtsquare}
\AtBeginDocument{%
  \renewcommand\checkmark{\ensuremath{✓}}%
}
\allowdisplaybreaks[4]
\def\fps@figure{h}
\def\fps@table{h}
\setlength{\floatsep}{6bp}
\setlength{\textfloatsep}{6bp}
\setlength{\intextsep}{6bp}
\setlength{\@fptop}{0bp \@plus1.0fil}
\setlength{\@fpsep}{12bp \@plus2.0fil}
\setlength{\@fpbot}{0bp \@plus1.0fil}
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}
\hit@define@key{
  figure-number-separator = {
    name    = figure@number@separator,
    default = {.},
  },
  table-number-separator = {
    name    = table@number@separator,
    default = {.},
  },
  equation-number-separator = {
    name    = equation@number@separator,
    default = {.},
  },
  number-separator = {
    name    = number@separator,
    default = {.},
  },
}
\renewcommand\thefigure{%
  \ifnum\c@chapter>\z@
    \thechapter
    \hit@figure@number@separator
  \fi
  \@arabic\c@figure
}
\renewcommand\thetable{%
  \ifnum\c@chapter>\z@
    \thechapter
    \hit@table@number@separator
  \fi
  \@arabic\c@table
}
\renewcommand\theequation{%
  \ifnum\c@chapter>\z@
    \thechapter
    \hit@equation@number@separator
  \fi
  \@arabic\c@equation
}
\newcommand\hit@set@number@separator{%
  \let\hit@figure@number@separator\hit@number@separator
  \let\hit@table@number@separator\hit@number@separator
  \let\hit@equation@number@separator\hit@number@separator
}
\hit@option@hook{number-separator}{\hit@set@number@separator}
\AtEndOfPackageFile*{longtable}{
  \AtBeginEnvironment{longtable}{%
  \fontsize{11bp}{20.3bp}\selectfont
  }
}
\DeclareCaptionFont{hit}{%
  \fontsize{11bp}{15bp}\selectfont
}
\captionsetup{
  font           = hit,
  labelsep       = quad,
  aboveskip      = 6bp,
  belowskip      = 6bp,
  figureposition = bottom,
  tableposition  = top,
}
\captionsetup[sub]{font=hit}
\renewcommand{\thesubfigure}{(\alph{subfigure})}
\renewcommand{\thesubtable}{(\alph{subtable})}
\heavyrulewidth=1.5bp
\lightrulewidth=1bp
\AtEndOfPackageFile*{threeparttable}{
  \g@addto@macro\TPT@defaults{\wuhao}
}
\newcommand{\hit@abstract@name}{摘 \quad 要}
\newcommand{\hit@abstract@name@en}{Abstract}
\ctexset{%
  chapter = {
    nameformat   = {},
    numberformat = {},
    titleformat  = {},
    fixskip      = true,
    afterindent  = true,
    lofskip      = 0pt,
    lotskip      = 0pt,
  },
  section = {
    afterindent  = true,
  },
  subsection = {
    afterindent  = true,
  },
  subsubsection = {
    afterindent  = true,
  },
  paragraph/afterindent = true,
  subparagraph/afterindent = true,
}
\newcommand\hit@set@section@format{%
    \ctexset{%
      chapter = {
        format     = \centering\sffamily\sanhao,
        nameformat  = {},
        titleformat = {},
        beforeskip = 27bp,
        afterskip  = 27bp,
        aftername  = \quad,
      },
      section = {
        format     = \sffamily\fontsize{14bp}{20bp}\selectfont,
        beforeskip = 24bp,
        afterskip  = 6bp,
        aftername  = \quad,
      },
      subsection = {
        format     = \sffamily\fontsize{13bp}{20bp}\selectfont,
        beforeskip = 12bp,
        afterskip  = 6bp,
        aftername  = \quad,
      },
      subsubsection = {
        format     = \sffamily\fontsize{12bp}{20bp}\selectfont,
        beforeskip = 12bp,
        afterskip  = 6bp,
        aftername  = \quad,
      },
    }%
    \ctexset{chapter/number = \thechapter}%
}
\hit@set@section@format
\newcommand\hit@pdfbookmark[2]{}
\newcommand\hit@phantomsection{}
\NewDocumentCommand\hit@chapter{s o m o}{%
  \IfBooleanF{#1}{%
    \hit@error{You have to use the star form: \string\hit@chapter*}%
  }%
  \if@openright\cleardoublepage\else\clearpage\fi%
  \IfValueTF{#2}{%
    \ifthenelse{\equal{#2}{}}{%
      \hit@pdfbookmark{0}{#3}%
    }{%
      \hit@phantomsection
      \addcontentsline{toc}{chapter}{#2}%
    }%
  }{%
    \hit@phantomsection
    \addcontentsline{toc}{chapter}{#3}%
  }%
  \ctexset{chapter/beforeskip=40bp}
  \chapter*{#3}%
  \ctexset{chapter/beforeskip=30bp}
  \IfValueTF{#4}{%
    \ifthenelse{\equal{#4}{}}{%
      \@mkboth{}{}%
    }{%
      \@mkboth{#4}{#4}%
    }%
  }{%
    \@mkboth{#3}{#3}%
  }%
}
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{2}
\renewcommand\tableofcontents{%
  \hit@chapter*[]{\contentsname}%
  \@starttoc{toc}%
}
\hit@define@key{
  toc-chapter-style = {
    name = toc@chapter@style,
    choices = {
      arial,
      times,
    },
    default = arial,
  },
}
\newcommand\hit@leaders{\titlerule*[4bp]{.}}
\newcommand\hit@set@toc@format{%
  \contentsmargin{\z@}%
\titlecontents{chapter}
  [\z@]{\addvspace{6bp}\sffamily}
  {\contentspush{\thecontentslabel\quad}}{}
  {\rmfamily\hit@leaders\thecontentspage}%
\titlecontents{section}
  [1em]{}
  {\contentspush{\thecontentslabel\quad}}{}
  {\hit@leaders\thecontentspage}%
\titlecontents{subsection}
  [2em]{}
  {\contentspush{\thecontentslabel\quad}}{}
  {\hit@leaders\thecontentspage}%
}
\hit@set@toc@format
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
\AtEndOfPackageFile*{amsthm}{%
  \newtheoremstyle{hit}
    {\z@}{\z@}
    {\normalfont}{\z@}
    {\normalfont\sffamily}{\hit@theorem@separator}
    {0.5em}{}
  \theoremstyle{hit}
  \newtheorem{assumption}{\hit@assumption@name}[chapter]%
  \newtheorem{definition}{\hit@definition@name}[chapter]%
  \newtheorem{proposition}{\hit@proposition@name}[chapter]%
  \newtheorem{lemma}{\hit@lemma@name}[chapter]%
  \newtheorem{theorem}{\hit@theorem@name}[chapter]%
  \newtheorem{axiom}{\hit@axiom@name}[chapter]%
  \newtheorem{corollary}{\hit@corollary@name}[chapter]%
  \newtheorem{exercise}{\hit@exercise@name}[chapter]%
  \newtheorem{example}{\hit@example@name}[chapter]%
  \newtheorem{remark}{\hit@remark@name}[chapter]%
  \newtheorem{problem}{\hit@problem@name}[chapter]%
  \newtheorem{conjecture}{\hit@conjecture@name}[chapter]%
  \renewenvironment{proof}[1][\hit@proof@name]{\par
    \pushQED{\qed}%
    % \normalfont \topsep6\p@\@plus6\p@\relax
    \normalfont \topsep\z@\relax
    \trivlist
    \item[\hskip\labelsep
      %     \itshape
      % #1\@addpunct{.}]\ignorespaces
      \sffamily
      #1\@addpunct{\hit@theorem@separator}]\ignorespaces
  }{%
    \popQED\endtrivlist\@endpefalse
  }
  \renewcommand\qedsymbol{\ensuremath{\QED}}
}
\AtEndOfPackageFile*{ntheorem}{%
  \theorembodyfont{\normalfont}%
  \theoremheaderfont{\normalfont\sffamily}%
  \theoremsymbol{\ensuremath{\QED}}%
  \newtheorem*{proof}{\hit@proof@name}%
  \theoremstyle{plain}%
  \theoremsymbol{}%
  \theoremseparator{\hit@theorem@separator}%
  \newtheorem{assumption}{\hit@assumption@name}[chapter]%
  \newtheorem{definition}{\hit@definition@name}[chapter]%
  \newtheorem{proposition}{\hit@proposition@name}[chapter]%
  \newtheorem{lemma}{\hit@lemma@name}[chapter]%
  \newtheorem{theorem}{\hit@theorem@name}[chapter]%
  \newtheorem{axiom}{\hit@axiom@name}[chapter]%
  \newtheorem{corollary}{\hit@corollary@name}[chapter]%
  \newtheorem{exercise}{\hit@exercise@name}[chapter]%
  \newtheorem{example}{\hit@example@name}[chapter]%
  \newtheorem{remark}{\hit@remark@name}[chapter]%
  \newtheorem{problem}{\hit@problem@name}[chapter]%
  \newtheorem{conjecture}{\hit@conjecture@name}[chapter]%
}
\PassOptionsToPackage{chapter}{algorithm}
\AtEndOfPackageFile*{algorithm}{
  \floatname{algorithm}{\hit@algorithm@name}
  \renewcommand\listofalgorithms{%
    \hit@listof{algorithm}%
  }
  \renewcommand\listalgorithmname{\hit@list@algorithm@name}
  \def\ext@algorithm{loa}
  \contentsuse{algorithm}{loa}
  \titlecontents{algorithm}
    [\z@]{}
    {\contentspush{\fname@algorithm~\thecontentslabel\quad}}{}
    {\hit@leaders\thecontentspage}
}
\PassOptionsToPackage{algochapter}{algorithm2e}
\AtEndOfPackageFile*{algorithm2e}{
  \renewcommand\algorithmcfname{\hit@algorithm@name}
  \SetAlgoCaptionLayout{hit@caption@font}
  \SetAlCapSty{relax}
  \SetAlgoCaptionSeparator{\hspace*{1em}}
  \SetAlFnt{\fontsize{11bp}{14.3bp}\selectfont}
  \renewcommand\listofalgorithms{%
    \hit@listof{algorithmcf}%
  }
  \renewcommand\listalgorithmcfname{\hit@list@algorithm@name}
  \def\ext@algorithmcf{loa}
  \contentsuse{algocf}{loa}
  \titlecontents{algocf}
    [\z@]{}
    {\contentspush{\algorithmcfname~\thecontentslabel\quad}}{}
    {\hit@leaders\thecontentspage}
}
\AtEndOfPackageFile*{minted}{
  \newcommand\hit@set@listing@language{%
    \floatname{listing}{代码}%
  }
  \hit@set@listing@language
}
\AtEndOfPackageFile*{hyperref}{
  \hypersetup{
    linktoc            = all,
    bookmarksnumbered  = true,
    bookmarksopen      = true,
    bookmarksopenlevel = 1,
    unicode            = true,
    psdextra           = true,
    breaklinks         = true,
    plainpages         = false,
    pdfdisplaydoctitle = true,
    hidelinks,
  }%
  \@ifpackagelater{hyperref}{2019/04/27}{}{%
    \g@addto@macro\psdmapshortnames{\let\mu\textmu}
  }%
  \hypersetup{
    pdflang = zh-CN,
  }%
  \AtBeginDocument{%
    \hypersetup{
      pdftitle    = \hit@title,
      pdfauthor   = \hit@author,
    }%
    \hypersetup{
      pdfcreator={hitreport-v1.0}}
  }%
}
\renewcommand*{\textfraction}{0.05}
\renewcommand*{\topfraction}{0.9}
\renewcommand*{\bottomfraction}{0.8}
\renewcommand*{\floatpagefraction}{0.85}
\DeclareGraphicsExtensions{.pdf,.eps,.jpg,.png}
\graphicspath{{figures/}{figure/}{pictures/}{picture/}{pic/}{pics/}{image/}{images/}}
\DeclareCaptionFont{song}{\songti}
\DeclareCaptionFont{minusfour}{\zihao{-4}}
\captionsetup[figure]{
    format=hang,   %标题从第二行开始都有缩进, 应该和 justification=raggedright 的效果一样.
    labelsep=quad, %分隔符是一个空格
    font={song,minusfour,bf}, %图的字体, 宋体小四
    position=bottom %position=bottom, 不代表标题放在下面, 标题仍放在你放\caption的位置.
}
\captionsetup[table]{%
    format=hang,   % 标题从第二行开始都有缩进, 应该和 justification=raggedright 的效果一样.
    labelsep=quad, % 分隔符是一个空格
    font={song,minusfour,bf}, % 表的字体, 宋体小四
    position=top % position=bottom, 不代表标题放在下面, 标题仍放在你放\caption的位置.
}
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
\hit@define@key{
  title = {
    default = {标题},
  },
  expand = {
    default = {小标题},
  },
  author = {
    default = {姓名},
  },
  student-id = {
    name = student@id,
  },
  supervisor = {
    default = {导师姓名},
  },
  department = {
    default = {计算学部},
  },
  discipline = {
    default = {计算机科学与技术},
  },
  classnum = {
    default = {1803105}
  },
  lablocation = {
    default = {格物207}
  },
  term = {
    default = {2021春}
  },
  date = {
    default = {\the\year-\two@digits{\month}-\two@digits{\day}},
  }
}
\newcommand\hit@format@date[2]{%
  \edef\hit@@date{#2}%
  \def\hit@@process@date##1-##2-##3\@nil{%
    #1{##1}{##2}{##3}%
  }%
  \expandafter\hit@@process@date\hit@@date\@nil
}
\newcommand\hit@date@zh@digit[3]{#1 年 \number#2 月 \number#3 日}
\newcommand\hit@date@zh@digit@short[3]{#1 年 \number#2 月}
\newcommand\hit@date@zh@short[3]{\zhdigits{#1}年\zhnumber{#2}月}
\newcommand\hit@date@month[1]{%
  \ifcase\number#1\or
    January\or February\or March\or April\or May\or June\or
    July\or August\or September\or October\or November\or December%
  \fi
}
\newcommand\hit@date@en@short[3]{\hit@date@month{#2}, #1}
\newcommand\hit@underline[2][6em]{\hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt}
\newcommand\hit@CJKunderline[2][6em]{\CJKunderline*{\hb@xt@ #1{\hss#2\hss}}}
\newcommand\hit@titlepage@info{%
  \large
  \renewcommand{\arraystretch}{1}
  \begin{tabular}{lp{3.5cm}<{\centering}lc}
    \makebox[4em][s]{学\hspace{\fill}院}\hit@theorem@separator    & {\hit@department} & \hspace{1em}  \makebox[4em][s]{专\hspace{\fill}业}\hit@theorem@separator    & {\hit@discipline} \\ \cline{2-2} \cline{4-4}
    \makebox[4em][s]{班\hspace{\fill}级}\hit@theorem@separator    & {\hit@classnum}  & \hspace{1em}  \makebox[4em][s]{学\hspace{\fill}号}\hit@theorem@separator    & {\hit@student@id} \\ \cline{2-2} \cline{4-4}
    \makebox[4em][s]{姓\hspace{\fill}名}\hit@theorem@separator    & {\hit@author}    &\hspace{1em} \makebox[4em][s]{实验地点}\hit@theorem@separator& {\hit@lablocation} \\ \cline{2-2} \cline{4-4}
    \makebox[4em][s]{指导老师}\hit@theorem@separator& {\hit@supervisor} &\hspace{1em} \makebox[4em][s]{学\hspace{\fill}期}\hit@theorem@separator    & {\hit@term} \\ \cline{2-2} \cline{4-4}
  \end{tabular}
}
\newcommand\hit@titlepage@date{%
  \begingroup
    \sanhao
    \def\CJKglue{\hskip 1bp}%
    \hit@format@date{\hit@date@zh@short}{\hit@date}\par
  \endgroup
}
\renewcommand\maketitle{
  \cleardoublepage
  \pagenumbering{Alph}%
  \hit@maketitlepage
  \clearpage
}
\newcommand\hit@titlepage@fig{
  \ifhit@campus@harbin
    \begin{center}
      \begin{figure}[h]
        \includegraphics[scale=0.5]{photo/hithrb.pdf} % 本部校徽图片
      \end{figure}
    \end{center}
  \else
    \ifhit@campus@shenzhen
      \begin{center}
        \begin{figure}[h]
          \includegraphics[scale=0.26]{photo/hitsz.pdf} % 深圳校区校徽图片
        \end{figure}
      \end{center}
  \else
    \ifhit@campus@weihai
      \begin{center}
        \begin{figure}[h]
          \includegraphics[scale=0.26]{photo/hitwh.pdf} % 校徽图片
        \end{figure}
      \end{center}
  \fi
  \fi
  \fi
}
\newcommand\hit@maketitlepage{%
\newgeometry{
  vmargin = 2.54cm,
  hmargin = 3.17cm,
}
  \newpage
  \hit@titlepage@fig
 \vspace{1.5cm}
 \begingroup
   \centering
   \textbf{\huawenxingkai \fontsize{32}{0} \selectfont \hit@title}\\
 \endgroup
 \vspace{2cm}
 \begingroup
   \centering
   \textbf{\heiti \fontsize{20}{0} \selectfont \hit@expand}\\
 \endgroup
 \vspace{2.5cm}
\parbox[h][10cm][t]{\textwidth}{\centering\hit@titlepage@info}\par
\begingroup
  \centering
  {\heiti  \sihao\hit@format@date{\hit@date@zh@digit}{\hit@date}\par}%
\endgroup
  \thispagestyle{empty}
  \restoregeometry
}
\renewcommand{\setthesection}{\appendixname\Alph{section}}
\renewcommand\appendix{\par
\setcounter{section}{0}%
\setcounter{subsection}{0}%
\gdef\thesection{\appendixname\@Alph\c@section}}
\DeclareRobustCommand\cs[1]{\texttt{\char`\\#1}}
\DeclareRobustCommand\file{\nolinkurl}
\DeclareRobustCommand\env{\textsf}
\DeclareRobustCommand\pkg{\textsf}
\DeclareRobustCommand\cls{\textsf}
\sloppy
\endinput
%%
%% End of file `hitreport.cls'.
