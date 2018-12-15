#!/usr/bin/bash
# Created by Wine... I was bored ok
echo "Output for YUM commands will not be stored in logs"
sleep 1
clear
echo "Upading your os"
apt-get update
yum update -y
sleep 1
clear

echo "creating installationFiles folder" 
echo '' &>> InstallLog.log
sleep 1
mkdir InstallationFiles 
cd InstallationFiles 
clear

echo "Cloning Wines repos and installing git" &> InstallLog.log
echo "Cloning Wines repos and installing git"
echo '' &>> InstallLog.log
apt-get install git &>> InstallLog.log
yum install git
sleep 1
git clone https://github.com/WineSec/Yakuza-autosetup.git &>> InstallLog.log
git clone https://github.com/WineSec/Hellsec.git &>> InstallLog.log
echo "Done"
sleep 1
clear

echo "Installing python" &>> InstallLog.log
echo "Installing python" 
echo '' &>> InstallLog.log
sleep 1
apt-get install python3 &>> InstallLog.log
yum install python3
apt-get install python2 &>> InstallLog.log
yum install python2
apt-get install python &>> InstallLog.log
yum install python
echo "Done"
sleep 1
clear

echo "installing modules" &>> InstallLog.log
echo "installing modules" 
echo '' &>> InstallLog.log
sleep 1
pip install termcolor &>> InstallLog.log
pip install requests &>> InstallLog.log
echo "Done"
sleep 1
clear

echo "cleaning up and creating logs" &>> InstallLog.log
echo "cleaning up and creating logs"
ls > FilesInstalled.txt
echo "Modules installed are python3, python2, python" &> ModulesInstalled.log
echo "Modules pipped are termcolor and requests" &>> ModulesInstalled.log
echo "Done"
sleep 1
clear

echo "finished installing" 
sleep 1
clear
echo "To access files do cd InstallationFiles" 
exit
