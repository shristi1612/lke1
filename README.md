
To get started:

## Requirements
- [Git](https://git-scm.com/downloads) installed
- [Terraform](https://developer.hashicorp.com/terraform/downloads) installed
- [Kubectl](https://kubernetes.io/docs/tasks/tools/) installed

Create an account on [Linode](https://www.linode.com/cfe) and get an API Key in your linode account [here](https://cloud.linode.com/profile/tokens).

Once you have a key, do the following:

```bash
echo "linode_api_token=\"YOUR_API_KEY\"" >> terraform.tfvars
```

## 2. Initialize Terraform

```bash
terraform init
```

## 3. Terraform your Kubernetes Cluster
```bash
terraform apply
```
> Use `terraform apply -auto-approve` if you're really in a hurry.

## 4. Set your `KUBECONFIG` Environment Variable

```bash
export KUBECONFIG="./.kube/kubeconfig.yaml"
```
> If you are using VSCode, the `KUBECONFIG` variable is set in `tf-k8s.code-workspace` settings.

Verify your `KUBECONFIG` is set correctly:

```bash
kubectl get nodes
```

