@echo looking for game updates
@cd ..\src
@..\git\bin\git fetch
@..\git\bin\git reset --hard origin/master --quiet
@..\git\bin\git checkout master --quiet
@..\git\bin\git pull --quiet
@cd ..\resources
@..\git\bin\git fetch
@..\git\bin\git reset --hard  origin/master --quiet
@..\git\bin\git checkout master --quiet
@..\git\bin\git pull --quiet
@cd ..
@start /b launcher\newlaunch.hta
