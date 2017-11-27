# Docker Image for use with CI

It will build
- java 8
- nodejs 8

### To update the build runner

Make the relevant changes to the docker file.

``` docker build . ```

Find the image and run it

``` docker images ```

``` docker run -i -t IMAGE_ID /bin/bash ```

Check everything is as you expect

``` docker container ls```

Commit your contianer changes

``` docker commit  -m "MESSAGE" CONTAINER_ID energizedwork/ci-runner:TAG_VERSION ```

Push your changes to [docker hub](https://hub.docker.com/r/energizedwork/ci-runner/tags/)

``` docker push energizedwork/ci-runner:TAG_VERSION ```   

Update your .gitlab-ci.yml to use the new image

Test everything works, then commit and push your changes to the Dockerfile. 

### Updating nodejs

Because we're using Apline for the build runner we need to build nodejs from source. To help facilitate this we're using nvm, it means that we don't have to wait for Alpine to release a binary. 

### Possible improvements

Automate the steps above!
Remove the additional packages that are needed to build to help reduce the image size. 
