## Preparing the bound-mount file for WSL/Linux/Mac Users
```shell
mkdir -p ~/docker-data
```
```shell
echo "Hello from rootless Docker!" > ~/docker-data/file.txt
```
## Build the docker image
```shell
docker build -t rootless-container .
```
## Run the container
```shell
docker run --rm -v "C:\Users\hp\docker-data\file.txt:/app/file.txt:ro" rootless-container
```
## Expected Output
"Hello from WSL!"