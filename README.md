# Deploying an Azure Resource Group using Terraform

## Introduction

Using this repository you will be able to deploy an [Azure resource group](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal) using [Terraform](https://developer.hashicorp.com/terraform/docs). You will use a module, variables, and outputs to accomplish this deployment.

## License

This library is licensed under the MIT-0 License. See the LICENSE file.

## Prerequisites

Before you get started with deploying the solution, you must install the
following prerequisites:

1. [Azure Command Line Interface (Azure CLI)](https://learn.microsoft.com/en-us/cli/azure/) 
    -- for instructions, see [How to Install the Azure 
    CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)

1.  [Terraform](https://developer.hashicorp.com/terraform/docs)
    -- for instructions, see [Install Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

## Deploying the solution

The below steps deploy the reference implementation in Azure.

To deploy run the following commands from a
terminal session:

1.  Download code from GitHub repo 
    (<https://github.com/JoeTringali/terraform-azure-resource-group-name>).

2.  Edit the terraform.tfvars file to include the name and location of the resource group to be created:

```
name     = "my-resource-group"
location = "eastus"
```

3. Initialize the working directory:

```
  terraform init
```

4.  Make sure `providers.tf` is formatted correctly:

```
  terraform fmt
```

5. See what it's expecting for the resource group:

```
  terraform plan
```
> You should then see what the outputs will produce.

6.  Deploy your resource group:

```
terraform apply
```

7. Enter `yes` at the prompt. It will then take a few minutes to finish running.

8. Monitor the progress and wait for the completion of the ```terraform apply``` command before
proceeding.

9. Confirm that the resource group deployed:

```
terraform state list
```

10. Check the returned list of resources to ensure the resource group was successfully deployed.

11. In the [Azure Portal browser window](https://portal.azure.com/#home), navigate to **Resource groups** and confirm that your resource group is listed.

## Cleanup

To avoid ongoing charges for resources you created, run the following command from a
terminal session:

```
  terraform apply -destroy 
```

or 

```
  terraform destroy
```
