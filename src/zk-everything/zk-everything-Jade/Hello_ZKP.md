# Hello ZKP

> 👩‍💻 作者:  [Jade](https://github.com/wenjin1997)
> 🔗 github仓库：[awesome-zkp-learning](https://github.com/wenjin1997/awesome-zkp-learning)

## Introduction

如果你刚入门ZKP，个人推荐从视频课程开始，有老师带着学习，会更容易上手，并且课程也是比较系统的，能对ZKP有一个大致的把握。后续可以深入理论、项目、论文等等。ZKP和密码学、区块链紧密相关，因此这里也推荐了一些相关课程和书籍，而深入密码学又会发现和数学相关，特别是抽象代数、数论的知识，只能说前路漫漫，道阻且长，希望不会劝退你。

本文推荐资料概览如下：

![xmind](./img/ZKP%20Learning.png)

本文的资料推荐完全是鉴于我个人的学习路径，是从我个人角度的一些推荐。每个人的专业背景与学习方法都有所不同，因此仅供参考。不管怎样，能从这里有所收获都是我莫大的荣幸。

闻道有先后，术业有专攻。我也一直在学习的路上，难免有所不足与错误，欢迎批评指正，与我讨论。

## Contents

[TOC]

## ZKP Courses

### 探索零知识证明系列 - 郭宇

如果你想通过博客文章来入门学习ZKP，强烈推荐郭宇老师的系列文章。相信很多人入门ZKP都是从这里开始的（至少我是😂）。推荐按照顺序来进行阅读，同时里面提到的一些概念可以结合
[ZKP MOOC](https://zk-learning.org/)（见下一个推荐）中的第一讲[Introduction and History of ZKP](https://www.youtube.com/watch?v=uchjTIlPzFo)来进行学习，基本都有对应，不过[ZKP MOOC](https://zk-learning.org/)中讲得更理论些。

- [系列一：初识「零知识」与「证明」](https://github.com/sec-bit/learning-zkp/blob/master/zkp-intro/1/zkp-back.md)
- [系列二：理解「模拟」](https://github.com/sec-bit/learning-zkp/blob/master/zkp-intro/2/zkp-simu.md)
- [系列三：寻找「知识」](https://github.com/sec-bit/learning-zkp/blob/master/zkp-intro/3/zkp-pok.md)
- [系列四：随机「挑战」](https://github.com/sec-bit/learning-zkp/blob/master/zkp-intro/4/zkp-rom.md)
- [系列五：埋藏「秘密」](https://github.com/sec-bit/learning-zkp/blob/master/zkp-intro/5/zkp-crs.md)

### [ZKP MOOC - Zero Knowledge Proofs](https://zk-learning.org/)

如果你想系统了解ZKP，或者刚入门ZKP，这门课程强烈推荐。通过这门课程的学习，你会对ZKP有很深入的理解，同时课程涉及面也比较广。每节课的讲义都非常不错，值得反复回顾与学习。课程官网还给出了每节课的补充资料，可以延伸拓展。

- [Introduction and History of ZKP](https://www.youtube.com/watch?v=uchjTIlPzFo)
- [Overview of Modern SNARK Constructions](https://www.youtube.com/watch?v=bGEXYpt3sj0)
- [Libraries and Compilers to build ZKP](https://www.youtube.com/watch?v=UpRSaG6iuks&t=3638s&ab_channel=Blockchain-Web3MOOCs)
- [Interactive Proofs (IP)](https://www.youtube.com/watch?v=4018OYyoAf8)
- [Plonk Interactive Oracle Proofs (IOP)](https://www.youtube.com/watch?v=A0oZVEXav24&ab_channel=Blockchain-Web3MOOCs)
- [Discrete-log-based Polynomial Commitments](https://www.youtube.com/watch?v=WyT5KkKBJUw&ab_channel=Blockchain-Web3MOOCs)
- [ZKP based on Error-Correcting Codes](https://www.youtube.com/watch?v=1S7ZjqG9uyI&ab_channel=Blockchain-Web3MOOCs)
- [Transparent ZKP](https://www.youtube.com/watch?v=A3edAQDPnDY&ab_channel=Blockchain-Web3MOOCs)
- [Linear Probabilistically Checkable Proofs (PCP)](https://www.youtube.com/watch?v=I7TXIHXamwM&ab_channel=Blockchain-Web3MOOCs)
- [Recursive SNARKs, Aggregation and Accumulation](https://www.youtube.com/watch?v=0LW-qeVe6QI&ab_channel=Blockchain-Web3MOOCs)
- [Theoretical Foundations & Recent Theoretical Advancement](https://www.youtube.com/watch?v=CIGnBb8B0rQ&ab_channel=Blockchain-Web3MOOCs)
- [Overview of ZKP Applications & zkRollup and zkEVM](https://www.youtube.com/watch?v=vuQGdbpDWcs&ab_channel=Blockchain-Web3MOOCs)
- [Building opcode compatible zk EVMs](https://www.youtube.com/watch?v=Crzw7ccuHd0&ab_channel=Blockchain-Web3MOOCs)
- [Privacy-preserving Blockchains](https://www.youtube.com/watch?v=1o3cl42bs40&ab_channel=Blockchain-Web3MOOCs)
- [ZKP Applications & zkBridge, Trustless Bridge made Practical](https://www.youtube.com/watch?v=0bKasr4G7OM&ab_channel=Blockchain-Web3MOOCs)
- [More ZKP Applications](https://www.youtube.com/watch?v=tbEsv2afhko&ab_channel=Blockchain-Web3MOOCs)
- [Formal Verification of ZKP](https://www.youtube.com/watch?v=av7Wq742GIA&ab_channel=Blockchain-Web3MOOCs)
- [Hardware Acceleration of ZKP](https://www.youtube.com/watch?v=ez46At3xTjM&ab_channel=Blockchain-Web3MOOCs)

### [Modern Zero Knowledge Cryptography](https://zkiap.com/) - MIT IAP 2023

如果你想敲敲代码来学习ZKP，非常推荐这门课程，可以跟着课程学习Circom语言，自己动手写写电路约束。该课程还有课后作业，推荐自己做一做（我的作业是跟着[ZK Shanghai 2023](https://zkshanghai.xyz/)课程（可以看作该课程的中文版）做的，在下一条推荐中有我的作业链接，供参考）。

- [Session 1 Introduction to ZK](https://www.youtube.com/watch?v=wj5fm_YvhEk&ab_channel=0xPARCFoundation)
- [Session 2 Circom 1](https://www.youtube.com/watch?v=El64GK_rM6c)
- [Session 3 Mathematical building blocks](https://www.youtube.com/watch?v=Ja-xlDR-_7Y&ab_channel=0xPARCFoundation)
- [Session 4 Circom 2](https://www.youtube.com/watch?v=CjaMn9bMeFg&ab_channel=0xPARCFoundation)
- [Session 5 Commitment Schemes](https://www.youtube.com/watch?v=2aL3mP6AI3c)
- [Session 6 Algorithms for Efficient Cryptographic Operations](https://www.youtube.com/watch?v=bTiNNw8lHpc)
- [Session 7 Arithmetizations](https://www.youtube.com/watch?v=PRyNIUjksoY)
- [Session 8 PLONK and polynomial identities](https://www.youtube.com/watch?v=ABI7Jmhvxuw&ab_channel=0xPARCFoundation)
- [Session 9 Proving systems stack; recursion and composition.](https://www.youtube.com/watch?v=SDOmw2TL20g&ab_channel=0xPARCFoundation)
- [Session 10 Applied ZK Constructions 1](https://www.youtube.com/watch?v=2lGFj0Exfb8&ab_channel=0xPARCFoundation)
- [Session 11 Applied ZK Constructions](https://www.youtube.com/watch?v=7zjkrsod6go&ab_channel=0xPARCFoundation)
- [Session 12 Student and Staff Demos](https://www.youtube.com/playlist?list=PLNK7oFq6eaEwU--JTfGJo9waoXI-t-UgP)

### [ZK Shanghai 2023](https://zkshanghai.xyz/) - Icer

如果你觉得直接看上一个推荐的英文课程[Modern Zero Knowledge Cryptography](https://zkiap.com/)有点难度，推荐看这个课程，可以理解为中文版。同时这门课程在讲解过程中也加入了老师的理解，有很多补充和扩展。课程的[第7讲](https://www.youtube.com/watch?v=4Z6Ety1ZTtg)和[第8讲](https://www.youtube.com/watch?v=9l2pu7gKhOQ&ab_channel=SutuLabs)邀请了陆晨博士来讲解，比较偏数学一些，但其中的FFT算法在ZKP中应用还比较多，如果不好理解可以找其他一些资料来补充学习。作为ZKP入门，可以先尝试去理解，后续用到再深入进行研究。

- [第 1 课 初识零知识](https://www.youtube.com/watch?v=gTzXM1Se-38&ab_channel=SutuLabs)
  - [作业](https://github.com/wenjin1997/zkshanghai-workshop/blob/main/lecture1-homework.md)
- [第 2 课 CIRCOM基础电路](https://www.youtube.com/watch?v=CTJ1JkYLiyw&ab_channel=SutuLabs)
  - [作业](https://github.com/wenjin1997/zkshanghai-workshop/blob/main/lecture2-homework.md)
- [第 3 课 数学基础构件](https://www.youtube.com/watch?v=Rfs4n4MrQso&ab_channel=SutuLabs)
  - [作业](https://github.com/wenjin1997/zkshanghai-workshop/blob/main/lecture3-homework.md)
- [第 4 课 CIRCOM实用电路](https://www.youtube.com/watch?v=smJz5RdY0Nc&ab_channel=SutuLabs)
  - [作业](https://github.com/wenjin1997/zkshanghai-workshop/blob/main/lecture4-homework.md)
- [第 5 课 承诺方案](https://www.youtube.com/watch?v=smJz5RdY0Nc)
  - [作业](https://github.com/wenjin1997/zkshanghai-workshop/blob/main/lecture5/HW5.pdf)
- [第 6 课 算术化](https://www.youtube.com/watch?v=nYMRQyQ8pHs&ab_channel=SutuLabs)
  - [作业](https://github.com/wenjin1997/zkshanghai-workshop/blob/main/lecture6-homework.md)
- [第 7 课 高效密码运算算法 1](https://www.youtube.com/watch?v=4Z6Ety1ZTtg)
  - 📝 [笔记](https://github.com/wenjin1997/awesome-zkp-learning/blob/main/courses/ZK%20Shanghai%202023/lecture%207/mynotes.pdf)
- [第 8 课 高效密码运算算法 2](https://www.youtube.com/watch?v=9l2pu7gKhOQ&ab_channel=SutuLabs)
  - 📝 [笔记](https://github.com/wenjin1997/awesome-zkp-learning/blob/main/courses/ZK%20Shanghai%202023/lecture%207/mynotes.pdf)
- [第 9 课 PLONK及证明系统技术栈](https://www.youtube.com/watch?v=WsPpVyCmhDQ&t=1526s&ab_channel=SutuLabs)
- [第 10 课 递归和组合；应用ZK结构 1](https://www.youtube.com/watch?v=c7aisDUVK1c&ab_channel=SutuLabs)
- [第 11 课 应用ZK结构 2](https://www.youtube.com/watch?v=UZheSU3oSc4&ab_channel=SutuLabs)

### [WTF-zk](https://github.com/WTFAcademy/WTF-zk)

如果你想了解ZKP的数学原理，这门教程是不错的选择，讲解了ZKP中用到的抽象代数的知识，同时结合python代码，能边学习理论边用编程进行实践。

## Blockchain

了解区块链也有助于理解ZKP的应用场景。

### [区块链技术与应用](http://zhenxiao.com/blockchain/) - 肖臻

🔗 [bilibili课程视频](https://www.bilibili.com/video/BV1Vt411X7JF?p=1&vd_source=c6586ed2410fae637f393017e00f4845)

如果你想深入了解区块链，非常推荐这门课程，课程由浅入深，讲了比特币和以太坊底层原理。

## Cryptography Courses

### [密码学系列课程](https://www.bilibili.com/video/BV18T411k74f/?spm_id_from=333.788&vd_source=c6586ed2410fae637f393017e00f4845) - lynndell

这门课程从密码学的常见算法讲起，再讲到零知识证明。每一节课都很硬核，老师的讲义非常棒，值得自己反复研读，强烈推荐。

#### 密码学基础系列

- [1 对称加密与哈希函数](https://www.bilibili.com/video/BV18T411k74f/?spm_id_from=333.788&vd_source=c6586ed2410fae637f393017e00f4845)
- [2 公钥加密与数字签名](https://www.bilibili.com/video/BV1qb411Z7jp/?spm_id_from=333.788&vd_source=c6586ed2410fae637f393017e00f4845)
- [3 RSA、环签名、同态加密](https://www.bilibili.com/video/BV1Nk4y1476t/?spm_id_from=333.788&vd_source=c6586ed2410fae637f393017e00f4845)
- [4 承诺、零知识证明、BulletProof范围证明、Diffie-Hellman密钥协商](https://www.bilibili.com/video/BV1aX4y1R7P4/?spm_id_from=333.788&vd_source=c6586ed2410fae637f393017e00f4845)

#### ECDSA多签系列

- [5 Li17两方签名与密钥刷新](https://www.bilibili.com/video/BV1Xa4y1N7cX/?spm_id_from=333.788&vd_source=d6d5daa7e5c1f2e2ffc186195640b61d)
- [6 GG18门限签名](https://www.bilibili.com/video/BV1ds4y1c7Xa/?spm_id_from=333.788&vd_source=d6d5daa7e5c1f2e2ffc186195640b61d)
- [7 GG20门限签名](https://www.bilibili.com/video/BV11L41167iT/?spm_id_from=333.788&vd_source=c6586ed2410fae637f393017e00f4845)

#### zk系列

- [8 Groth16证明系统](https://www.bilibili.com/video/BV1Jh4y177QS/?spm_id_from=333.788&vd_source=c6586ed2410fae637f393017e00f4845)
- [9 Plonk证明系统](https://www.bilibili.com/video/BV13h4y1k7Vc/?spm_id_from=333.788&vd_source=c6586ed2410fae637f393017e00f4845)
- [10 UltraPlonk证明系统](https://www.bilibili.com/video/BV1T34y1T7QA/?spm_id_from=333.788&vd_source=c6586ed2410fae637f393017e00f4845)
- [11 zkSnark-SHA256查找表](https://www.bilibili.com/video/BV1N14y1r7CJ/?spm_id_from=333.788&vd_source=c6586ed2410fae637f393017e00f4845)
- [12 Halo2证明系统](https://www.bilibili.com/video/BV1294y187tc/?spm_id_from=333.788&vd_source=c6586ed2410fae637f393017e00f4845)
- [13 zkStark证明系统](https://www.bilibili.com/video/BV1Xu4y1a7tb/?spm_id_from=333.788&vd_source=c6586ed2410fae637f393017e00f4845)

### [Cryptography I](https://crypto.stanford.edu/~dabo/courses/OnlineCrypto/) - Dan Boneh

如果你觉得上面推荐的课程[密码学系列课程](https://www.bilibili.com/video/BV18T411k74f/?spm_id_from=333.788&vd_source=c6586ed2410fae637f393017e00f4845)还不够过瘾，强烈推荐这门课程，同时推荐读读这门课程的讲义，非常全面，讲义中的证明比较多，前期可以选择跳过。

## Plonk

对ZKP有一个大致的了解后，可以具体来学学一些证明系统，首推Plonk。

### [理解Plonk系列](https://github.com/sec-bit/learning-zkp/tree/master/plonk-intro-zh) - 郭宇

如果你想深入理解Plonk，强烈推荐郭宇老师的这一系列文章。有的文章中会涉及较多的数学公式，推荐自己跟着文章手写推导一遍（或者更多），由于这些置换证明、算术约束、拷贝约束、查表约束等会在很多证明系统中反复用到，因此这里打下扎实的基础还是非常有必要的。

- [1-Plonkish Arithmetization](https://github.com/sec-bit/learning-zkp/blob/master/plonk-intro-zh/1-plonk-arithmetization.md)
- [2-多项式编码](https://github.com/sec-bit/learning-zkp/blob/master/plonk-intro-zh/2-plonk-lagrange-basis.md)
- [3-置换证明](https://github.com/sec-bit/learning-zkp/blob/master/plonk-intro-zh/3-plonk-permutation.md)
- [4-算术约束与拷贝约束](https://github.com/sec-bit/learning-zkp/blob/master/plonk-intro-zh/4-plonk-constraints.md)
- [5-多项式承诺](https://github.com/sec-bit/learning-zkp/blob/master/plonk-intro-zh/5-plonk-polycom.md)
- [6-实现 Zero Knowledge](https://github.com/sec-bit/learning-zkp/blob/master/plonk-intro-zh/6-plonk-randomizing.md)
- [7-Lookup Gate](https://github.com/sec-bit/learning-zkp/blob/master/plonk-intro-zh/7-plonk-lookup.md)

## Halo2

在学习了Plonk之后，就可以开始看看Halo2。官方教程[The halo2 Book](https://zcash.github.io/halo2/)可以作为学习手册进行参考。下面推荐一些不错的课程。

### [Halo2](https://learn.0xparc.org/halo2/) - 0xPARC

强烈推荐跟着这门课程来入门Halo2。不仅有理论的讲解，也有编程实践，课上跟着老师敲敲代码，课后再自己独立实现下，或者改改代码实现不同的约束，相信会对Halo2有更深入的理解。

- [Introduction](https://learn.0xparc.org/materials/halo2/learning-group-1/introduction)
  - 📝 [笔记](https://github.com/wenjin1997/awesome-zkp-learning/blob/main/courses/Halo2-0xPARC/01-Introduction/01-note.md)
- [Halo2 API & Building a Basic Fibonacci Circuit (Part 1)](https://learn.0xparc.org/materials/halo2/learning-group-1/halo2-api)
  - 📝 [笔记](https://github.com/wenjin1997/awesome-zkp-learning/blob/main/courses/Halo2-0xPARC/02-Halo2%20API/02-note.md)
  - 💻 [example1.rs](https://github.com/wenjin1997/awesome-zkp-learning/blob/main/courses/Halo2-0xPARC/halo2-examples/src/fibonacci/example1.rs) : Fibonacci 例子，advice 有三列。
- [Halo2 API & Building a Basic Fibonacci Circuit (Part 2)](https://learn.0xparc.org/materials/halo2/learning-group-1/halo2-api-continued)
  - 💻 [example2.rs](https://github.com/wenjin1997/awesome-zkp-learning/blob/main/courses/Halo2-0xPARC/halo2-examples/src/fibonacci/example2.rs) : 对 Fibonacci 电路 [example1.rs](https://github.com/wenjin1997/awesome-zkp-learning/blob/main/courses/Halo2-0xPARC/halo2-examples/src/fibonacci/example1.rs) 进行了优化，advice 只需要一列。
  - 💻 [is_zero.rs](https://github.com/wenjin1997/awesome-zkp-learning/blob/main/courses/Halo2-0xPARC/halo2-examples/src/is_zero.rs) : 判断是否为0电路。
  - 💻 [example3.rs](https://github.com/wenjin1997/awesome-zkp-learning/blob/main/courses/Halo2-0xPARC/halo2-examples/src/fibonacci/example3.rs) : 利用判零电路 [is_zero.rs](https://github.com/wenjin1997/awesome-zkp-learning/blob/main/courses/Halo2-0xPARC/halo2-examples/src/is_zero.rs) 来实现简单的if-else逻辑。
- [Circuit Exercise (Part 1)](https://learn.0xparc.org/materials/halo2/learning-group-1/exercise-1)
  - 📝 [笔记](https://github.com/wenjin1997/awesome-zkp-learning/blob/main/courses/Halo2-0xPARC/04-Circuit%20Exercises%201/04-note.md)
- [Circuit Exercise (Part 2)](https://learn.0xparc.org/materials/halo2/learning-group-1/exercise-2)
  - 📝 [笔记](https://github.com/wenjin1997/awesome-zkp-learning/blob/main/courses/Halo2-0xPARC/05-Circuit%20Exercises%202/05-note.md)
- [Circuit Exercise (Part 3)](https://learn.0xparc.org/materials/halo2/learning-group-1/exercise-3)
  - 📝 [笔记](https://github.com/wenjin1997/awesome-zkp-learning/blob/main/courses/Halo2-0xPARC/06-Circuit%20Exercise%203/06-note.md)
- [Custom Gates](https://learn.0xparc.org/materials/halo2/learning-group-1/custom-gates)
- [PLONK Cost Model](https://learn.0xparc.org/materials/halo2/learning-group-1/cost-modelad)

### Halo2 - StarLi

这一系列的课程也可以作为上面推荐课程[Halo2 - 0xPARC](https://learn.0xparc.org/halo2/) 的补充。

- [01-Halo2入门基础介绍](https://www.bilibili.com/video/BV1ML4y1M7iV/?spm_id_from=333.999.0.0&vd_source=c6586ed2410fae637f393017e00f4845)
- [02-Halo2 深入理解 Permutation & Lookup算法](https://www.bilibili.com/video/BV1C34y1t7pN/?spm_id_from=333.999.0.0&vd_source=c6586ed2410fae637f393017e00f4845)
- [03-Halo2协议基础及介绍](https://www.bilibili.com/video/BV19L4y1T7ai/?spm_id_from=333.999.0.0&vd_source=c6586ed2410fae637f393017e00f4845)
- [04-Halo2电路进阶（sha256）](https://www.bilibili.com/video/BV1LL411P7ba/?spm_id_from=333.999.0.0&vd_source=c6586ed2410fae637f393017e00f4845)
- [05-Halo2源代码导读](https://www.bilibili.com/video/BV1HS4y1D7tX/?spm_id_from=333.999.0.0&vd_source=c6586ed2410fae637f393017e00f4845)

## ZKEVM

ZKEVM或者ZKVM是一个非常庞大的项目，个人认为可以从一些介绍视频入手，有个大致的了解，再进行深入代码细节。（👀我还刚刚接触一点，下面是我看到的不错的资料，这里简单的做一些推荐，想更深入学习ZKVM或者ZKEVM，建议另外找更全面的资料）

- 📺 [视频-zkEVM总览](https://www.youtube.com/watch?v=SEp5SFaYQHY&t=70s&ab_channel=DappLearning)：Scroll的 Ye Zhang 大佬的讲解视频，对于初步了解zkEVM是什么有很大帮助。
- 📺 [Dream@Scroll：halo2 (zkEVM gadgets) 分享](https://706community.notion.site/Dream-Scroll-halo2-zkEVM-gadgets-46e7495003b147ca8f25d2533a07799b)

## ZKP Books

### Proofs, Arguments, and Zero-Knlowledge - Justin Thaler

关于ZKP的书籍，很多人首推这本书。（👀我还未细看这本书，后续看完补充更详细的描述）

### [The MoonMath Manual](https://github.com/LeastAuthority/moonmath-manual?tab=readme-ov-file)

这本书还是比较全面，涵盖初等代数、抽象代数、椭圆曲线、电路以及 ZKP 的知识，尽可能地不涉及过多的数学理论，同时又和实践进行结合，非常推荐。

## Mathematics Books

### Algebra

#### [高等代数](https://book.douban.com/subject/4839187/) - 丘维声

强烈推荐丘老师的这本教材，有上下两册，通过这本书一步一步自然地引入了群、环、域的概念，对入门抽象代数很有帮助。网上也有丘老师的课程视频，可以结合着学习。

#### [抽象代数](https://book.douban.com/subject/36007684/) - 张贤科

如果你想看抽象代数的中文教材，我觉得这本很不错，带你从群环域到伽罗瓦群，书中也有部分提到ZKP中常用的有限域，但更多还是整个抽象代数的理论知识，对深入理解有限域有很多帮助。如果想要深入研究有限域，推荐阅读有更细化的书籍（下面在Finite Fields中有对应推荐）。

#### A Book of Abstract Algebra - Charles C. Pinter

如果你想看抽象代数的英文教材，推荐这本。还是比较推荐英文资料，这样在看到一些英文术语时能够直接对应上。

#### Algebra A Graduate Course

这本作为一些学校的本科教材，也比较推荐。

### Finite Fields

ZKP中的大部分证明系统都是基于有限域来进行计算的，因此很有必要深入学习下有限域的理论知识。下面先推荐一些大家都说还不错的书籍。（👀由于我还未细读，后续再补充上这些书籍的描述与区别）

#### Finite Fields - Rudolf Lidl, Harald Niederreiter, P. M. Cohn

#### Handbook of Finite Fields - Gary L. Mullen, Daniel Panario

#### Introduction to Finite Fields and their Applications - RUDOLF LIDL, HARALD NIEDERREITER

#### Applications of Finite Fields - IanF.Blake, XuHong Gao, Ronald C. Mullin, et al

## Cryptography Books

### [图解密码技术](https://book.douban.com/subject/26822106/)

这本书非常适合密码学入门，图解系列的书籍都比较易懂。

### Foundations of Cryptography

这本书有两卷，第I卷是 Basic Tools，第II卷是 Basic Applications。涵盖的内容非常全面，在第I卷的第4章就讲到了ZKP。（👀还未细看这本书，后续看完补充更详细的描述）

### Handbook of Elliptic and Hyperelliptic Curve Cryptography - ODED GOLDREICH

（👀还未细看这本书，后续看完补充更详细的描述）

## Coding Theory

在FRI中，涉及到Reed-Solomon编码，因此如果要研究这些证明系统相关的细节，就比较有必要学习编码理论相关知识。

### [Essential Coding Theory](https://cse.buffalo.edu/faculty/atri/courses/coding-theory/book/)

这本书非常推荐，编码理论讲得非常深入。

## ZKP Resources

这里推荐一些不错的ZKP学习资源。

- [Vitalik Buterin's website](https://vitalik.eth.limo/index.html)：V神的博客文章，必看。
- [零知识证明学习资源汇总](https://github.com/sec-bit/learning-zkp/blob/master/zkp-resource-list.md)：非常不错的文章推荐列表，也包含一些经典论文。
- 微信公众号 - 星想法：有很多零知识证明文章与教程。
- 微信公众号 - XPTY：Kurt Pan老师的微信公众号，可以实时跟进ZKP和密码学的最新研究。
- [World of Z2O-K7E](https://learn.z2o-k7e.world/index.html)：收录了郭老师的系列文章，同时还涵盖了Plonk、Halo2、格密码等内容，非常丰富。
- [Zero Knowledge Canon](https://a16zcrypto.com/content/article/zero-knowledge-canon/)：很全面的zk相关资料总结，有很多论文课程资源。
- [Awesome zero knowledge proofs (zkp)](https://github.com/matter-labs/awesome-zero-knowledge-proofs): github仓库，丰富的ZKP相关资源汇总。
- [ZKProof](https://docs.zkproof.org/)：很全面的ZKP资源网站。
- [ZenGo X](https://github.com/ZenGo-X)：有很多rust实现的加密算法库。
- Twitter推荐：
  - [vitalik.eth](https://twitter.com/VitalikButerin)
  - [0xAA](https://twitter.com/0xAA_Science)
  - [Wizard Glacier](https://twitter.com/icerdesign)
  - [fft.eth](https://twitter.com/liquan_eth)
  - [0xhhh](https://twitter.com/hhh69251498)
