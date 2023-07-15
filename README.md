# gdbus-demo

#### 介绍
gdbus session demo

#### 软件架构
gdbus的xml提供两个方法和两个信号
客户端生成一个库(libExampleClientlib.so)，暴露出同步方法和异步方法函数，回调的注册函数
example文件夹是客户端的一个例程(CltExample)
server文件夹是服务端的例程(SvrExample)

#### 安装教程

1.  mkdir build
2.  cd build
3.  cmake ..
4.  make
5.  cpack

#### 使用说明

1.  部署dbus
dbus-daemon --session --address=unix:path=/tmp/session_bus_socket &
export DBUS_SESSION_BUS_ADDRESS=unix:path=/tmp/session_bus_socket
2.  在build目录下执行服务端
./server/SvrExample
3.  在build目录下执行客户端
./server/CltExample

#### 参与贡献

1.  Fork 本仓库
2.  新建 Feat_xxx 分支
3.  提交代码
4.  新建 Pull Request


#### 码云特技

1.  使用 Readme\_XXX.md 来支持不同的语言，例如 Readme\_en.md, Readme\_zh.md
2.  码云官方博客 [blog.gitee.com](https://blog.gitee.com)
3.  你可以 [https://gitee.com/explore](https://gitee.com/explore) 这个地址来了解码云上的优秀开源项目
4.  [GVP](https://gitee.com/gvp) 全称是码云最有价值开源项目，是码云综合评定出的优秀开源项目
5.  码云官方提供的使用手册 [https://gitee.com/help](https://gitee.com/help)
6.  码云封面人物是一档用来展示码云会员风采的栏目 [https://gitee.com/gitee-stars/](https://gitee.com/gitee-stars/)
