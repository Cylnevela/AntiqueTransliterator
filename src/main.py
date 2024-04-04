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
import numpy as np

# Transliteration method

# Transliterate a latin word into a greek word
def toGreekAlphabet(word):
    greekWord = ""
    #for (letter in word):
    #    greekWord += letter
    
    print(greekWord)

# Change a letter from latin alphabet to greek alphabet
# Greek alphabet on unicode 0370–03FF
def latinSongToGreekAlphabet(song):
    match song:
        case "a":
            return "\u03b1"
        case "b":
            return "\u03b2"
        case "k":
            return ""
        case "d":
            return "\u03b4"
        case "eu":
            return ""
        case "é":
            return "\u03b5"
        case "è":
            return "\u03b7"
        case "an":
            return ""
        case "f":
            return "\u03c6"
        case "gu":
            return "\u03b3"
        case "ch":
            return ""
        case "i":
            return "\u03b9"
        case "in":
            return ""
        case "j":
            return ""
        case "l":
            return "\u03bb"
        case "m":
            return "\u03bc"
        case "n":
            return "\u03bd"
        case "o":
            return "\u03bf"
        case "ou":
            return ""
        case "p":
            return "\u03c0"
        case "ps":
            return "\u03c8"
        case "r":
            return "\u03c1"
        case "ss":
            return "\u03c3"
        case "t":
            return "\u03c4"
        case "u":
            return ""
        case "v":
            return ""
        case "w":
            return ""
        case "x":
            return ""
        case "z":
            return "\u03b6"

def greekAlphabetToUpperCase(letter):
    return (letter+"\u0020")

# Main method

print("Choose an antique language :")
print("1. Greek")

antiqueLanguage = input()
if antiqueLanguage=="1":
    print("We want to be greek !")
    while(True):
        print("Which word to transliterate ?")
        wordToTransliterate = input()
        #print(latinToGreekAlphabet("a"))
        #print(latinSongToGreekAlphabet(wordToTransliterate))
        #print(greekAlphabetToUpperCase("\u03c0"))
        SyllabusDivider.divideFrenchWord(wordToTransliterate)

else:
    print("Aarh, I am to ignorant to speak that")

