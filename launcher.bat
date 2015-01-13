@echo looking for launcher updates..
@cd launcher
@..\git\bin\git pull  --quiet
@..\git\bin\git reset --hard  --quiet
@launcher2.bat
