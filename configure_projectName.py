import os, shutil

# Current file path
filePath = os.getcwd()
# New product name
newProductName = os.path.basename(filePath)

# Get current product name
productName = 'BaseProject'
#for dir in os.listdir(filePath):
#    (shotname,extension) = os.path.splitext(dir)
#    if extension == '.xcworkspace':
#        productName = shotname
#        break

# Change the project name to the new project name

# Change directory names to the new project name
def changeDirName(path, dirnames):
    if dirname in dirnames:
        os.chdir(path)
        newdirname = dirname.replace(productName, newProductName)
        os.rename(dirname, newdirname)

for (path, filenames, dirnames) in os.walk(filePath):
    for dirname in dirnames:
        if dirname != 'configure_projectName.py':
            # Change the project name to the new project name
            try:
                content = open(os.path.join(path, dirname), 'r+')
                lines = content.readlines()
                for index,line in enumerate(lines):
                    lines[index] = line.replace(productName, newProductName)
                content = open(os.path.join(path, dirname), 'w+')
                content.writelines(lines)
                content.close()
                changeDirName(path, dirnames)
            except IOError:
                changeDirName(path, dirnames)

for (path, filenames, dirnames) in os.walk(filePath):
    for filename in filenames:
        if productName in filename:
            os.chdir(path)
            newfilename = filename.replace(productName, newProductName)
            os.rename(filename, newfilename)

# Delete configure_projectName.py and README.md
os.remove(os.path.join(filePath, 'README.md'))
os.remove(os.path.join(filePath, 'configure_projectName.py'))



