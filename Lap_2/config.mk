fileSrc1 = main.c
fileObj1 = main.o
fileHeader1 =

#fileSrc2 = MathGeek.c
fileSrc2 = MathGeek\MathGeek.c
fileObj2 = MathGeek\MathGeek.o
fileHeader2 = MathGeek\MathGeek.h

#fileSrc3 = FastPrinter.c
fileSrc3 = FastPrinter\FastPrinter.c
fileObj3 = FastPrinter\FastPrinter.o
fileHeader3 = FastPrinter\FastPrinter.h

fileSrc4 = ScanningEye\ScanningEye.c
fileObj4 = ScanningEye\ScanningEye.o
fileHeader4 = ScanningEye\ScanningEye.h 

fileSrc5 = AngrySpeaker\AngrySpeaker.c
fileObj5 = AngrySpeaker\AngrySpeaker.o
fileHeader5 = AngrySpeaker\AngrySpeaker.h

fileSrc6 = TheOldWise\TheOldWise.c
fileObj6 = TheOldWise\TheOldWise.o
fileHeader6 = TheOldWise\TheOldWise.h 

allObjs = $(fileObj1) $(fileObj2) $(fileObj3) $(fileObj4) $(fileObj5) $(fileObj6)
allSrcs = $(fileSrc1) $(fileSrc2) $(fileSrc3) $(fileSrc4) $(fileSrc5) $(fileSrc6)

CC = gcc

FinalTargetName=MasterApplication.exe

# if any of the files is not found at the same directory of the makefile
# or any of the files is not given a valid path, then the make begins to search
# for the not found folders in the folders given to VPATH variable  
#VPATH = MathGeek:FastPrinter