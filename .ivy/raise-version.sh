#!/bin/bash

newVersion="$1"

oldVersion=$(mvn help:evaluate -Dexpression=project.version -q -DforceStdout)
mvn --batch-mode versions:set versions:commit -DnewVersion=${newVersion} -DprocessAllModules

newRelease=$(echo ${newVersion} | grep -o -E "[0-9]+\.[0-9]+")
oldRelease=$(echo ${oldVersion} | grep -o -E "[0-9]+\.[0-9]+")

./.ivy/substitute.sh ${newRelease} ${oldRelease}
