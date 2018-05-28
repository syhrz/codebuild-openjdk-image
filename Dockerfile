FROM openjdk:8-slim
ADD https://raw.githubusercontent.com/traveloka/aws-sudo/master/aws-sudo.sh /usr/local/bin/aws-sudo
RUN chmod 755 /usr/local/bin/aws-sudo
COPY gradle.properties.general1-large /root/.gradle/gradle.properties
RUN apt-get update && apt-get install -y --no-install-recommends \
		python-pip \
	&& rm -rf /var/lib/apt/lists/*
RUN pip install setuptools wheel awscli
