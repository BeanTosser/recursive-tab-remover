# recursive-tab-remover

## Purpose
recursive-tab-remover is a simple bash script that replace tabs in a set of files. In particular, the tool is designed to recursively replace tabs in every file in a given directory as well as all files in that directory's subdirectory tree. Users can choose this directory by supplying it as a command-line argument to the script:
```
./recursive-tab-remover /path/to/target/directory
```

## Limitations
At present, recursive-tab-remover is designed for a very specific personal use case. In its current state, it will only replace tabs in ".js" and ".css" files, and it will replace them with double-spaces. 

## Planned features
* accept a list of file extensions as a command line argument and only replace tabs in files with those extensions
* accept the string that will replace the tabs as a command line argument
