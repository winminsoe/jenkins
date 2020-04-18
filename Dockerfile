FROM jenkins/jenkins:lts

# Skip initial setup
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# install plugins
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/plugins.txt

# change user
USER root

# install aws cli
# https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux.html
RUN cd /tmp/ \
    && curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && ./aws/install

# install php cli
# https://packages.debian.org/stretch/php7.0-cli
RUN apt-get -y update \
    && apt-get install -y php7.0-cli

# change user
USER jenkins