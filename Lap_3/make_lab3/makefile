include config.mk

allObjs = $(allSrcs:.c=.o)
allDeps = $(allSrcs:.c=.d)

$(FinalTargetName) : CFLAG = 
$(allObjs): CFLAG = -c
$(allDeps): CFLAG = -MM

$(FinalTargetName) : $(allObjs) 
	$(CC) $(CFLAG) $^ -o $@ 

# the below will act as if it's a loop, looping on $(allObjs) elements
# %.o : %.c means that anything .o is to be replaced with .c 
# Driver_%.c : Driver_%.o is another example
$(allObjs) : %.o : %.c 
	$(CC) $(CFLAG) $< -o $@ 
	
#	this is called extended prerequisites
# this means that object file will also depend on header file 
# $(fileObj1) : $(fileHeader1) 

# | Dependencies means that $(allDeps) depends on another target called Dependencies
# if there is no directory called Dependencies it will just copy the last .d file contents
# to a file called Dependencies
$(allDeps) : %.d : %.c | Dependencies
	$(CC) $(CFLAG) $< -o $@
	@copy /y $@ Dependencies\

# this target is reponsible for creating the Dependencies directory
Dependencies:
	@mkdir $@

.PHONY: clean link onlyCompile depend all

# rmdir => /S deletes directory with it's contents 
#          (normally you can't delete a directory that's not empty) 
#       => /Q quite mode: deletes without asking approval from user 
clean: 
	del /Q $(FinalTargetName) $(allObjs) $(allDeps)
	rmdir /S /Q Dependencies

link: 
	$(CC) $(CFLAG) $(allObjs) -o $(FinalTargetName)

onlyCompile: $(allObjs)

depend: $(allDeps)

# calling make with $(MAKE) and pass to it the final target name
# recursion call (make calls itself again inside make)
all: $(allDeps) 
	$(MAKE) $(FinalTargetName)
# all: $(allDeps) $(FinalTargetName) => this also can be used instead of the recursion 

