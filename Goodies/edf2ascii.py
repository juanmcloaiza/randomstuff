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
        if fname.rsplit(".")[-1] == "edf":
            filenames.append(os.path.join(dirpath,fname))

for f in filenames: 
    print("Importing from:")
    print(f)

    img = fabio.open(f)
    print(img.header)

    data = img.data.astype("float64")
    new_destination = '.'.join([f.rsplit(".")[0], 'txt'])

    print("Saving to:")
    print(new_destination)
    np.savetxt(new_destination, data)

    print("------------------------")
