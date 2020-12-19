# hitreport

假装这里有CI的那个绿绿的pass

# What's hitreport

hitreport stands for **H**arbin **I**nstitute of **T**echnology versatile **Report**.

hitreport是为哈尔滨工业大学本科生设计的一个免于配置的作业、实验报告模板。希望它可以使你的作业/实验报告不会因形式上的缺陷导致评分的下降。

该文档主要完成了除了主体内容以外的几乎**全部**工作。同时，通过使用 Github 版本宏包，你还可以更好的管理自己的 $\LaTeX$ 文档。

## 安装方法

### CTAN

暂无，在申请中。。。

### Github

若想获得最新版本的 hitreport 请前往github主页下载：https://github.com/DemerzelSun12/hitreport


## 使用方法

从 Github 上下载后使用命令 `xelatex report.tex` ，即可生成pdf文件。


## 默认加载的宏包

模板自动引入以下宏包，对于宏包功能，可使用 `texdoc` 或 STFW 获得帮助。

| 宏包名 | 用途 | 举例 |
| -- | -- | -- |
| xcolor | 颜色 ||
| fancyhdr | 页眉页脚 ||
| geometry | 页面设置 ||
| enumitem | 调整列表 ||
| cite | 引用 ||
| hyperref | 超链接 ||
| amsmath | 数学支持 ||

...还没统计完，容我一些时间完成。

### 默认加载的 tikz library

* position

## 自定义宏


## Contact

如果你使用时发现任何 bug 或得不到的格式，可以联系我或开 issue  
如果你有更好的作业/报告格式，欢迎添加或联系我帮忙添加  

## License

暂时还是MIT License，等CTAN申请下来再换成LPPL。
