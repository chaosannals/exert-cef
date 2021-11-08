# jcef49 vs12

## Windows XP 

为了兼容 xp 系统 Java 版本不能超过 8u251 。
把 jdk8u251 放到 jdk8u251 目录下。
编译的版本应该是 32 位的。

在源码 jcef49\third_party\cef 目录下面把 cef49 的二进制文件解压到这个目录下 命名 win32。
jcef 通过 jni 对 cef 进行了封装，动态链接了 cef 

### 依赖

- cmake
- python 2.7
- visual studio 2013
- 编译好的 cef49

### 
```bash
# 生成在 jcef49/jcef_build 目录下的 vs2013 项目。 
xpcmake.bat

# 打开 jcef.sln 编译 Release 版本的，不然要自己修改 xprun.bat。

# 完成编译后执行。注意目录，xpcmake 已经把目录转走了。要在改项目下。
xpcompile.bat

# 执行运行
xprun.bat

# 发布调用
xpdist.bat

# 发布目录 binary_distrib 可以看到 win32 的目录
```

发布目录下 run.bat 可以用于执行。不过由于改变了环境变量去指定 JAVA_HOME 所以执行发布目录下的 run.bat 时需要再次指定编译用的 JAVA_HOME 也就是 jdk8u251 目录。

```bat
set JAVA_HOME=%cd%\..\..\..\jc49vs12\jdk8u251
set PATH=%JAVA_HOME%\bin;%PATH%
```