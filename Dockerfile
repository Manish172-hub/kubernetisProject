FROM jenkins/jenkins:lts

USER root

# Install Docker
RUN apt-get update && apt-get install -y docker.io \
    && rm -rf /var/lib/apt/lists/*

# Install JDK 17 and Maven
RUN apt-get update && apt-get install -y openjdk-17-jdk maven \
    && rm -rf /var/lib/apt/lists/*

# Install kubectl
RUN curl -LO "https://dl.k8s.io/release/v1.26.0/bin/linux/amd64/kubectl" \
    && chmod +x kubectl \
    && mv kubectl /usr/local/bin/

# Set environment variables
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH="$JAVA_HOME/bin:$PATH"

USER jenkins
