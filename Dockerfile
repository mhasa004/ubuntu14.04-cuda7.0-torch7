FROM mhasa004/ubuntu14.04-cuda7.0-torch7.0
MAINTAINER Mahmudul Hasan <mhasa004@ucr.edu>

# install torch7
RUN apt-get update && apt-get -y install curl
RUN curl -sk https://raw.githubusercontent.com/torch/ezinstall/master/install-deps | bash
RUN git clone https://github.com/torch/distro.git ~/torch --recursive
RUN cd ~/torch 
RUN chmod +x ~/torch/install.sh
RUN yes | ~/torch/install.sh
