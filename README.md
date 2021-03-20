[![Test](https://github.com/DemerzelSun12/hitreport/actions/workflows/test.yml/badge.svg)](https://github.com/DemerzelSun12/hitreport/actions/workflows/test.yml)
[![GitHub release](https://img.shields.io/github/v/release/demerzelsun12/hitreport)](https://github.com/demerzelsun12/hitreport/releases/latest)

# hitreport

Scroll down for the English version of README.

# What's hitreport

**hitreport** stands for **H**arbin **I**nstitute of **T**echnology  **Report**  LaTeX Template.

hitreport是为哈尔滨工业大学一校三区本科生设计的一个免于配置的作业、实验报告模板。希望它可以使你的作业/实验报告不会因形式上的缺陷导致评分的下降。

该文档主要完成了除了主体内容以外的几乎**全部**工作。同时，通过使用 Github 版本宏包，你还可以更好的管理自己的 LaTeX 文档。

## 安装方法

推荐下载**发布版**模板，里面包括具体使用说明以及示例文档：

* 模板使用说明 (hitreport.pdf)
* 示例文档 (hitreport-example.pdf)

为方便对 LaTeX 不熟悉的用户使用本模板，本模板的发布版也提供预生成的 `cls` 文件、文档和源码。如需使用稳定版本，请从 CTAN 下载（虽然还在申请中）。

下载途径：

* 发布版：
  * [CTAN](https://www.ctan.org/pkg/hitreport)：CTAN发布地址，但是会比Github和Gitee版稍滞后。
  * [GitHub Releases](https://github.com/demerzelsun12/hitreport/releases)：最新版的及时发布途径之一。
  * [Gitee Releases](https://gitee.com/demerzel/hitreport/releases)：最新版的及时发布途径之二。

## 升级

### 自动更新

通过 TeX 发行版工具（如 `tlmgr`）自动从 [CTAN](https://www.ctan.org/pkg/hitreport) 更新。

### 手动更新

#### 发布版

下载发布版的的 zip 包，使用其中的 `hitreport.cls` 等文件覆盖原有的即可，无须额外操作。

#### 开发版

从 GitHub clone 项目源码或者下载源码 zip 包，执行命令（Windows 用户在文件夹空白处按 `Shift + 鼠标右键`，点击“在此处打开命令行窗口”）：

```shell
xetex hitreport.ins
```

即可得到 `hitreport.cls` 等模板文件。

## 提问

请在 Github Issues 上提出问题：

* [GitHub Issues](https://github.com/demerzelsun12/hitreport/issues)

## Makefile的用法

```shell
make [{report|doc|clean|cleanall|distclean}]
```

### 目标

* `make report`    生成报告 hitreport-example.pdf；
* `make doc`       生成模板使用说明书 hitreport.pdf；
* `make clean`     删除示例文件的中间文件（不含 hitreport-example.pdf）；
* `make cleanall`  删除示例文件的中间文件和 hitreport-example.pdf；
* `make distclean` 删除示例文件和模板的所有中间文件和 PDF。

---

## Contact

如果你使用时发现任何 bug 或得不到的格式，可以联系我或开 issue  
如果你有更好的作业/报告格式，欢迎添加或联系我帮忙添加  

## License

LaTeX Project Public License, Version 1.3c (LPPL-1.3c).

# hitreport?

**hitreport** stands for **H**arbin **I**nstitute of **T**echnology  **Report**  LaTeX Template.

hitreport is an assignment and experiment report template free of configuration designed for undergraduates in the three campus of Harbin Institute of Technology. I hope it can prevent your homework/experiment report from falling down due to formal defects.

This document mainly completes almost **all** work except the main document. At the same time, by using the Github version macro package, you can better manage your own LaTeX documents. An English translation of this README follows the Chinese below.

**This template is subject to frequent changes. Please make sure you have read the usage documentation and example code completely and carefully before using and asking questions.**

## Downloads

**Publish versions** are recommended. Specific usage documentation and examples can be found in the archive. At present, these documents are <b>only available in Chinese</b>:

* Template usage documentation (hitreport.pdf)
* Template example (hitreport-example.pdf)

For the convenience of users who are not familiar with latex to use this template all versions contain source code, pre-comlied `cls` file and documentations. No warranties are provided.

* Published versions:
  * [CTAN](https://www.ctan.org/pkg/hitreport)：CTAN release address, but it will be slightly behind the Github and Gitee version。
  * [GitHub Releases](https://github.com/demerzelsun12/hitreport/releases)：One of the methods for timely release of the latest version.
  * [Gitee Releases](https://gitee.com/demerzel/hitreport/releases)：Another method for timely release of the latest version.

## Updates

### Automic

Get the most up-to-date published version with your TeX distribution from [CTAN](https://www.ctan.org/pkg/hitreport).

### Manual

#### Published

Download the published zip files, extract `hitreport.cls` and other files (if needed) and override the existing ones in your report.

#### Developer versions

Download the source code package and unzip to the root dictionary of your report (or clone this project), then execute the command  (Windows users `Shift + right click` white area in the file window and click "Open command line window here" from the popup menu):

```shell
xetex hitreport.ins
```

you'll get `hitreport.cls` along with other template files.

## Reporting Issues

Please report your issues on Github Issues:

* [Github Issues](https://github.com/demerzelsun12/hitreport/issues)

## Makefile Usage

```shell
make [{report|doc|clean|cleanall|distclean}]
```

### Targets

* `make report`    generate report
* `make doc`       generate template documentation
* `make clean`     delete all examples' files (excluding hitreport-example.pdf)
* `make cleanall`  delete all examples' files and hitreport-example.pdf
* `make distclean` delete all examples' and templates' files and PDFs.
