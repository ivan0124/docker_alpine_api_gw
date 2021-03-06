# How to test
Step1. clone project
<pre>
$ git clone https://github.com/ivan0124/docker_alpine_api_gw.git
</pre>

Step2. enter `docker_alpine_api_gw` directory and run `deploy.sh` script

Step3. test `RESTful API` (ex: below use `postman` to do test)

![result link](https://github.com/ivan0124/docker_alpine_api_gw/blob/master/images/docker_api_20161223.png)

# How to develop
Step1. after launch `deploy.sh`, it will generate source code `APIGateway` directory

![result link](https://github.com/ivan0124/docker_alpine_api_gw/blob/master/images/docker_20161223_1.png)

Step2. enter `APIGateway` to edit source code

Step3.re-launch `deploy.sh` to run new source code

# How to check container log
Step1. launch `log.sh`. then it output container log and show file name for you

# How to build new  container image
Step1. enter `APIGateway` directory and using `git add , git commit, git push` to commit source code to `GitHub`

Step2. go to `Docker Hub` to build container image

https://hub.docker.com/r/ivan0124tw/docker_alpine_api_gw/~/settings/automated-builds/

Step3. running new container and update new source code
<pre>
$ rm -rf ./APIGateway
$ ./deploy.sh
</pre>

