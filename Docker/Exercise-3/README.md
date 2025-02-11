## Prerequisites
- Docker installed ([Installation guide](https://docs.docker.com/get-docker/))
---
---

## 1. Prepare a File for Testing
First, create a test file that will be mounted into the container.

## For WSL/Linux/macOS Users
```sh
mkdir -p testdir
echo "Hello from WSL!" > testdir/file.txt
```
## 2. Build the docker image
```shell
docker build -t rootless-container .
```
## 3. Run the container
```shell
docker run --rm -v "$(pwd)/testdir/file.txt:/app/file.txt:ro" rootless-container
```
Expected Output: "Hello from WSL!"

## 4. Test for file permission restrictions
```shell
sudo chown root:root testdir/file.txt #Makes root the owner of the file
chmod 600 testdir/file.txt #Restricts access
```
## 5. Run the container again
```shell
docker run --rm -v "$(pwd)/testdir/file.txt:/app/file.txt:ro" rootless-container
```
Expected Output: "cat: /app/file.txt: Permission denied"