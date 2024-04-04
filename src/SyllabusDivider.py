
voyelles = ['a','e','i','o','u','y']
consonnes = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','z']

# print the word with space between each syllabus
def divideFrenchWord(word):
    print("First hypothesis : each voyelle and consonne alternate")
    syllabus = ""
    endOfWordReach = False
    j=len(word)
    for i in range(len(word)):
        #print(i)
        if not endOfWordReach:
            if word[i] in voyelles:
                syllabus += word[i]
            # case of last inaudible letter
                if (i==(len(word)-2)):
                    if (word[i+1]=='e') or (word[i+1]=='s') or (word[i+1]=='t'):
                        syllabus += word[i+1]
                        endOfWordReach = True
                print(syllabus)
                syllabus = ""
            else:
                syllabus += word[i]