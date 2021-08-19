#!/bin/bash
set -eEuoa pipefail

for terraform_version in ./*; do
    for kubectl_version in "$terraform_version"/*; do
        KUBE_V=$(awk -F  'kubectl'  '{print $2}'  <<<  $kubectl_version)
        TERRA_V=$(awk -F  'kubectl'  '{print $1}'  <<<  $terraform_version | awk -F  'terraform'  '{print $2}' )
        docker build -t floval/terraform-kubectl:${TERRA_V}-kubectl-${KUBE_V} $kubectl_version -q
        
    done
done 

docker push --all-tags floval/terraform-kubectl