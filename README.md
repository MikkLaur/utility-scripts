## addpath.rb
Quicker way of appending new paths to ```~/.bashrc```.

    ~/utility.scripts $ ./addpath.rb -h
    Usage: addpath.rb [-h] [-t | -d] [-c] [-p]
        -p, --prepend                    Prepend new path
        -t, --this                       Working directory will be added to $PATH
        -d, --directory DIRECTORY_PATH   Specify the directory
        -c, --comment COMMENT            Also add a comment line to .bashrc
        -h, --help                       Prints this help!
    ~/utility.scripts $ ./addpath.rb -t -c "Utility scripts folder"
    > # Utility scripts folder
    > export PATH="$PATH:/home/mikk/utility.scripts"
