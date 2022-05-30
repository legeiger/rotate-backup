## Roate Backup Docker Container
This is a simple docker container which offers the usage of rotate-backup in an docker env without installing python3 on the host.


### Usage

docker run --rm -it -v /folder/to/backup:/data -e "ROTATION_SCHEME=--dry-run --daily=7 --weekly=4 --monthly=12"

> 
> 
