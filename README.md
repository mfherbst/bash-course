# Advanced bash scripting 2017
Script, resources and example code for the course **Advanced bash scripting**
taking place at the Ruprecht-Karls-Universität Heidelberg
from 6th – 10th November 2017.

Included files:
- [bash_course.pdf](bash_course.pdf): The main lecture notes
- [LICENCE](LICENCE): Overview how files in this repository are licensed.
- [resources/](resources/): Data necessary to run the examples and work on the exercises.

## Setup
Before being able to do the Project Gutenberg-related exercises, you should
run the script ``resources/gutenberg/download.sh`` from the ``resources/gutenberg``
directory, i.e.
```
cd resources/gutenberg
./download.sh
```

## Files for home
If you want a more fancy standard configuration, e.g. a coloured
output of grep or a colored command prompt, run the ``install.sh``
script from the `files_for_home` directory.
```
cd files_for_home
./install.sh
```
Note that this will replace some files in your home directory in case they exist.
Of course backup copies of every replaced file are retained.

## Course page
Some further information about the course
can be found on the
[course website](https://michael-herbst.com/teaching/advanced-bash-scripting-2017/).

The **solutions** to the exercises will also be published on the course website
during or after the course.

## Citing
If you use the course notes or any of the script examples in your work,
please this material:
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.1045332.svg)](https://doi.org/10.5281/zenodo.1038525)
