    mozbuildtools 使用說明
------------------------------
mozbuildtools 是一項計畫，實現使用 MinGW 在 Windows 編譯 Mozilla。
目前測試 Firefox 可以成功的被編譯。

警告：目前 Mozilla 官方 Windows 版並非使用 MinGW 編譯，
      且使用 MinGW 編譯的版本有一些問題待解決。

＊ 版本說明: 
  - 版本: 1.2
  - 更新軟體
  - 使用新版 glib 與 libIDL 取代 moztools
  - 更新 GCC 到 4.4.3
  - 完整變動報告請看 Changelog.txt

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
  - 如使用 Vista 以上的作業系統，請從「開始」->「所有程式」->「附屬應用程式」->「命令提示字元」按下右鍵->「以系統管理員身份執行」或選擇關閉 UAC。

＊ 如何編譯:
  1. 先撰寫好 .mozconfig
  2. 打上 patch
  3. make -f client.mk build
  4. 完成

＊ 安裝好後空間清理:
  - 執行 compress.bat 以壓縮 dll 及 exe 檔

＊ 如需下載 Firefox 3.6 最新的原始碼，請輸入指令
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
ac_add_options  --disable-necko-wifi

# 使用 -w 隱藏警告訊息，以減少訊息輸出，減少等待終端機的輸出
export CFLAGS="-w"
export CXXFLAGS="-w"
export CPPFLAGS="-w"

# 設定 MinGW 環境
export CC="gcc -D_WIN32_IE=0x0800 -D_WIN32_WINNT=0x0601"
export CXX="g++ -D_WIN32_IE=0x0800 -D_WIN32_WINNT=0x0601"
export CPP="cpp -D_WIN32_IE=0x0800 -D_WIN32_WINNT=0x0601"
export CXXCPP="cpp -D_WIN32_IE=0x0800 -D_WIN32_WINNT=0x0601"
export AS=as
export LD=ld
export AR=ar
export STRIP=strip
export WINDRES=windres

