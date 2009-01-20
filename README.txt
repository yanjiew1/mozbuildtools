mozbuildtools 使用說明
------------------------------
mozbuildtools 是一項計畫，實現使用 MinGW 在 Windows 編譯 Mozilla。
目前測試 Firefox 可以成功的被編譯。

＊ 版本說明: 
  - 版本: 1.0 beta 1
  - 實驗 GCC 4.3.2
  - 詳情請看 Changelog.txt

＊ Patch 檔版本需求: 0.3 以上
  - 請特別注意 patch 檔的開頭是否有標示 0.3 。

＊ 特點:
  - 不必安裝龐大的 Visual C++
  - 程式小，供開發者利用
  - 可用來開發社群版 Firefox

＊ 待解決目標:
  - 編譯後的 Firefox 實現全部附加元件的可用

＊ 安裝步驟:
  1. 執行 Setup.bat
  2. 然後執行 start-msys.bat 就可啟動 msys
  3. 如需清理空間，請參閱下面的「安裝好後空間清理」
 -- 詳細步驟請參閱網頁說明

＊ 注意事項:
  - 此程式不能安裝在含有空白字元的路徑
  - 建議不要使用 Vista 系統
  - 編譯好執行的檔案後，記得將 NSPR、moztools 的 DLL 檔跟 Firefox 放在一起才能運作。

＊ 安裝好後空間清理:
  - 執行 compress.bat 以壓縮 dll 及 exe 檔

＊ 如需下載 Firefox 3.2 最新的原始碼，請輸入指令
hg clone http://hg.mozilla.org/mozilla-central firefox-src

＊ 如需下載最新 Patch ，請至
http://sites.google.com/site/usemingwtobuildfirefox/Home/patch-dang-an-gui

＊ 授權協議參閱，請至
http://sites.google.com/site/usemingwtobuildfirefox/Home/shou-quan-xie-yi
本程式除了第三方程式以外，其餘以 BSD 許可證 為授權協議

建議 .mozconfig
==================
ac_add_options --enable-application=browser
mk_add_options MOZ_OBJDIR=@TOPSRCDIR@/../mozilla-mingw

# pgo
mk_add_options PROFILE_GEN_SCRIPT='$(PYTHON) $(MOZ_OBJDIR)/_profile/pgo/profileserver.py'

ac_add_options  --disable-debug

# 如需使用最佳化，不保證編譯出來的程式可以使用
ac_add_options  --disable-optimize
ac_add_options  --disable-tests
ac_add_options  --disable-installer
ac_add_options  --disable-accessibility
ac_add_options  --disable-vista-sdk-requirements
ac_add_options  --disable-updater
ac_add_options  --enable-shared
ac_add_options  --disable-static
ac_add_options  --with-branding=browser/branding/unofficial
ac_add_options  --enable-strip

# 使用 -w 隱藏警告訊息，以減少訊息輸出，減少等待終端機的輸出
CFLAGS="-w"
CXXFLAGS="-w"
CPPFLAGS="-w"

# 設定 MinGW 環境
CC="gcc"
CXX="g++"
CPP="cpp"
CXXCPP="cpp"
AS=as
LD=ld
AR=ar
STRIP=strip
WINDRES=windres

