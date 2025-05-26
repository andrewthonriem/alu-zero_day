#!/bin/bash

read -p "Enter the name of the directory to manage: " individual_activity

file1="submission1.txt"
file2="submission2.txt"

if [ -f "$individual_activity" ]; then
      echo "Error: A file named '$individual_activity' already exists. Cannot create a directory."
      exit 1


elif [ -d "$individual_activity" ]; then
    echo "Directory '$individual_activity' already exists."
    echo "Creating files inside '$individual_activity'..."
    touch "$individual_activity/$file1" "$individual_activity/$file2"
    echo "Files '$file1' and '$file2' have been created inside '$individual_activity'."

else
    echo "Directory '$individual_activity' does not exist. Creating it now..."
    mkdir "$individual_activity"
    echo "Directory '$individual_activity' created."
    echo "Creating files inside '$individual_activity'..."
    touch "$individual_activity/$file1" "$individual_activity/$file2"
    echo "Files '$file1' and '$file2' have been created inside '$individual_activity'."
fi
