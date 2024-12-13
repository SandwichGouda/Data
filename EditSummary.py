
# UNSUPPORTED CHARACTERS :
# “ ”
# Note : Do not let empty title, like "###", "####"

def IsEmptyTitle(line):
    """
    Checks whether a line is an empty title,
    i.e. of the form "##", "## ", "###", "####", "### ", "#### " for instance.
    """
    if line[0] != '#' :
        return False
    k = 0
    while line[k] == '#' :
        k +=1
    # At this point line[k] is the line's first non-'#' character

    for i in range(k,len(line)):
        if line[i] != ' ' and line[i] != '\n' :
            return False
    return True
        

def GetLineBeginning(k):
    """
    Returns the beginning of the summary line given the number of '#' in a Markdown Title.
    The output is of the form : spaces, the right symbol, **and a space**.
    Examples : 
    # -> "- "
    ## -> "  * "
    ### -> "    + "
    #### -> "      - "
    ...and so on.
    """
    if k % 3 == 2 :
        Symbol = '-'
    elif k % 3 == 0 :
        Symbol = '*'
    else :
        Symbol = '+'
    return ((k-2)*'  ') + Symbol + ' '

def GetLineHyperlink(Linetitle):
    if Linetitle[0] == "@" :
        Linetitle = Linetitle[2:]
    Linetitle = Linetitle.replace(' ','-')
    Linetitle = Linetitle.replace('`','')
    Linetitle = Linetitle.lower()
    return Linetitle

def Proceed():
    
    with open("Data.md") as File :
        OldFileLines = File.readlines()

    SummaryLine = 0 # The number of Markdown Titles titles (lines starting with '#') encountered when processing (the lines of) Data.md
    Summary = ""

    NewFileLines = list(OldFileLines)

    IndexOfThirdHash = 4
    # Note : For the script to work, the beginning of Data.md must be ofsuch that 
    # The second Title line (= lines starting with a hash : #) is located at line 4 (counting lines from 0)
    # The Summary is written between the second and the third Title line 

    HashCount = 2
    while HashCount < 3 :
        IndexOfThirdHash += 1
        if OldFileLines[IndexOfThirdHash][0] == '#' :
            HashCount += 1

    # The summary's first line is OldFileLines[6], its last line is OldFileLines[IndexOfThirdHash-2]

    print("Beginning of summary :",OldFileLines[6])
    print("End of summary : ",OldFileLines[IndexOfThirdHash-2])
    ans = input("Proceed ? (y/n)")

    while ans != 'n' and ans != 'y' :
        ans = input("Proceed ? (y/n)")

    if ans == 'n' :
        quit()

    for n,Line in enumerate(OldFileLines):
        
        if IsEmptyTitle(Line) :
            print("Warning : Line "+str(n)+"is empty. Empty lines cannot be dealt be by this script.")
            print("The line reads :")
            print(Line)

        if Line[0] == '#' :
            SummaryLine += 1 # The count will start at 1
            if SummaryLine == 1 :
                continue
            k = 1
            while Line[k] == '#' :
                k += 1
            # line[0] to line[k-1] are '#', line[k] is ' ' (a space), then the title starts
            Linetitle = Line[k+1:-1]
            i = 1
            while Linetitle[-i] == ' ':
                Linetitle = Linetitle[:-1]
            Summary += GetLineBeginning(k) + '[' + Linetitle + '](' + '#' + GetLineHyperlink(Linetitle) + ')\n'

    NewFileLines = OldFileLines[:6] + [Summary] + OldFileLines[IndexOfThirdHash-1:]

    with open("Data.md",'w') as File :
        File.writelines(NewFileLines)
    input('Done.')

Proceed()
