@echo retrieving src tree.. this will take a while...
@git\bin\git clone https://github.com/toontownfellowship/src.git
@echo retrieving resource tree.. this will take longer..
@git\bin\git clone https://github.com/toontownfellowship/resources.git
@echo retrieving launcher
@git\bin\git clone https://github.com/toontownfellowship/launcher.git
@copy launcher\launcher.bat .
