# Terraform & Kubectl
Terraform and kubectl inside Docker to integrate within your Kubernetes CI/CD pipeline.  
The AWS CLI is also included for remote S3 backend.

![Image Size](https://img.shields.io/docker/pulls/floval/terraform-kubectl "Image Size") ![Image Size](https://img.shields.io/docker/image-size/floval/terraform-kubectl/latest "Image Size")

# Usage
## Get the image
```
docker pull floval/terraform-kubectl:latest
```
## Pull a specific image
```
docker pull floval/terraform-kubectl:[TAG]
```
## Loading your Kube config
```
docker run --rm --name terraform-kubectl -v /path/to/kube/config/file:/root/.kube/config floval/terraform-kubectl:latest
```

## Loading your AWS credentials
```
docker run --rm --name terraform-kubectl-e AWS_ACCESS_KEY={your_aws_key} -e AWS_SECRET_ACCESS_KEY={your_aws_secret_key}
```
## Gitlab job example
To avoid mounting a host file, you can grab your Kubernetes and AWS config as CI/CD variables.
```
terraform plan:
  stage: plan
  image: floval/terraform-kubectl:latest
  script:
    - echo $KUBE_CONFIG > /root/.kube/config
    - terraform init && terraform plan
  tags:
    - latest
```

## Drone job example
To avoid mounting a host file, you can grab your Kubernetes and AWS config as CI/CD variables.
```
- name: terraform plan
  image: floval/terraform-kubectl:latest
  commands:
    - echo $KUBE_CONFIG > /root/.kube/config
    - terraform init && terraform plan
  environment:
    KUBE_CONFIG:
        from_secret: KUBE_CONFIG
    AWS_ACCESS_KEY:
        from_secret: AWS_ACCESS_KEY
    AWS_SECRET_ACCESS_KEY:
        from_secret: AWS_SECRET_ACCESS_KEY
  tags:
    - latest
```
# Supported tags and respective `Dockerfile` links

Only Terraform v0.13 and kubectl 1.19 onward are supported.

## Terraform 1.0
* `latest`, `1.0.0-kubectl-1.21` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform1.0/terraform1.0.0/kubectl1.21)
* `1.0.0-kubectl-1.20` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform1.0/terraform1.0.0/kubectl1.20)
* `1.0.0-kubectl-1.19` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform1.0/terraform1.0.0/kubectl1.19)
## Terraform 0.15
* `0.15.5-kubectl-1.21` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.15/terraform0.15.5/kubectl1.21)
* `0.15.5-kubectl-1.20` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.15/terraform0.15.5/kubectl1.20)
* `0.15.5-kubectl-1.19` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.15/terraform0.15.5/kubectl1.19)
* `0.15.4-kubectl-1.21` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.15/terraform0.15.4/kubectl1.21)
* `0.15.4-kubectl-1.20` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.15/terraform0.15.4/kubectl1.20)
* `0.15.4-kubectl-1.19` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.15/terraform0.15.4/kubectl1.19)
* `0.15.3-kubectl-1.21` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.15/terraform0.15.3/kubectl1.21)
* `0.15.3-kubectl-1.20` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.15/terraform0.15.3/kubectl1.20)
* `0.15.3-kubectl-1.19` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.15/terraform0.15.3/kubectl1.19)
* `0.15.2-kubectl-1.21` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.15/terraform0.15.2/kubectl1.21)
* `0.15.2-kubectl-1.20` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.15/terraform0.15.2/kubectl1.20)
* `0.15.2-kubectl-1.19` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.15/terraform0.15.2/kubectl1.19)
* `0.15.1-kubectl-1.21` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.15/terraform0.15.1/kubectl1.21)
* `0.15.1-kubectl-1.20` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.15/terraform0.15.1/kubectl1.20)
* `0.15.1-kubectl-1.19` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.15/terraform0.15.1/kubectl1.19)
* `0.15.0-kubectl-1.21` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.15/terraform0.15.0/kubectl1.21)
* `0.15.0-kubectl-1.20` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.15/terraform0.15.0/kubectl1.20)
* `0.15.0-kubectl-1.19` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.15/terraform0.15.0/kubectl1.19)
## Terraform 0.14
* `0.14.11-kubectl-1.21` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.11/kubectl1.21)
* `0.14.11-kubectl-1.20` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.11/kubectl1.20)
* `0.14.11-kubectl-1.19` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.11/kubectl1.19)
* `0.14.10-kubectl-1.21` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.10/kubectl1.21)
* `0.14.10-kubectl-1.20` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.10/kubectl1.20)
* `0.14.10-kubectl-1.19` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.10/kubectl1.19)
* `0.14.9-kubectl-1.21` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.9/kubectl1.21)
* `0.14.9-kubectl-1.20` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.9/kubectl1.20)
* `0.14.9-kubectl-1.19` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.9/kubectl1.19)
* `0.14.8-kubectl-1.21` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.8/kubectl1.21)
* `0.14.8-kubectl-1.20` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.8/kubectl1.20)
* `0.14.8-kubectl-1.19` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.8/kubectl1.19)
* `0.14.7-kubectl-1.21` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.7/kubectl1.21)
* `0.14.7-kubectl-1.20` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.7/kubectl1.20)
* `0.14.7-kubectl-1.19` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.7/kubectl1.19)
* `0.14.6-kubectl-1.21` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.6/kubectl1.21)
* `0.14.6-kubectl-1.20` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.6/kubectl1.20)
* `0.14.6-kubectl-1.19` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.6/kubectl1.19)
* `0.14.5-kubectl-1.21` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.5/kubectl1.21)
* `0.14.5-kubectl-1.20` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.5/kubectl1.20)
* `0.14.5-kubectl-1.19` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.5/kubectl1.19)
* `0.14.4-kubectl-1.21` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.4/kubectl1.21)
* `0.14.4-kubectl-1.20` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.4/kubectl1.20)
* `0.14.4-kubectl-1.19` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.4/kubectl1.19)
* `0.14.3-kubectl-1.21` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.3/kubectl1.21)
* `0.14.3-kubectl-1.20` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.3/kubectl1.20)
* `0.14.3-kubectl-1.19` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.3/kubectl1.19)
* `0.14.2-kubectl-1.21` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.2/kubectl1.21)
* `0.14.2-kubectl-1.20` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.2/kubectl1.20)
* `0.14.2-kubectl-1.19` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.2/kubectl1.19)
* `0.14.1-kubectl-1.21` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.1/kubectl1.21)
* `0.14.1-kubectl-1.20` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.1/kubectl1.20)
* `0.14.1-kubectl-1.19` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.1/kubectl1.19)
* `0.14.0-kubectl-1.21` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.0/kubectl1.21)
* `0.14.0-kubectl-1.20` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.0/kubectl1.20)
* `0.14.0-kubectl-1.19` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.14/terraform0.14.0/kubectl1.19)
## Terraform 0.13
* `0.13.7-kubectl-1.21` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.13/terraform0.13.7/kubectl1.21)
* `0.13.7-kubectl-1.20` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.13/terraform0.13.7/kubectl1.20)
* `0.13.7-kubectl-1.19` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.13/terraform0.13.7/kubectl1.19)
* `0.13.6-kubectl-1.21` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.13/terraform0.13.6/kubectl1.21)
* `0.13.6-kubectl-1.20` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.13/terraform0.13.6/kubectl1.20)
* `0.13.6-kubectl-1.19` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.13/terraform0.13.6/kubectl1.19)
* `0.13.5-kubectl-1.21` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.13/terraform0.13.5/kubectl1.21)
* `0.13.5-kubectl-1.20` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.13/terraform0.13.5/kubectl1.20)
* `0.13.5-kubectl-1.19` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.13/terraform0.13.5/kubectl1.19)
* `0.13.4-kubectl-1.21` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.13/terraform0.13.4/kubectl1.21)
* `0.13.4-kubectl-1.20` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.13/terraform0.13.4/kubectl1.20)
* `0.13.4-kubectl-1.19` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.13/terraform0.13.4/kubectl1.19)
* `0.13.3-kubectl-1.21` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.13/terraform0.13.3/kubectl1.21)
* `0.13.3-kubectl-1.20` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.13/terraform0.13.3/kubectl1.20)
* `0.13.3-kubectl-1.19` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.13/terraform0.13.3/kubectl1.19)
* `0.13.2-kubectl-1.21` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.13/terraform0.13.2/kubectl1.21)
* `0.13.2-kubectl-1.20` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.13/terraform0.13.2/kubectl1.20)
* `0.13.2-kubectl-1.19` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.13/terraform0.13.2/kubectl1.19)
* `0.13.1-kubectl-1.21` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.13/terraform0.13.1/kubectl1.21)
* `0.13.1-kubectl-1.20` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.13/terraform0.13.1/kubectl1.20)
* `0.13.1-kubectl-1.19` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.13/terraform0.13.1/kubectl1.19)
* `0.13.0-kubectl-1.21` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.13/terraform0.13.0/kubectl1.21)
* `0.13.0-kubectl-1.20` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.13/terraform0.13.0/kubectl1.20)
* `0.13.0-kubectl-1.19` [Dockerfile](https://github.com/FlorianValery/terraform-kubectl/blob/master/terraform0.13/terraform0.13.0/kubectl1.19)

# Contributing
If the version that you need is missing, please create a [Pull Request](https://github.com/FlorianValery/terraform-kubectl/pulls).

# Maintainer

Maintained by [Florian Valéry](https://www.lebureau.dev)
