[![Test](https://github.com/DemerzelSun12/hitreport/actions/workflows/test.yml/badge.svg)](https://github.com/DemerzelSun12/hitreport/actions/workflows/test.yml)
[![GitHub release](https://img.shields.io/github/v/release/demerzelsun12/hitreport)](https://github.com/demerzelsun12/hitreport/releases/latest)
<!-- [![CTAN](https://img.shields.io/ctan/v/hitreport)](https://www.ctan.org/pkg/hitreport) -->

# hitreport


# What's hitreport

hitreport stands for **H**arbin **I**nstitute of **T**echnology  **Report**  LaTeX Template.

hitreport是为哈尔滨工业大学一校三区本科生设计的一个免于配置的作业、实验报告模板。希望它可以使你的作业/实验报告不会因形式上的缺陷导致评分的下降。

该文档主要完成了除了主体内容以外的几乎**全部**工作。同时，通过使用 Github 版本宏包，你还可以更好的管理自己的 \LaTeX 文档。

## 安装方法

推荐下载**发布版**模板，里面包括具体使用说明以及示例文档：

* 模板使用说明 (hitreport.pdf)
* 示例文档 (hitreport-example.pdf)

下载途径：

* 发布版：
  * [CTAN](https://www.ctan.org/pkg/hitreport)：可能滞后正式发布少许时间。
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
按推荐顺序排序：

* 先到 [FAQ](https://github.com/demerzelsun12/hitreport/wiki/FAQ) 看看常见问题
* [GitHub Issues](https://github.com/demerzelsun12/hitreport/issues)

## Makefile的用法

```shell
make [{report|doc|clean}]
```

### 目标
* `make report`    生成报告 hitreport-example.pdf；
* `make doc`       生成模板使用说明书 thuthesis.pdf；
* `make clean`     删除示例文件的中间文件（不含 hitreport-example.pdf）；
* `make cleanall`  删除示例文件的中间文件和 hitreport-example.pdf；
* `make distclean` 删除示例文件和模板的所有中间文件和 PDF。

---

## Contact

如果你使用时发现任何 bug 或得不到的格式，可以联系我或开 issue  
如果你有更好的作业/报告格式，欢迎添加或联系我帮忙添加  

## License

LaTeX Project Public License, Version 1.3c (LPPL-1.3c).
