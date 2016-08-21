#!/bin/bash

export PATH=${PATH}:/usr/texbin
cd .

# Syllabus
./generate.sh

# goalsAndObjectives
cd ./goalsAndObjectives
./generate.sh
cd ..

# lectures
cd ./lectures
./generate.sh
cd ..
