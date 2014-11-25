#!/bin/bash

export PATH=${PATH}:/usr/texbin
cd .

# Syllabus
./generate.sh

# assignments
cd ./assignments
./generate.sh
cd ..

# goalsAndObjectives
cd ./goalsAndObjectives
./generate.sh
cd ..

# lectures
cd ./lectures
./generate.sh
cd ..
