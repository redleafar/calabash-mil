#!/bin/bash
package="com.evancharlton.mileage"
mutantFolderBase="$package-mutant"
apkName="com.evancharlton.mileage_3110-aligned-debugSigned.apk"

for i in {1..100}
do
    mutantInd=$( printf '%d' $i)
    file="$mutantFolderBase$mutantInd/$apkName"
    evidenceName=$mutantFolderBase$mutantInd
    calabash-android resign $file                  
    echo "testing..."$file
    calabash-android run com.evancharlton.mileage.apk  > ../evidencias/$evidenceName.txt             
    adb uninstall "com.evancharlton.mileage"   
done
