# pull base image
FROM alpine:latest

# Define packages versions
ENV TERRAFORM_VERSION="0.15.1"
ENV KUBE_VERSION="1.19.13"

# Labels
LABEL maintainer="florian.valery@outlook.com" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.name="floval/terraform-kubectl" \
    org.label-schema.description="Terraform and Kubectl in Alpine" \
    org.label-schema.url="https://github.com/FlorianValery/terraform-kubectl" \
    org.label-schema.vcs-url="https://github.com/FlorianValery/terraform-kubectl" \
    org.label-schema.vendor="Florian Valéry" \
    org.label-schema.docker.cmd="docker run --rm -it -v ~/.kube/config:/root/.kube/config floval/terraform-kubectl:${TERRAFORM_VERSION}-kubectl-${KUBE_VERSION}"

# Upgrade and install base packages
RUN apk update && apk add curl wget

# Install terraform 
RUN wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
RUN unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip && rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip
RUN mv terraform /usr/bin/terraform

# Install Kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v${KUBE_VERSION}/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv kubectl /usr/bin/kubectl

# Install AWS cli 
RUN apk add --no-cache python3 py3-pip \
    && pip3 install --upgrade awscli \
    && rm -rf /var/cache/apk/*

CMD terraform -v && kubectl version
