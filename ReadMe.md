## Roate Backup Docker Container
This is a simple docker container which offers the usage of rotate-backup in an docker env without installing python3 on the host.



### Usage

see docs of rotate-backup for more details

>  docker run --rm -it -v /folder/to/backup:/data -e "ROTATE_OPTIONS=--dry-run --daily=7 --weekly=4 --monthly=12" ghcr.io/legeiger/rotatebackup:v1

# push new image
https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry

> docker build -t rotatebackup:v1 .
> echo $PAT | docker login ghcr.io --username legeiger --password-stdin
> docker tag rotatebackup:v1  ghcr.io/legeiger/rotatebackup:v1
> docker push ghcr.io/legeiger/rotatebackup:v1


