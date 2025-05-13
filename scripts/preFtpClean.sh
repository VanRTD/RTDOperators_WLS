#!/bin/bash
# preFtpClean.sh
# Author: Jay Butler
# Date: Dec 2020
# Purpose: 
#	This script supplements the documents FTP process by
#   deleting files and directories prior to the FTP file upload.
#
# Implementation:
#	This script must reside in directory /u01/app/config/rtd_share/operators
#	It is scheduled to run under crontab, starting minutes before the FTP process 
#	is scheduled to run. When started it looks for file ./operators/doClean.txt,
#	which gets uploaded by the FTP process when it starts. Upon finding the file this
#	script proceeds to delete the necessary files and directories prior to the FTP 
#	process uploading the files.
#
echo $(date)
echo "Starting..."
cd /u01/app/config/rtd_share/operators
# Provide up to 30 minutes to receive notification of an ftp attempt
echo "Waiting for doClean notification from the FTP process..."
for (( counter=180; counter>0; counter-- ))
do
    doClean=n
    if [ -f "/u01/app/config/rtd_share/operators/doClean.txt" ]; then
        echo $(date)
        echo "Proceeding with file and directory cleanup..."
        counter=0
        doClean=y
        rm /u01/app/config/rtd_share/operators/doClean.txt
    else
#        echo $(date)
#        echo "Not yet ready for cleanup"
        sleep 5
    fi
done

if [ doCleam="y" ]; then
    echo "Removing files and directories prior to the FTP..."
    cd /u01/app/config/rtd_share/operators/documents/MMD
    test "/u01/app/config/rtd_share/operators/documents/MMD" = "$PWD" && find . -type f -exec rm -rf {} + || echo "No action taken"
    test "/u01/app/config/rtd_share/operators/documents/MMD" = "$PWD" && find -type d -exec rm -rf {} + || echo "No action taken"
    rmdir /u01/app/config/rtd_share/operators/documents/MMD
    cd /u01/app/config/rtd_share/operators/documents/OperatorMiscFile
    test "/u01/app/config/rtd_share/operators/documents/OperatorMiscFile" = "$PWD" && find . -type f -exec rm -rf {} + || echo "No action taken"
    test "/u01/app/config/rtd_share/operators/documents/OperatorMiscFile" = "$PWD" && find -type d -exec rm -rf {} + || echo "No action taken"
    rmdir /u01/app/config/rtd_share/operators/documents/OperatorMiscFile
    cd /u01/app/config/rtd_share/operators/documents/TrainOrders
    test "/u01/app/config/rtd_share/operators/documents/TrainOrders" = "$PWD" && find . -type f -exec rm -rf {} + || echo "No action taken"
    test "/u01/app/config/rtd_share/operators/documents/TrainOrders" = "$PWD" && find -type d -exec rm -rf {} + || echo "No action taken"
    rmdir /u01/app/config/rtd_share/operators/documents/TrainOrders
    cd /u01/app/config/rtd_share/operators/documents/Transportation_Bulletins
    test "/u01/app/config/rtd_share/operators/documents/Transportation_Bulletins" = "$PWD" && find . -type f -exec rm -rf {} + || echo "No action taken"
    test "/u01/app/config/rtd_share/operators/documents/Transportation_Bulletins" = "$PWD" && find -type d -exec rm -rf {} + || echo "No action taken"
    rmdir /u01/app/config/rtd_share/operators/documents/Transportation_Bulletins
    cd /u01/app/config/rtd_share/operators/documents
else
    echo "Did not receive doClean notification. File and directory cleanup aborted!"
fi

echo "Exiting..."
echo $(date)
~
