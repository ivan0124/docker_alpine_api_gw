# How to test
Step1. clone project
<pre>
$ git clone https://github.com/ivan0124/docker_alpine_api_gw.git
</pre>

Step2. enter `docker_alpine_api_gw` directory and run `deploy.sh` script

Step3. test `RESTful API` (ex: below use `postman` to do test)

![result link](https://github.com/ivan0124/docker_alpine_api_gw/blob/master/images/docker_api_20161223.png)

# How to develop and update APIGateway
Step1. after launch `deploy.sh`, it will generate source code `APIGateway` directory

![result link](https://github.com/ivan0124/docker_alpine_api_gw/blob/master/images/docker_20161223_1.png)

Step2. enter `APIGateway` to edit source code and re-launch `deploy.sh`

Step3. test ok. then commit source code to `GitHub`

Step4. go to `Docker Hub` to build container image

https://hub.docker.com/r/ivan0124tw/docker_alpine_api_gw/~/settings/automated-builds/

Step5. running new container and update new source code
<pre>
$ rm ./APIGateway
$ ./deploy.sh
</pre>

