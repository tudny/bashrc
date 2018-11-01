

## Here starts my own .bashrc configuration
##   My own .bashrc


# makes stack unlimited
ulimit -Ss unlimited

# most common used function to compile .cpp files
# just type in:
# compile name_of_file
# but without .cpp at the end and it'll create executable file with no extension
function compile {
	g++ $1.cpp -O3 -std=c++17 -o $1
}

# same as few lines above but for SFML
function compileS {
    g++ $1.cpp -pthread -std=c++11 -o $1 -lsfml-graphics -lsfml-window -lsfml-system
}

# compiles using compile function and runs the program
function make {
    compile $1
    ./$1
}

# same as above but for SFML
function makeS {
    compileS $1
    ./$1
}

# my fav function for compiling
# it compiles file and runs main.cpp with test x.in as shown
# te main x
function te {
    compile $1
    ./$1 < $2.in
}

# makes infinite train
function train {
    while true; do sl; done;
}

# tests two .cpp with same test and diffs the resault
# e.g main.cpp main2.cpp test1.in
# testuj main main2 test1
function testuj {
	echo "compiling #1"
    compile $1.cpp
    echo "compiling #2"
    compile $2.cpp
    echo "testing"
    ./$1 < $3.in > wyjscieW.out
    ./$2 < $3.in > wyjscieB.out
    echo "score: "
    diff wyjscieW.out wyjscieB.out
}

function javaile {
	javac $1.java
	java $1
}

# installs the program
function inst {
	sudo apt install $1
}

alias wifi='wifi off && wifi on'
alias staszic='ssh -i ~/tudny.key tudny@boss.staszic.waw.pl'
alias intellij='cd ~ && ./Downloads/idea-IU-181.4203.550/bin/idea.sh'
alias drjava='java -jar ~/Downloads/drjava.jar'
alias zadanka='cd ~/Documents/C++/'
alias re='source ~/.bashrc && echo ".bashrc reloaded succesfully"'
alias oi='cd ~/Documents/C++/OI/OI26'
alias bashrc='gedit ~/.bashrc'
alias wwi='cd ~/Documents/C++/WWI2018'
alias preoi='cd ~/Documents/C++/PreOI'
alias janek='cd ~/Documents/C++/kolko'
alias xd='train'

export PS1="\[\033[38;5;9m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\] at \[$(tput sgr0)\]\[\033[38;5;25m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] in \[$(tput sgr0)\]\[\033[38;5;29m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\n\[$(tput sgr0)\]\[\033[38;5;153m\]>\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

