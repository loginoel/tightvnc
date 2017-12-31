FROM ubuntu

# set noninteractive mode
ENV DEBIAN_FRONTEND noninteractive

# update and install dependencies
RUN apt-get update && apt-get -y install git net-tools python xfonts-base xfonts-75dpi xfonts-100dpi

# install Xfce and VNC
RUN apt-get -y install xfce4 tightvncserver

# create VNC user
RUN useradd usergui --password password -m

# configure VNC user
COPY passwd.sh /tmp/
RUN su usergui -c '/tmp/passwd.sh' && su usergui -c 'vncserver'
COPY xstartup /home/usergui/.vnc/xstartup
RUN chown usergui:usergui /home/usergui/.vnc/xstartup && chmod 755 /home/usergui/.vnc/xstartup

# configure noVNC
ADD noVNC /opt/noVNC
RUN chown -R usergui:usergui /opt/noVNC

# set work directory
WORKDIR /opt/noVNC

# star VNC and noVNC
COPY runservices.sh /tmp/
ENTRYPOINT /tmp/runservices.sh
