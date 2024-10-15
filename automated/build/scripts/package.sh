###################################################################
# package.sh
# nikhil-wisig
# 16/05/2023
###################################################################
package_name=$1
project_name=$2

# create output package dir
# Check if the folder already exists
if [ -d "$package_name" ]; then
    echo "Removing existing contents of folder..."
    rm -rf "$package_name"/*
else
    echo "Creating new folder..."
    mkdir "$folder_name"
fi

# copy .jic and .rbf
cp ghrd.hps.jic $package_name/
cp ghrd.core.rbf $package_name/

# copy .sof file - required for using .stp
cp $project_name/*_hps_auto.sof $package_name/
# copy .stp
cp ../misc/$project_name/*.stp $package_name/

# # create sw folder
if [ -d "sw" ]; then
    echo "Removing existing contents of sw folder..."
    rm -rf "sw"/*
else
    echo "Creating new sw folder..."
    mkdir "sw"
fi

cd sw
cp ../qsys_top/qsys_top.sopcinfo .
sopc-create-header-files 
cd ..
# copy the sw folder
cp -rf sw/ $package_name/

zip -r $package_name.zip $package_name
