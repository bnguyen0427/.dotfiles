#!/bin/bash      
#redirect all output from echo statements to a file called 'linuxsetup.log'    
#exec &>> linuxsetup.log    
#check if the operating system type is linux using the output of uname    
if [[ $(uname) != Linux ]]; then      
        echo "Error: this script only works on Linux systems."    
            
        exit 1    
fi          
#create the '.TRASH' directory in the home directory if it doesn't exit    
mkdir -p ~/.TRASH                                                              
    
#check if the '.vimrc; file exists    
if [[ -e ~/.vimrc ]]; then      
        #change the file name to .bup vimrc    
        mv ~/.vimrc ~/.bup vimrc        
        #Log a message to linuxsetup.l;wog    
        echo "The current .vimrc file was changed to '.bup vimrc'."    
fi          
#redirect the contents of the vimrc file to a file called .vimrc    
cat ./etc/vimrc > ~/.vimrc    
#add the statement source ~/.dotfiles    
echo source ~/.dotfiles >> ~/.bashrc 
