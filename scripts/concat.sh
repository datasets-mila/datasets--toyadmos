#!/bin/bash

# This script is meant to be used with the command 'datalad run'

git-annex get --fast ToyCar.7z.* ToyConveyor.7z.* ToyTrain.7z.*

cat ToyCar.7z.* > ToyCar.7z
cat ToyConveyor.7z.* > ToyConveyor.7z
cat ToyTrain.7z.* > ToyTrain.7z

git-annex drop --fast ToyCar.7z.* ToyConveyor.7z.* ToyTrain.7z.*

git rm ToyCar.7z.* ToyConveyor.7z.* ToyTrain.7z.*

md5sum ToyCar.7z ToyConveyor.7z ToyTrain.7z > md5sums
