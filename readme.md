# exert-cef

## git 代理

```bash
# 在 depot_tools 项目里面设置代理
git config http.proxy socks5://127.0.0.1:1080
git config https.proxy socks5://127.0.0.1:1080
```

##

2. 下载 [构造工具](https://storage.googleapis.com/chrome-infra/depot_tools.zip) 解压到 depot_tools 里面。

3. cd depot_tools 里面执行更新，会下载 python 和 git 

```bash
# 这个被墙了，一直执行不了。
update_depot_tools.bat

# 网上找到更新好的，然后通过设置这个屏蔽更新
set DEPOT_TOOLS_UPDATE=0
set DEPOT_TOOLS_WIN_TOOLCHAIN=0
# 执行 automete-git.py 相关脚本。（build.bat）

```

5. 下载 [构造脚本](https://bitbucket.org/chromiumembedded/cef/raw/master/tools/automate/automate-git.py) automate-git.py

```bash
python "G:\excef\automate\automate-git.py" --download-dir="G:\excef\chromium_git" --depot-tools-dir="G:\excef\depot_tools" --no-distrib --no-build
```