FROM mhasa004/ubuntu14.04-cuda7.0
MAINTAINER Mahmudul Hasan <mhasa004@ucr.edu>

# install torch7
RUN apt-get update && apt-get -y install curl
RUN curl -sk https://raw.githubusercontent.com/torch/ezinstall/master/install-deps | bash
RUN git clone https://github.com/torch/distro.git /opt/torch --recursive
RUN cd /opt/torch && yes | ./install.sh
