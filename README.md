## addpath.rb
Quicker way of appending new paths from ```~/.bashrc```.

    $ addpath.rb -h
    Usage: addpath.rb [-h] [-t | -d] [-c] [-p]
        -p, --prepend                    Prepend new path
        -t, --this                       Working directory will be added to $PATH
        -d, --directory DIRECTORY_PATH   Specify the directory
        -c, --comment COMMENT            Also add a comment line to .bashrc
        -h, --help                       Prints this help!
