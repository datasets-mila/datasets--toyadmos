#!/bin/bash

# This script is meant to be used with the command 'datalad run'

for file_url in "https://zenodo.org/record/3351307/files/LICENSE.pdf?download=1  LICENSE.pdf" \
                "https://zenodo.org/record/3351307/files/ToyCar.7z.001?download=1  ToyCar.7z.001" \
                "https://zenodo.org/record/3351307/files/ToyCar.7z.002?download=1  ToyCar.7z.002" \
                "https://zenodo.org/record/3351307/files/ToyCar.7z.003?download=1  ToyCar.7z.003" \
                "https://zenodo.org/record/3351307/files/ToyCar.7z.004?download=1  ToyCar.7z.004" \
                "https://zenodo.org/record/3351307/files/ToyCar.7z.005?download=1  ToyCar.7z.005" \
                "https://zenodo.org/record/3351307/files/ToyCar.7z.006?download=1  ToyCar.7z.006" \
                "https://zenodo.org/record/3351307/files/ToyCar.7z.007?download=1  ToyCar.7z.007" \
                "https://zenodo.org/record/3351307/files/ToyCar.7z.008?download=1  ToyCar.7z.008" \
                "https://zenodo.org/record/3351307/files/ToyConveyor.7z.001?download=1  ToyConveyor.7z.001" \
                "https://zenodo.org/record/3351307/files/ToyConveyor.7z.002?download=1  ToyConveyor.7z.002" \
                "https://zenodo.org/record/3351307/files/ToyConveyor.7z.003?download=1  ToyConveyor.7z.003" \
                "https://zenodo.org/record/3351307/files/ToyConveyor.7z.004?download=1  ToyConveyor.7z.004" \
                "https://zenodo.org/record/3351307/files/ToyConveyor.7z.005?download=1  ToyConveyor.7z.005" \
                "https://zenodo.org/record/3351307/files/ToyConveyor.7z.006?download=1  ToyConveyor.7z.006" \
                "https://zenodo.org/record/3351307/files/ToyConveyor.7z.007?download=1  ToyConveyor.7z.007" \
                "https://zenodo.org/record/3351307/files/ToyTrain.7z.001?download=1  ToyTrain.7z.001" \
                "https://zenodo.org/record/3351307/files/ToyTrain.7z.002?download=1  ToyTrain.7z.002" \
                "https://zenodo.org/record/3351307/files/ToyTrain.7z.003?download=1  ToyTrain.7z.003" \
                "https://zenodo.org/record/3351307/files/ToyTrain.7z.004?download=1  ToyTrain.7z.004" \
                "https://zenodo.org/record/3351307/files/ToyTrain.7z.005?download=1  ToyTrain.7z.005" \
                "https://zenodo.org/record/3351307/files/ToyTrain.7z.006?download=1  ToyTrain.7z.006" \
                "https://zenodo.org/record/3351307/files/ToyTrain.7z.007?download=1  ToyTrain.7z.007" \
                "https://zenodo.org/record/3351307/files/ToyTrain.7z.008?download=1  ToyTrain.7z.008" \
                "https://zenodo.org/record/3351307/files/ToyTrain.7z.009?download=1  ToyTrain.7z.009"
do
        echo ${file_url} | git-annex addurl --raw --batch --with-files
done

md5sum -c md5sums
