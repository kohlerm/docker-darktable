# docker-darktable
Run it like this:

````
docker run  -ti -v /tmp/.X11-unix:/tmp/.X11-unix  -e DISPLAY=$DISPLAY darktable
````
You probably want to map more volumes for you data and potentially darktable config files (not tested yet)

You will need to use 
````
xhost +
````
or something more secure to allow access to your hosts display. 
