voyelles = ['a','e','i','o','u','y']
consonnes = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','z']

greekSoundDictionary = {"a" : "\u03b1",
                        "b" : "\u03b2",
                        "gu": "\u03b3",
                        "d" : "\u03b4",
                        "é" : "\u03b5",
                        "dz": "\u03b6",
                        "z" : "\u03b6",
                        "è" : "\u03b7",
                        "th": "\u03b8",
                        "i" : "\u03b9",
                        "k" : "\u039a",
                        "l" : "\u03bb",
                        "m" : "\u03bc",
                        "n" : "\u03bd",
                        "x" : "\u03be",
                        "o" : "\u03bf",
                        "p" : "\u03c0",
                        "r" : "\u03c1",
                        "ss": "\u03c3",
                        "s ": "\u03c2",
                        "t" : "\u03c4",
                        "u" : "\u03c5",
                        "ou": "\u03c5",
                        "f" : "\u03c6",
                        "ph": "\u03c6",
                        "kh": "\u03c7",
                        "ps": "\u03c8",
                        "ô" : "\u03c9"}

# Change a letter from latin alphabet to greek alphabet
# Greek alphabet on unicode 0370–03FF
def latinSoundToGreekAlphabet(sound):

    for

    if sound in greekSoundDictionary:
        return greekSoundDictionary[sound]
    else:
        print("Sound unknown in Greek !")
        return ""

# Replace some french sound by a close greek sound 
# so the transliteration remains close
# The equivalence is arbitrary 
def latinPronunciationToGreekPronunciation(syllabus):
    syllabus.replace("j","ph")
    syllabus.replace("ç","ss")
    syllabus.replace("ci","ssi")
    syllabus.replace("ce","sse")
    syllabus.replace("cy","ssy")
    syllabus.replace("ai","è")
    syllabus.replace("oi","ua")
    syllabus.replace("oy","uai")
    syllabus.replace("v","b")
    syllabus.replace("eu","u")
    syllabus.replace("e","é")
    syllabus.replace("w","u")
    syllabus.replace("ch","kh")
    syllabus.replace("ga","gua")
    syllabus.replace("go","guo")

def toUpperCase(letter):
    return (letter-"\u0020")

def toLowerCase(letter):
    return (letter+"\u0020")

def transliterate(listOfSyllabus):
    listOfSyllabus[0].casefold()
    print(listOfSyllabus)

    for syllabus in listOfSyllabus:
        latinPronunciationToGreekPronunciation(syllabus)


    print(listOfSyllabus)