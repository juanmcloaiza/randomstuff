import fabio
import os
import sys
import bornagain as ba
import numpy as np

if len(sys.argv) != 2:
    print("Please provide the directory where the edf files are")
    exit()

dirpath = sys.argv[1]
filenames = []
for root, dirs, files in os.walk(dirpath):
    for fname in files:
        extension = os.path.splitext(fname)[-1]
        if extension == ".edf":
            filenames.append(os.path.join(dirpath,fname))

for f in filenames: 
    print("Importing from:")
    print(f)

    img = fabio.open(f)

    data = img.data.astype("float64")
    path_no_extension = os.path.splitext(f)[-2]
    new_destination = path_no_extension + ".txt"
    new_destination_header = path_no_extension + "_head_" + ".txt"

    print("Saving to:")
    print(new_destination)
    print(new_destination_header)

    np.savetxt(new_destination, data)
    print(img.header, file=open(new_destination_header, "w"))

    print("------------------------")
