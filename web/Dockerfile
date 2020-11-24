From alexcheng/magento
RUN apt-get update &&\
	apt-get install -y git
RUN useradd --create-home  --gid 33 --password 123456 --uid 1000 --shell /bin/bash admin
USER admin
RUN git clone https://github.com/arialdomartini/oh-my-git.git ~/.oh-my-git && echo source ~/.oh-my-git/prompt.sh >> ~/.bashrc
USER root
