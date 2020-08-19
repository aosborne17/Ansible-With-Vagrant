# Running Our Virtual Machines


#### For more in depth notes please refer to the detailed notes [HERE](Detailed-Notes.md)

## Prerequisites

1) **Vagrant** can be installed [HERE](https://releases.hashicorp.com/vagrant/)
2) **GitBash** can be installed [HERE](https://git-scm.com/downloads)
3) **VirtualBox** can be installed [HERE](https://www.virtualbox.org/wiki/Downloads)

Note we do not need to have ansible installed on our local PC as we will be
installing it on our controller


## Cloning the Repository

- First we will clone the repository by downloading the zip

![](/images/Cloning-The-Repo.png)


## Entering Bash

- After we have extracted the zip file, we can then enter our folder through gitbash

![](/images/Entering-Gitbash.gif)


## Running the Application

- As we can see below, we have a bash script inside this folder that will run everything for us

![](/images/Showing-Setup-File.png)


#### Once we run this file, it will do the following:

- Vagrant up
- Provision our Three VMs
- Run our playbook within our controller
- Run Our Application

#### URLs

We can then locate to any of the three URLs below which will show us the application
running in our web browser

- http://192.168.33.10
- http://192.168.33.10/fibonacci/5
- http://192.168.33.10/posts


## Further Iterations

- Create a variable within my setup file that means we don't have to constantly input
the password

- Take advantage of the ansible commands and using more of them within my playbook

- Do the synchronisation through ansible as we wouldn't be able to sync using a VagrantFile on Ansible

- Create a controller using an EC2 instance on AWS, this should work the same and would
create a hybrid cloud as we have a combination of on premise and cloud compute services
