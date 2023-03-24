cd C:\Users\User\Desktop\Hide-Artifacts\assets\artifacts\textures\entity\curio

call :treeProcess

:treeProcess
pause
cd
rem Do whatever you want here over the files of this subdir, for example:
for %%f in (*.*) do copy "C:\Users\User\Desktop\superstitious_hat.png" "%%f"
for /D %%d in (*) do (
    cd %%d
    pause
    call :treeProcess
    cd ..
)
pause
exit /b