# AntiqueTransliterator
Transliterate words from modern to antique languages

Modern languages available :
- French

Antique languages available :
- Greek
- Linear-B

## How to build it
To build the transliterator, use the following command :
For the Ada version :
gnatmake .\src\Ada\main.adb

or :
gprbuild -P .\src\Ada\AntiqueTransliterator.gpr

## How to launch it
To launch the transliterator, use the following command :
For the Ada version :
main.exe

For the python version :
py main.py

Then follow the instructions.

## Requirements
This tools requires PyQt5
or the gnat toolchain
