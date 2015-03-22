#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux-x86
CND_DLIB_EXT=so
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/_ext/1528565638/pgm.o \
	${OBJECTDIR}/_ext/1528565638/testcodificar.o \
	${OBJECTDIR}/_ext/1528565638/testimagen.o \
	${OBJECTDIR}/_ext/2140695726/byte.o \
	${OBJECTDIR}/byte.o \
	${OBJECTDIR}/imagen.o \
	${OBJECTDIR}/main.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/esteganografia

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/esteganografia: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/esteganografia ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/_ext/1528565638/pgm.o: ../../Escritorio/esteganografia\ \(alumnos\)/esteganografia\ \(alumnos\)/src/pgm.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/1528565638
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1528565638/pgm.o ../../Escritorio/esteganografia\ \(alumnos\)/esteganografia\ \(alumnos\)/src/pgm.cpp

${OBJECTDIR}/_ext/1528565638/testcodificar.o: ../../Escritorio/esteganografia\ \(alumnos\)/esteganografia\ \(alumnos\)/src/testcodificar.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/1528565638
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1528565638/testcodificar.o ../../Escritorio/esteganografia\ \(alumnos\)/esteganografia\ \(alumnos\)/src/testcodificar.cpp

${OBJECTDIR}/_ext/1528565638/testimagen.o: ../../Escritorio/esteganografia\ \(alumnos\)/esteganografia\ \(alumnos\)/src/testimagen.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/1528565638
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1528565638/testimagen.o ../../Escritorio/esteganografia\ \(alumnos\)/esteganografia\ \(alumnos\)/src/testimagen.cpp

${OBJECTDIR}/_ext/2140695726/byte.o: ../../Escritorio/practica2/bloqueLed/src/byte.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/2140695726
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2140695726/byte.o ../../Escritorio/practica2/bloqueLed/src/byte.cpp

${OBJECTDIR}/byte.o: byte.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/byte.o byte.cpp

${OBJECTDIR}/imagen.o: imagen.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/imagen.o imagen.cpp

${OBJECTDIR}/main.o: main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main.o main.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/esteganografia

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
