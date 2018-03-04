# Advanced bash scripting 2017
Script, resources and example code for the course **Advanced bash scripting**
taking place at the Ruprecht-Karls-Universität Heidelberg
from 6th – 10th November 2017.

Included files:
- [bash_course.pdf](bash_course.pdf): The main lecture notes
- [LICENCE](LICENCE): Overview how files in this repository are licensed.
- [resources/](resources/): Data necessary to run the examples and work on the exercises.

## Court order to block access from Project Gutenberg in Germany
As of 3rd March 2018 access to Project Gutenberg is blocked from Germany
due to a court order, see the
[official statement from PGLAF](https://cand.pglaf.org/germany/index.html)
(the organisation hosting Project Gutenberg) for details.
This implies as a user with a German IP address you will be unable to use the
download script mentioned below.
Unfortunately many of the exercises depend on the books from Project Gutenberg
and whilst it is possible to do them without the proper book files,
the results might deviate.
I am currently unaware of a good alternative to obtain the Project Gutenberg
books in a simple way and I am unsure about the
legal status regards hosting them myself.
In the lack of time on my side the excercises will stay broken for now,
which I very much regret.

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
