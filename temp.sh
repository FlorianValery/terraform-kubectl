#!/bin/bash
for terraform_version in ./*; do
    for kubectl_version in "$terraform_version"/*; do
        
        KUBE_V=${kubectl_version:25:4}
        TERRA_V=${terraform_version:11:7}
        docker build -t floval/terraform-kubectl:${TERRA_V}-kubectl-${KUBE_V} $kubectl_version
        docker push floval/terraform-kubectl:${TERRA_V}-kubectl-${KUBE_V}
    done
done