# Base docker image
FROM ubuntu:wily
MAINTAINER Markus Kohler <markus.kohler@gmail.com>


# Install Darktable
RUN mkdir -p /usr/share/icons/hicolor && \
        echo 'deb http://ppa.launchpad.net/pmjdebruijn/darktable-release/ubuntu wily main' >> /etc/apt/sources.list && \
        apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 40C18E9EC07EE05F && \
	apt-get update && apt-get install -y \
	ca-certificates \
	gconf-service \
	hicolor-icon-theme \
	libappindicator1 \
	libasound2 \
	libcanberra-gtk-module \
	libcurl3 \
	libexif-dev \
	libgconf-2-4 \
	libgl1-mesa-dri \
	libgl1-mesa-glx \
	libnspr4 \
	libnss3 \
	libpango1.0-0 \
	libv4l-0 \
	libxss1 \
	libxtst6 \
	wget \
	xdg-utils \
        software-properties-common \
        packagekit-gtk3-module \
        darktable \
	--no-install-recommends && \
	 rm -rf /var/lib/apt/lists/*

#COPY local.conf /etc/fonts/local.conf

# Autorun darktable
CMD [ "sh", "-c","/usr/bin/darktable" ]
