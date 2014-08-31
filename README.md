haproxy_internal
================

Special Dockerimage that Runs HaProxy inside a container that querys a dockerhost for all containers running with exposed port 80 and assignes hosts


dockerhost is hardcoded to 172.17.42.1.2434

    
#USE

    HAPROXY_INTERNAL=$(docker run -d -P -v /usr/bin/docker:/usr/bin/docker --restart="always" dockerimages/haproxy-internal)
    
#BUILD 

    BUILD_HAPROXY_INTERNAL=$(docker build -t dockerimages/haproxy-internal git://github.com/dockerimages/haproxy_internal)
