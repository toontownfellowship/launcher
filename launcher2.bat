@echo looking for game updates
@cd ..\src
@git fetch
@git reset --hard origin/master --quiet
@git checkout master --quiet
@git pull --quiet
@cd ..\resources
@git fetch
@git reset --hard  origin/master --quiet
@git checkout master --quiet
@git pull --quiet
@cd ..
@launcher\launcher3.bat
