# java-cef vc15

越高版本的 cef 核心需要的 VS 版本可能越高，反之低版本越低。

```bash
# 在目录里面生成 VS 项目，使用 VS2019 编译，94 版本的 cef 要 vs2019
cmake -G "Visual Studio 16 2019" ../javacef
```


注：如果出现以下报错，注释掉 65 行的代码，这个是 git checkout 判定。

```
File "tools/make_version_header.py", line 65, in write_svn_header

raise Exception('Not a valid checkout')
```

在 VS 里面执行编译，之后会在项目的 native 目录里面得到 Debug 或者 Release 的二进制文件。


```bash
# 使用 源码的 tools 目录下 compile.bat 编译 jar
# java 版本不要太高或太低，自己试。。。
compile.bat win64
```

源码文件的 tools 里面有个 tools\run.bat 里面目录是写死的，根据里面的路径，把 2个编译好的文件放到合适的位置，然后执行。

