fileSrc1 = main.c
fileObj1 = main.o
fileHeader1 =

fileSrc2 = MathGeek\MathGeek.c
fileObj2 = MathGeek\MathGeek.o
fileHeader2 = MathGeek\MathGeek.h

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

$(FinalTargetName) : CFLAG = 
$(allObjs): CFLAG = -c

# Rule
# Target = $(FinalTargetName) : prerequisites = $(allObjs) [could be more than one] 
# 	recipe = $(CC) $(CFLAG) $(allObjs) -o $(FinalTargetName) 
# 	recipe consists of a set of commands not just one like here		
$(FinalTargetName): $(allObjs) 
	$(CC) $(CFLAG) $(allObjs) -o $(FinalTargetName) 
# End of Rule

$(fileObj1): $(fileSrc1) 
	$(CC) $(CFLAG) $(fileSrc1) -o $(fileObj1) 
$(fileObj2): $(fileSrc2) 
	$(CC) $(CFLAG) $(fileSrc2) -o $(fileObj2) 
$(fileObj3): $(fileSrc3) 
	$(CC) $(CFLAG) $(fileSrc3) -o $(fileObj3) 
$(fileObj4): $(fileSrc4) 
	$(CC) $(CFLAG) $(fileSrc4) -o $(fileObj4) 
$(fileObj5): $(fileSrc5) 
	$(CC) $(CFLAG) $(fileSrc5) -o $(fileObj5) 
$(fileObj6): $(fileSrc6) 
	$(CC) $(CFLAG) $(fileSrc6) -o $(fileObj6) 


clean: 
	del $(allObjs) $(FinalTargetName) 

link: 
	$(CC) $(CFLAG) $(allObjs) -o $(FinalTargetName)

# onlyCompile: $(allObjs)
# or use the below (both will work)
onlyCompile: 
	$(CC) -c $(fileSrc1) -o $(fileObj1) 
	$(CC) -c $(fileSrc2) -o $(fileObj2) 
	$(CC) -c $(fileSrc3) -o $(fileObj3) 
	$(CC) -c $(fileSrc4) -o $(fileObj4) 
	$(CC) -c $(fileSrc5) -o $(fileObj5)  
	$(CC) -c $(fileSrc6) -o $(fileObj6)   
	
	