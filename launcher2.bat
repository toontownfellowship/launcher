@echo looking for game updates
@cd ..\src
@..\git\bin\git fetch
@..\git\bin\git reset --hard --quiet
@..\git\bin\git checkout master -quiet
@cd ..\resources
@..\git\bin\git fetch
@..\git\bin\git reset --quiet --hard --quiet
@..\git\bin\git checkout master -quiet
@cd ..
@launcher\launcher3.bat
