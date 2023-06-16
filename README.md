Compile a file and upload it to a connected arduino.
## How to use 
1. Download the compile.sh file or clone the repo just get the file.
2. Add a new external tool under Configure>External Tools.
3. Give it a name and under executable give it the path to the compile.sh file.
4. Add under arguments %{Document:FilePath}.
## Limitations 
Can't chose betwen two or more arduinos. 
