# Advanced bash scripting 2015
Script, resources and example code for the course "Advanced bash scripting"
taking place at the Ruprecht-Karls-Universität Heidelberg
from 24th – 28th August 2015.

Included files:
- [bash_course.pdf](bash_course.pdf) --- The main script
- [LICENCE](LICENCE) --- Overview how files in this repository are licenced
- [resources/](resources/) --- Data neccessary to run the examples and do the exercises.

## Setup
Before being able to do the Project Gutenberg-related exercises, you should
run the script ``resources/gutenberg/download.sh`` from the ``resources/gutenberg`` directory, i.e.
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
The solutions to the exercises as well as some further information about the course
can be found on the [course website](http://blog.mfhs.eu/teaching/advanced-bash-scripting-2015/).
