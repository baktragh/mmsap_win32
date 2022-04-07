## -*- Makefile -*-
##
## User: mk634832
## Time: 4. 4. 2022 15:21:00
## Makefile created by Oracle Developer Studio.
##
## This file is generated automatically.
##


#### Compiler and tool definitions shared by all build targets #####
CCC = g++
CXX = g++
BASICOPTS = -g
CCFLAGS = $(BASICOPTS)
CXXFLAGS = $(BASICOPTS) `pkg-config --cflags gtkmm-3.0` -I/c/app/msys32/usr/local/include
CCADMIN = 


# Define the target directories.
TARGETDIR_mmsap.exe=GNU-amd64-Windows


all: $(TARGETDIR_mmsap.exe)/mmsap.exe

## Target: mmsap.exe
OBJS_mmsap.exe =  \
	$(TARGETDIR_mmsap.exe)/alsaplayer.o \
	$(TARGETDIR_mmsap.exe)/asma.o \
	$(TARGETDIR_mmsap.exe)/columnmodel.o \
	$(TARGETDIR_mmsap.exe)/gui.o \
	$(TARGETDIR_mmsap.exe)/mmsap2.o \
	$(TARGETDIR_mmsap.exe)/playlist.o \
	$(TARGETDIR_mmsap.exe)/preferences.o
USERLIBS_mmsap.exe = $(SYSLIBS_mmsap.exe) 
DEPLIBS_mmsap.exe =  
LDLIBS_mmsap.exe = $(USERLIBS_mmsap.exe) `pkg-config --libs gtkmm-3.0` -lmingw32 -lSDL2Main -lSDL2 -L/c/app/msys32/usr/local/lib -lasap 


# Link or archive
$(TARGETDIR_mmsap.exe)/mmsap.exe: $(TARGETDIR_mmsap.exe) $(OBJS_mmsap.exe) $(DEPLIBS_mmsap.exe)
	$(LINK.cc) $(CCFLAGS_mmsap.exe) $(CPPFLAGS_mmsap.exe) -o $@ $(OBJS_mmsap.exe) $(LDLIBS_mmsap.exe)


# Compile source files into .o files
$(TARGETDIR_mmsap.exe)/alsaplayer.o: $(TARGETDIR_mmsap.exe) alsaplayer.cc
	$(COMPILE.cc) $(CCFLAGS_mmsap.exe) $(CPPFLAGS_mmsap.exe) -o $@ alsaplayer.cc

$(TARGETDIR_mmsap.exe)/asma.o: $(TARGETDIR_mmsap.exe) asma.cc
	$(COMPILE.cc) $(CCFLAGS_mmsap.exe) $(CPPFLAGS_mmsap.exe) -o $@ asma.cc

$(TARGETDIR_mmsap.exe)/columnmodel.o: $(TARGETDIR_mmsap.exe) columnmodel.cc
	$(COMPILE.cc) $(CCFLAGS_mmsap.exe) $(CPPFLAGS_mmsap.exe) -o $@ columnmodel.cc

$(TARGETDIR_mmsap.exe)/gui.o: $(TARGETDIR_mmsap.exe) gui.cc
	$(COMPILE.cc) $(CCFLAGS_mmsap.exe) $(CPPFLAGS_mmsap.exe) -o $@ gui.cc

$(TARGETDIR_mmsap.exe)/mmsap2.o: $(TARGETDIR_mmsap.exe) mmsap2.cc
	$(COMPILE.cc) $(CCFLAGS_mmsap.exe) $(CPPFLAGS_mmsap.exe) -o $@ mmsap2.cc

$(TARGETDIR_mmsap.exe)/playlist.o: $(TARGETDIR_mmsap.exe) playlist.cc
	$(COMPILE.cc) $(CCFLAGS_mmsap.exe) $(CPPFLAGS_mmsap.exe) -o $@ playlist.cc

$(TARGETDIR_mmsap.exe)/preferences.o: $(TARGETDIR_mmsap.exe) preferences.cc
	$(COMPILE.cc) $(CCFLAGS_mmsap.exe) $(CPPFLAGS_mmsap.exe) -o $@ preferences.cc



#### Clean target deletes all generated files ####
clean:
	rm -f \
		$(TARGETDIR_mmsap.exe)/mmsap.exe \
		$(TARGETDIR_mmsap.exe)/alsaplayer.o \
		$(TARGETDIR_mmsap.exe)/asma.o \
		$(TARGETDIR_mmsap.exe)/columnmodel.o \
		$(TARGETDIR_mmsap.exe)/gui.o \
		$(TARGETDIR_mmsap.exe)/mmsap2.o \
		$(TARGETDIR_mmsap.exe)/playlist.o \
		$(TARGETDIR_mmsap.exe)/preferences.o
	$(CCADMIN)
	rm -f -r $(TARGETDIR_mmsap.exe)


# Create the target directory (if needed)
$(TARGETDIR_mmsap.exe):
	mkdir -p $(TARGETDIR_mmsap.exe)


# Enable dependency checking
.KEEP_STATE:
.KEEP_STATE_FILE:.make.state.GNU-amd64-Windows

