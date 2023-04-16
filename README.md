# packages

Packages for Smith-Pad-OS and Arch based distributions. 

# What is the benefit of this repository?

The benefit of this repository is like this. You connected to a network where it is required
for pacman to update packages and upgrade packages, however, when it comes to performance 
updating or upgrading packages via pacman, it will kinda be a problem.  

Here are the steps as to how the process it works:

1. Based on scheduled time of day, the packages gets fetched via Git and downloads into the local system. 

2. Using pacman.conf, it will not be routed packages from server. However the pacman.conf will be included with packages downloaded on the system, which means when you do  `sudo pacman -Syyu`. The update will be as quick before you blink an eye. 

**Overview of the updating packages process**

Based on the schedules time of day, the packages are been fetched and downloaded to Smith-Pad-OS
or arch based distro, then it will install/upgrade packages offline, which makes it quick. 

# Dependencies:

- Smith-Pad-OS or arch based distributions
- repoadd
- repoctl    
- pacman 
- makepkg
- fakeroot

# Steps to create your own repository

For more information about this, please refer to the Arch Wiki Documentation. 

1.  Create a directory inside /tmp because it is faster and recommended. 

```shell
## We recommend putting it under the /tmp folder to make it faster
mkdir /tmp/blankdb
```

2. Then  use pacman 

```shell
sudo pacman -Syyw --cachedir ./ --dbpath /tmp/blankdb curl
```

3. Then clone the repo `https://github.com/senalbulumulle 

4. Then use this command: 

```shell
cp -R /tmp/blankdb/ *.pkg.tar.zst /home/<user>/packaging
```

1. Then the use the repo-add command like this: 

```shell
repo-add myrepo.db.tar.gz <repository name that you just completed>
```
