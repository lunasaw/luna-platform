

# yttv-platform

yttv-platform

<!-- PROJECT SHIELDS -->

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<!-- PROJECT LOGO -->
<br />

<p align="center">
  <a href="https://github.com/czy1024/yttv-platform/">
    <img src="https://tva1.sinaimg.cn/large/0081Kckwly1gl51imdcymj305k05kjr7.jpg" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">沿途之声</h3>
  <p align="center">
    一个记录你生活的博客平台
    <br />
    <a href="https://czy1024.github.io/yttv-platform"><strong>探索本项目的文档 »</strong></a>
    <br />
    <br />
    <a href="">查看Demo</a>
    ·
    <a href="">报告Bug</a>
    ·
    <a href="https://github.com/czy1024/yttv-platform/issues">提出新特性</a>
  </p>

</p>


 
## 目录

- [上手指南](#上手指南)
  - [开发前的配置要求](#开发前的配置要求)
  - [安装步骤](#安装步骤)
- [文件目录说明](#文件目录说明)
- [部署](#部署)
- [使用到的框架](#使用到的框架)
- [贡献者](#贡献者)
  - [如何参与开源项目](#如何参与开源项目)
- [作者](#作者)
- [鸣谢](#鸣谢)

### 上手指南


###### **安装步骤**

1. Clone the repo

```sh
git clone https://github.com/czy1024/yttv-platform.git
```

### 文件目录说明
eg:

```
    找到src/main/java/com/ruoyi/YttvPlatformApplication.java启动它        
```
    当然首先你需要修改你的数据库
    将sql文件夹下的数据导入你的数据
    在yttv-admin/src/main/resources/application-druid.yml修改连接
## 各 Module 介绍

| Module 名称                                                  | Module 介绍                                                  |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [yttv-admin](./yttv-admin) |  主要业务模块                   |
| [yttv-common](./yttv-common) |   工具模块                      |
| [yttv-framework](./yttv-framework) |    框架配置模块                        |
| [yttv-apgenerator](./yttv-apgenerator) |     代码生成模块                       |
| [yttv-quartz](./yttv-quartz)     | 定时任务模块 |
| [yttv-system](./yttv-system) | 系统功能模块 |



### 开发的架构 

利用springboot+spingmvc，定时任务采用quartz


### 使用到的框架

- [springboot](https://spring.io/)

### 贡献者

请阅读**CONTRIBUTING.md** 查阅为该项目做出贡献的开发者。

#### 如何参与开源项目

贡献使开源社区成为一个学习、激励和创造的绝佳场所。你所作的任何贡献都是**非常感谢**的。


1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



### 版本控制

该项目使用Git进行版本管理。您可以在repository参看当前可用版本。

### 作者

luna

email Keyluna@126.com  &ensp; qq:1173288254

 *您也可以在贡献者名单中参看所有参与该项目的开发者。*

### 版权说明

该项目签署了MIT 授权许可，详情请参阅 [LICENSE.txt](https://github.com/czy1024/yttv-platform/blob/master/LICENSE)

### 鸣谢[]()


- [ruoyi]()



<!-- links -->
[your-project-path]:czy1024/yttv-platform
[contributors-shield]: https://img.shields.io/github/contributors/czy1024/yttv-platform.svg?style=flat-square
[contributors-url]: https://github.com/czy1024/yttv-platform/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/czy1024/yttv-platform.svg?style=flat-square
[forks-url]: https://github.com/czy1024/yttv-platform/network/members
[stars-shield]: https://img.shields.io/github/stars/czy1024/yttv-platform.svg?style=flat-square
[stars-url]: https://github.com/czy1024/yttv-platform/stargazers
[issues-shield]: https://img.shields.io/github/issues/czy1024/yttv-platform.svg?style=flat-square
[issues-url]: https://img.shields.io/github/issues/czy1024/yttv-platform.svg
[license-shield]: https://img.shields.io/github/license/czy1024/yttv-platform.svg?style=flat-square
[license-url]: https://github.com/czy1024/yttv-platform/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/yttv-platform




