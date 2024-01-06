======================================================

Linux Computers(Servers); Linux OS; Linux Commands:

Operating System = LINUX OR WINDOWS OR MAC OS
# AWS is hosting our Linux Servers =

=================================================
ssh-client = ssh = secure shell = 22 =
ports ---> 0 - 65535
SECURED CONNECTION

    Backend  +      
        Linux OS
        SERVERS
    FRONTEND
       WORKSTATIONS/LAPTOPS
       Windows OS, MacOS, Ubuntu/Linux

What To Manage?

File management
User management account
Softwares - PACKAGE Management
     & More

How to manage?
    Graphical user interface = GUI
    Command LiNE Interface = CLI :
         Terminal = MackOS
         GIT-BASH
         PowerShell
         Command Prompt

LINUX COMMANDS

AWS, GCP, AZURE

 RedHat Linux Server in AWS = EC2 :
 Windows Laptop:
    mobaXterm
    git bash
    puTTY
    Powershell || Command Prompt :

MacOS Laptop:
   Terminal
   GIT-BASH
   Iterm2
   GUI = Graphical User Interface
   CLI = Command Line Interface

1991 Linux
   Solaris = PAID
     kernel
       Linus Deveoped LINUX OS from the Solaris kernel

Open Source i.e FREE OS
Other Operating Systems
   Linux - Linus   
   Windows - Bill Gates

Windows = c/ = root or admin directory
    PowerShell or Command prompt

PublicIP = 35.173.304.60  || HOSTName 
ssh-key labwork.pem           || password
user ec2-user             || ubuntu

Trusted Secured Conncetion
   ssh -i chmod 400 sshkeyName.pem

ssh -i sshkeyName.pem ec2-user@IPAdress
shh  -i labwork.pem.pem ec2-user@35.173.304.60

              LINUX FILE STRUCTURE
                 /   = ROOT directory

/home  /var  /opt  /bin  /sbin  /etc /lib  /tmp

Windows = c/
Linux
Windows = Folders and Files
Linux = Directiries and Files
     root Directories for linux is 
     /
         
ls -d /{home,var,opt,bin,sbin,etc,lib,tmp}
cd /home
cd /var


If you want to include hidden directories, you can use:
ls -d /{home,var,opt,bin,sbin,etc,lib,tmp}/*


LINUX BASIC COMMANDS:
===================
 mkdir = create directory
 ls = list files and directories
 mkdir devops-master
 mkdir devops
 mkdir -v test
                    -v verbose
    mkdir -pv Devops/SDLC/Linux/Jenkins/Git/Maven/Nexus/ 
              mkdir Devops/
              mkdir Devops/SDLC/
              mkdir Devops/SDLC/Linux/
              mkdir Devops/SDLC/Linux/Jenkins/
              mkdir Devops/SDLC/Linux/Jenkins/Git/
              mkdir Devops/SDLC/Linux/Jenkins/Git/Maven
              mkdir Devops/SDLC/Linux/Jenkins/Git/Maven/Nexus/ 

 cd Devops/SDLC/Linux/Jenkins/Git/Maven/Nexus/
 cd Devops
 cd SDLC
 cd Linux
 cd Jenkins
 cd Git
 cd Maven
 cd Nexus     


    = tree cannot be found
    = yum install tree
    sudo yum install tree

    users classes:
        Normal users
        Root / superuser / admin  cmmd sudo -i , going back "exit"
        system users
    Groups  Management categories      -Least previledges || assigned R W, || CRUD
       DevOps Engineers
          John
          James
       Developers  -normal users
          Jane
          Tatiana

       Intern    Restricted users
          Olu
          Che

rmdir it is use to delete empty directories
mkdir use to create directories
rm -r use to delete directries
commands in Linux are in lower case

cd = change directory
cd .. return to previous dir one step backward
cd ../../../  return  3 steps backward
cd ~    what is the result?
cd - what is the result?
pwd

Creating Files =
================
   touch db.sh

Listing files and directories = ls

ls -l  = long list
ls -a  = display hidden files and directories
ls -la  =
ls -lt
ls -ltr


Here's a breakdown of the options used:

-a: Show hidden files (files starting with a dot .).
-l: Use a long listing format, providing additional details about files.
-t: Sort by modification time.
-r: Reverse the order of the sort.


Linux is case sensitive =
   test / Test / TEST are different files in linux

yum install tree
sudo yum install tree

File creation
===========
     touch
        touch test.txt
    cat
      cat deploy.sh
    echo
       echo "DevOps-class is going to be great"
       echo "DevOps-class is going to be great" > great.py
    vi or vim

proc:
======
  cpuinfo    # lscpu  lscpu --help
  meminfo    # free -h        free --help
temp:
=====
opt:
====
etc :
====
  users
    paul
    erica
    simon
bin:
====
sbin or system bin:
   passwd
   shadow
   sudoers
   sshd_config
   useradd

what is the difference between bin and sbin
   sbin are binary files ONLY executable by users with admin previlleges, while 
   bin files are executable by any user
=====
users in LINUX
==============
   admin users
       root users
       normal users =
        useradd simon
        system users
            Jenkins installation create Jenkins user
ls = list Files and directories
whoami
home:
=====

Copy and paste from one dir to another
================================
    cp -R ~/"photo_dir" /backups  copy from photo dir to backup dir

cp -R ~/"photo" /backups




                      Lecture 4  Assignment 
Create an ec2 instance in AWS. SSH into the ec2 instance, please use the free tier instance(Amazon t2micro ) (send a screenshot if you successfully connect to the instance)
Enter as a superuser into the ec2Instance
Display the memory, disk and cpu information (send screenshot to the group)
Create a folder call DevOps-Master, inside DevOps-Master create a folder call SDLC, inside SDLC create a folder call Docker, insider Docker create a folder call Jenkins, inside Jenkins, create a folder call GitHub, inside GitHub create a folder call Git inside git create a folder call Gradle, inside Gradle create a folder call Docker-Hub
Create another folder in Git name the folder Nexus , in the Nexus folder create a file name mybook.txt,
Go back to your root directory install tree using this command `yum install tree
`run the command  `tree`, make a screenshot and send.




