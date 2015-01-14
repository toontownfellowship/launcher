@echo looking for launcher updates..
@cd launcher
@..\git\bin\git pull
@..\git\bin\git reset --hard
@launcher2.bat
