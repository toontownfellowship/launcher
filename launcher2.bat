@cd ..\src
@..\git\bin\git fetch
@..\git\bin\git reset --hard --quiet
@..\git\bin\git checkout test-v1.2.5  --quiet
@cd ..\resources
@..\git\bin\git fetch
@..\git\bin\git reset --quiet --hard --quiet
@..\git\bin\git checkout test-v1.2.4 --quiet
@cd ..
@launcher\launcher3.bat
