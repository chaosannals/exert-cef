# java-cef vc15

越高版本的 cef 核心需要的 VS 版本可能越高，反之低版本越低。

```bash
# 在目录里面生成 VS 项目，使用 VS2015 编译
cmake -G "Visual Studio 14 Win64" ../javacef

# 在目录里面生成 VS 项目，使用 VS2017 编译
cmake -G "Visual Studio 15 Win64" ../javacef
```


注：如果出现以下报错，注释掉 65 行的代码，这个是 git checkout 判定。

```
File "tools/make_version_header.py", line 65, in write_svn_header

raise Exception('Not a valid checkout')
```
