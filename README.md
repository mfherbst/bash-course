# Advanced bash scripting 2017
Script, resources and example code for the course **Advanced bash scripting**
taking place at the Ruprecht-Karls-Universität Heidelberg
from 6th – 10th November 2017.

Included files:
- [bash_course.pdf](bash_course.pdf): The main script
	(currently still the old version of the same course taught in 2015)
- [LICENCE](LICENCE): Overview how files in this repository are licenced
- [resources/](resources/): Data neccessary to run the examples and work on the exercises.

## Setup
Before being able to do the Project Gutenberg-related exercises, you should
run the script ``resources/gutenberg/download.sh`` from the ``resources/gutenberg``
directory, i.e.
```
cd resources/gutenberg
./download.sh
```

If you want a more fancy ``.bashrc`` configuration, e.g. a coloured
output of grep or a colored command prompt, run the ``install.sh``
script from the files_for_home directory.
```
cd files_for_home
./install.sh
```
Note that this will replace your current ``.bashrc`` and your
current ``.profile`` in case these files exist.

## Course page
Some further information about the course
can be found on the
[course website](https://michael-herbst.com/teaching/advanced-bash-scripting-2017/).

The **solutions** to the exercises will also be published on the course website
during the course.

## Citing
If you use any of the script examples or the course notes,
please cite my work:
[![DOI](https://zenodo.org/badge/40785690.svg)](https://zenodo.org/badge/latestdoi/40785690)
