FROM openjdk:8-slim
ADD https://raw.githubusercontent.com/traveloka/aws-sudo/master/aws-sudo.sh /usr/local/bin/
RUN chmod 755 /usr/local/bin/aws-sudo.sh
