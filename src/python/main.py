# from PyQt5.QtGui import *
# from PyQt5.QtWidgets import *
# from PyQt5.QtCore import *

# import sys

#class MainWindow(QMainWindow):
#    pass

#app = QApplication(sys.argv)

#window = MainWindow()
#window.show()

#app.exec_()

import SyllabusDivider
import GreekTransliterator
import numpy as np

# Transliteration method

# Transliterate a latin word into a greek word
def toGreekAlphabet(word):
    greekWord = ""
    #for (letter in word):
    #    greekWord += letter
    
    print(greekWord)



# Main method

print("Choose an antique language :")
print("1. Greek")
print("2. Linear-B")

antiqueLanguage = input()
if antiqueLanguage=="1":
    print("We want to be greek !")
    while(True):
        #print("Which word to transliterate ?")
        #wordToTransliterate = input()
        #print(latinToGreekAlphabet("a"))
        #print(latinSoundToGreekAlphabet(wordToTransliterate))
        #print(greekAlphabetToUpperCase("\u03c0"))
        #SyllabusDivider.divideFrenchWord(wordToTransliterate)

        print("Which word to transliterate ? (each syllabus divided by a space)")
        wordToTransliterate = input()
        listOfSyllabus = wordToTransliterate.rsplit(" ")

        print(GreekTransliterator.transliterate(listOfSyllabus))
else:
    print("Aarh, I am to ignorant to speak that")

