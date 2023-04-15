# What is this repo about?

This repo consists about the veritas infrastructure code for deploying on to the veritas AWS account.

- This code written in [Terraform](https://www.terraform.io/) and wrapped with [Terragrunt](https://terragrunt.gruntwork.io/).

#### What is Terragrunt (TLDR)

- Terragrunt is a thin wrapper around Terraform that helps reduce the repetition of your code by working with multiple Terraform modules and Managing remote state.


### Working structure

- In this repo, there are 3 working directories. i.e **K8s, live, modules**.
    - K8s     = This directory consists of kubernetes manifests file.
    - live    = This directory consists of Terragrunt DRY code Implementation.
    - modules = This directory consists of pure Terraform code.

###  Managing Environments

- Unlike Terraform, Terragrunt manages it's environment using different folders.
- As you can see in the **live** folder of this repo. It also consists sub-folders, i.e **dev, prod, qa**.
- Each sub-folder consists of another sub-folders which are named after your terraform modules and also consists of one **terragrunt.hcl** inside that sub-folders and also one hcl file in the root of that sub-folders.

### Understanding Terragrunt.hcl

- The **terragrunt.hcl** file inside _live/dev/_, has the code to which it creates Backend and AWS provider.
- The **terragrunt.hcl** file inside  _live/dev/modules(ecr, eks, iam, vpc)_, contains the code blocks such as `include, terraform & inputs`.

    - include   = This code blocks will automatically search up the directory tree to find the root **terragrunt.hcl** and inherit the remote_state configuration from it by using `find_in_parent_folders` in-built function.
    - terraform = This block downloads the terraform source code from the path defined inside this block. So, each sub-module should point to only its specific sub-module source. Such as, **eks** should point to only **eks** source.
<br></br>
     
      For ex:
      ```terraform 
          {
           source = "../../../modules/eks"
           }
      ```
<br></br>
    - As of now, we are pointing the source locally. We also can point to a git repository. More information [here](https://terragrunt.gruntwork.io/docs/features/keep-your-terraform-code-dry/).
    - inputs    = inputs contains the code variables which would be used inside the Terraform.

<br></br>

- In this above mentioned pattern, the Terragrunt manages and maintain the different environments and backend.

```
Note: Terragrunt.hcl file should be present in each environment sub-folders and one terragrunt.hcl should be present in root of the sub-folder(/live/dev/terragrunt.hcl), which contains the backend configuration and provider.
```


### Kube manifests

- The K8s folder in this repo, contains manifests file which would be used to deploy in inside the K8s cluster.
  - Files
    - deploy.yaml = contains the configuration of Nginx-ingress-controller.
    - users.yaml  = deploys a deployment for image `jenasubodh/users-api` and also expose the service to it and creates Ingress - classType = Nginx

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->