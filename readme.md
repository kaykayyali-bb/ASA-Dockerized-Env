# Original Repo

Thanks to @mschnitzer for the fantastic work in providing the base linux container image.

https://github.com/mschnitzer/ark-survival-ascended-linux-container-image


## Setup
- On windows - Use WSL2, consider mounting the save game dir to a volume you have backed up
    - On Mac you may need to install docker on your own, not sure if brew supports installing
    - If you are unsure, just use docker desktop
- Install docker desktop for nice UI
- Simply clone, open the project in your WSL env (Or just the dir for Mac), ensure docker and docker-compose are installed on your WSL flavor of linux/OSX
- `docker-compose up -d`
- Change the configs in the server dirs to swap out the rules for each server.
- To make a new server, you can just duplicate 003 to 004, 005, etc...
