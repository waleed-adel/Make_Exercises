include config.mk

$(FinalTargetName) : CFLAG = 
$(allObjs): CFLAG = -c

# $? shows the files/dependicies that changed only (newer)
# newer means that they have time stamps newer than target 
# which means that they have changed after the build
# $(FinalTargetName): $(allObjs) 
# 	@echo Re-compile due to the following changes $?
# 	$(CC) $(CFLAG) $(allObjs) -o $(FinalTargetName) 

# $(fileObj1): $(fileSrc1) 
# 	$(CC) $(CFLAG) $(fileSrc1) -o $(fileObj1) 
# $(fileObj2): $(fileSrc2) 
# 	$(CC) $(CFLAG) $(fileSrc2) -o $(fileObj2) 
# $(fileObj3): $(fileSrc3) 
# 	$(CC) $(CFLAG) $(fileSrc3) -o $(fileObj3) 
# $(fileObj4): $(fileSrc4) 
# 	$(CC) $(CFLAG) $(fileSrc4) -o $(fileObj4) 
# $(fileObj5): $(fileSrc5) 
# 	$(CC) $(CFLAG) $(fileSrc5) -o $(fileObj5) 
# $(fileObj6): $(fileSrc6) 
# 	$(CC) $(CFLAG) $(fileSrc6) -o $(fileObj6) 

# $@ = target name 
# $^ = all prerequisites
$(FinalTargetName): $(allObjs) 
	$(CC) $(CFLAG) $^ -o $@ 

# $< =  means first prerequisites
$(fileObj1): $(fileSrc1) 
	$(CC) $(CFLAG) $< -o $@ 
$(fileObj2): $(fileSrc2)         
	$(CC) $(CFLAG) $< -o $@ 
$(fileObj3): $(fileSrc3)         
	$(CC) $(CFLAG) $< -o $@ 
$(fileObj4): $(fileSrc4)         
	$(CC) $(CFLAG) $< -o $@ 
$(fileObj5): $(fileSrc5)         
	$(CC) $(CFLAG) $< -o $@ 
$(fileObj6): $(fileSrc6)         
	$(CC) $(CFLAG) $< -o $@


# .PHONY targets are targets that doesn't represent a file 
# rather it represents an action to be taken 
# action means that it nust check the dependicies and perform recipe
.PHONY: clean link onlyCompile

# if a file called clean exists in the same directory of makefile
# then the make will tell you that there is no updates to the file and 
# will not perform the recipe, therefore we use .PHONY
clean: 
	del $(allObjs) $(FinalTargetName) 

link: 
	$(CC) $(CFLAG) $(allObjs) -o $(FinalTargetName)

onlyCompile: $(allObjs)
# or use the below (both will work)
#onlyCompile: 
#	$(CC) -c $(fileSrc1) -o $(fileObj1) 
#	$(CC) -c $(fileSrc2) -o $(fileObj2) 
#	$(CC) -c $(fileSrc3) -o $(fileObj3) 
#	$(CC) -c $(fileSrc4) -o $(fileObj4) 
#	$(CC) -c $(fileSrc5) -o $(fileObj5)  
#	$(CC) -c $(fileSrc6) -o $(fileObj6)   
	
	