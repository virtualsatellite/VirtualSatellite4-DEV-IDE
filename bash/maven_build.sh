#!/bin/bash

#/*******************************************************************************
# * Copyright (c) 2008-2019 German Aerospace Center (DLR), Simulation and Software Technology, Germany.
# *
# * This program and the accompanying materials are made available under the
# * terms of the Eclipse Public License 2.0 which is available at
# * http://www.eclipse.org/legal/epl-2.0.
# *
# * SPDX-License-Identifier: EPL-2.0
# *******************************************************************************/

# --------------------------------------------------------------------------
# This script handles the different calls to maven
# --------------------------------------------------------------------------

# fail the script if a call fails
set -e

# Store the name of the command calling from commandline to be properly
# displayed in case of usage issues
COMMAND=$0

# this method gives some little usage info
printUsage() {
	echo "usage: ${COMMAND} -j [assemble] -p [development|integration|release]"
	echo ""
	echo "Options:"
	echo " -j, --jobs <jobname>	    The name of the Travis-CI job to be build."
	echo " -p, --profile <profile>  The name of the maven profile to be build."
	echo ""
	echo "Jobname:"
	echo " assemble      To run full assemble including the java docs build."
	echo ""
	echo "Profile:"
	echo " development      Maven profile for development and feature builds."
	echo " integration      Maven profile for integration builds."
	echo " release          Maven profile for release builds. Fails to overwrite deployments."
	echo ""
	echo "Copyright by DLR (German Aerospace Center)"
}

checkforMavenProblems() {
	echo "Check for Maven Problems on Product:"
	(grep -n "\[\(WARN\|WARNING\|ERROR\)\]" maven.log \
	| grep -v "\[WARNING\] Checksum validation failed" \
	| grep -v "\[WARNING\] Could not validate integrity of download" \
	|| exit 0 && exit 1;)
}

callMavenAssemble() {
	if [ "$MAVEN_PROFILE" == "release" ] ; then
		DEPLOY_TYPE="deployBackuped"
	else
		DEPLOY_TYPE="deployUnsecured"
	fi
	echo "Maven - Assemlbe - ${MAVEN_PROFILE} - ${DEPLOY_TYPE}"
	(grep -n "\[\(WARN\|ERROR\)\]" maven.log || exit 0  && exit 1;)
	mvn clean install -P ${MAVEN_PROFILE},${DEPLOY_TYPE} -B -V | tee maven.log
	checkforMavenProblems
}


# process all command line arguments
while [ "$1" != "" ]; do
    case $1 in
        -j | --jobs )           shift
                                TRAVIS_JOB=$1
                                ;;
        -p | --profile )    	shift
                                MAVEN_PROFILE=$1
                                ;;
        -h | --help )           printUsage
                                exit
                                ;;
        * )                     printUsage
                                exit 1
    esac
    shift
done

case $MAVEN_PROFILE in
    development )       ;;
    integration )       ;;
    release )           ;;
    * )                 printUsage
                        exit 1
esac

# Decide which job to run
case $TRAVIS_JOB in
    assemble )      	callMavenAssemble
    					exit
                        ;;
    * )                 printUsage
                        exit 1
esac
