TICK := ""
ENTRY := ""
INCLUDE := ""
CRSID := "dw445"

ifeq ($(TICK), "")
%:
	@:;echo "No tick specified."
else
build:
	@:;javac -cp $(INCLUDE):. uk/ac/cam/$(CRSID)/$(TICK)/*.java
rebuild: clean build
clean:      
	@:;cd uk/ac/cam/$(CRSID)/$(TICK);rm `ls | grep -P '(class$$)|(~$$)'`
package:
	@:;jar cfe $(CRSID)-$(TICK).jar uk.ac.cam.$(CRSID).$(TICK).$(ENTRY) uk/ac/cam/$(CRSID)/$(TICK)/*
endif