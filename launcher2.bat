@cd ..\src
@..\git\bin\git fetch
@..\git\bin\git reset --hard
@..\git\bin\git checkout test-v1.2.5 
@cd ..\resources
@..\git\bin\git fetch
@..\git\bin\git reset --hard
@..\git\bin\git checkout test-v1.2.4
@cd ..
@launcher\launcher3.bat
