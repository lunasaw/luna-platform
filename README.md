

# party-platform

party-platform

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
  <a href="https://github.com/czy1024/party-platform/">
    <img src="https://tva1.sinaimg.cn/large/0081Kckwgy1glt8cw6atpj30fa0faaa1.jpg" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">党建平台</h3>
  <p align="center">
    盐城师范学院信息工程学院党建平台
    <br />
    <a href="https://czy1024.github.io/party-platform"><strong>探索本项目的文档 »</strong></a>
    <br />
    <br />
    <a href="http://yctc.vaiwan.com/party-platform/admin/page/main">查看Demo</a>
    ·
    <a href="">报告Bug</a>
    ·
    <a href="https://github.com/czy1024/party-platform/issues">提出新特性</a>
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
git clone https://github.com/czy1024/party-platform.git
```

### 文件目录说明
eg:

```
    找到src/main/java/com/ruoyi/PartyPlatformApplication.java启动它        
```
    当然首先你需要修改你的数据库
    将sql文件夹下的数据导入你的数据
    在party-admin/src/main/resources/application-druid.yml修改连接
    
    演示地址 http://yctc.vaiwan.com/party-platform/admin/page/main
## 各 Module 介绍

| Module 名称                              | Module 介绍  |
| ---------------------------------------- | ------------ |
| [party-platform-admin](./party-platform-admin)             | 主要业务模块 |
| [party-platform-common](./party-platform-common)           | 工具模块     |
| [party-platform-framework](./party-platform-framework)     | 框架配置模块 |
| [party-platform-apgenerator](./party-platform-apgenerator) | 代码生成模块 |
| [party-platform-quartz](./party-platform-quartz)           | 定时任务模块 |
| [party-platform-system](./party-platform-system)           | 系统功能模块 |



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

该项目签署了MIT 授权许可，详情请参阅 [LICENSE.txt](https://github.com/czy1024/party-platform/blob/master/LICENSE)

### 鸣谢[]()


- [ruoyi](https://www.ruoyi.vip/)



<!-- links -->
[your-project-path]:czy1024/party-platform
[contributors-shield]: https://img.shields.io/github/contributors/czy1024/party-platform.svg?style=flat-square
[contributors-url]: https://github.com/czy1024/party-platform/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/czy1024/party-platform.svg?style=flat-square
[forks-url]: https://github.com/czy1024/party-platform/network/members
[stars-shield]: https://img.shields.io/github/stars/czy1024/party-platform.svg?style=flat-square
[stars-url]: https://github.com/czy1024/party-platform/stargazers
[issues-shield]: https://img.shields.io/github/issues/czy1024/party-platform.svg?style=flat-square
[issues-url]: https://img.shields.io/github/issues/czy1024/party-platform.svg
[license-shield]: https://img.shields.io/github/license/czy1024/party-platform.svg?style=flat-square
[license-url]: https://github.com/czy1024/party-platform/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/party-platform




