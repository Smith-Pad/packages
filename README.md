# packages
Packages for Smith-Pad-OS and Arch based distributions. 


# What is the benefit of this repository? 

The benefit of this repository is like this. You connected to a network where it is required
for pacman to update packages and upgrade packages, however, when it comes to performance 
updating or upgrading packages via pacman, it will kinda be a problem.  

Here are the steps as to how the process it works:

1. Based on scheduled time of day, the packages gets fetched via Git and downloads into 
   the local system. 


2. Using pacman.conf, it will not be routed packages from server. However the pacman.conf
   will be included with packages downloaded on the system, which means when you do 
   `sudo pacman -Syyu`. The update will be as quick before you blink an eye. 


**Overview of the updating packages process**

Based on the schedules time of day, the packages are been fetched and downloaded to Smith-Pad-OS
or arch based distro, then it will install/upgrade packages offline, which makes it quick. 


# Dependencies: 

- Smith-Pad-OS or arch based distributions
- repoadd
- repoctl 
- pacman 


# Steps to create your own repository
This is just an example in general. But this is how you are able to create
and maintain your own repositories. 


## Create a folder in a directory. 
```shell 
touch <folder name> 
```

## Change the directory into the folder name
```shell 
cd <folder name
````


## Then use `repo-add` <filename>.db.tar.gz

This will initialize pacman to recognize a local repository in the system.

```shell
repo-add packages.db.tar.gz
```

## Include the pacman.conf

### What does it mean? 
`name of the repository` = This the exact name that you added in the folder that you created 
					       from repo-add. 

```shell
[name of the repository here]
SigLevel = Optional TrustAll
Server = file:///home/<username>/packages
```
