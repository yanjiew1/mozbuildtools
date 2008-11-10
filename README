mozbuildtools 使用說明
------------------------------
mozbuildtools 是一項計畫，實現使用 MinGW 在 Windows 編譯 Mozilla。
目前測試 Firefox 可以成功的被編譯。

＊ 版本說明: 
  - 版本: 0.2
  - 新增 NSIS 2.22 
  - 新增 UPX 3.0.3 (已附加)

＊ 特點:
  - 不必安裝龐大的 Visual C++
  - 程式小，供開發者利用
  - 可用來開發社群版 Firefox

＊ 待解決目標:
  - 編譯後的 Firefox 實現全部附加元件的可用

＊ 安裝步驟:
  1. 執行 Setup.bat
  2. 等程式跑完，再執行 install-python.bat
  3. 然後執行 start-msys.bat 就可啟動 msys
  4. 如需清理空間，請參閱下面的「安裝好後空間清理」
 -- 詳細步驟請參閱網頁說明

＊ 注意事項:
  - 此程式不能安裝在含有空白字元的路徑
  - 建議不要使用 Vista 系統
  - 編譯好執行的檔案後，記得將 NSPR、moztools 的 DLL 檔跟 Firefox 放在一起才能運作。

＊ 安裝好後空間清理:
  - 刪除 download 目錄
  - 刪除 python-2.6.msi 安裝檔
  - 刪除 install-python.bat
  - 刪除 msys/download 目錄

＊ 如需下載 Firefox 3.1 最新的原始碼，請至
http://hg.mozilla.org/mozilla-central/summary

＊ 如需下載最新 Patch ，請至
http://sites.google.com/site/usemingwtobuildfirefox/Home/patch-dang-an-gui

＊ 授權協議參閱，請至
http://sites.google.com/site/usemingwtobuildfirefox/Home/shou-quan-xie-yi

建議 .mozconfig
-------------------
ac_add_options --enable-application=browser
mk_add_options MOZ_OBJDIR=@TOPSRCDIR@/../mozilla-mingw
mk_add_options PROFILE_GEN_SCRIPT='$(PYTHON) $(MOZ_OBJDIR)/_profile/pgo/profileserver.py'

ac_add_options  --disable-debug
ac_add_options  --enable-optimize="-O3 -march=prescott -freorder-blocks -fno-reorder-functions -msse3 -mmmx -mfpmath=sse -D_FORTIFY_SOURCE=2"
ac_add_options  --disable-tests
ac_add_options  --disable-installer
ac_add_options  --disable-accessibility
ac_add_options  --disable-vista-sdk-requirements
ac_add_options  --disable-updater
ac_add_options  --with-system-nspr
ac_add_options  --enable-shared
ac_add_options  --disable-static
ac_add_options  --with-branding=browser/branding/unofficial
ac_add_options  --enable-strip

# 一般使用者建議使用 -w 來隱藏警告訊息以增快編譯速度，如是開發者就不必隱藏
CFLAGS="-w"
CXXFLAGS="-w"
CPPFLAGS="-w"
CC="gcc-sjlj -DMOZ_DISABLE_XPCOM_STDCALL"
CXX="g++-sjlj -DMOZ_DISABLE_XPCOM_STDCALL"
CPP="cpp-sjlj -DMOZ_DISABLE_XPCOM_STDCALL"
CXXCPP="cpp-sjlj -DMOZ_DISABLE_XPCOM_STDCALL"
AS=as
LD=ld
AR=ar
STRIP=strip
WINDRES=windres

