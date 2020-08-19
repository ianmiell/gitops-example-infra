# Example GitOps Infra Repository

This is adapted from: https://github.com/terraform-providers/terraform-provider-aws.git under: terraform-provider-aws/examples/eks-getting-started


## Branches

aws - terraform for AWS

gcp - terraform for GCP

## To Run This Up (AWS)

- Set up AWS account with appropriate privileges to create and administer the resources in this terraform module

- Create AWS key

- `aws configure`, using AWS key created above

- `terraform init`

- `terraform plan`

- `terraform apply`

- Configure your `kubectl` to use the config output by terraform, eg:

```
KUBECONFIG=newfile:~/.kube/config kubectl config view --merge --flatten > newkubeconfig
cp ~/.kube/config ~/.kube/config.$(date +%s)
mv newkubeconfig ~/.kube/config
kubectx   # choose aws context
```

## To Run This Up (GCP)

TODO


________________________

Original README.md below.

## EKS Getting Started Guide Configuration

This is the full configuration from https://www.terraform.io/docs/providers/aws/guides/eks-getting-started.html

See that guide for additional information.

NOTE: This full configuration utilizes the [Terraform http provider](https://www.terraform.io/docs/providers/http/index.html) to call out to icanhazip.com to determine your local workstation external IP for easily configuring EC2 Security Group access to the Kubernetes servers. Feel free to replace this as necessary.
