```bash
eksctl create cluster --name=eksc1 --nodes=2 --alb-ingress-access --region=eu-central-1 --ssh-access --asg-access  --full-ecr-access  --external-dns-access --appmesh-access --auto-kubeconfig --vpc-public-subnets=subnet-dfdc2993,subnet-eae30596
```

```bash
eksctl create cluster --name=eksc2 --nodes=2 --alb-ingress-access --region=eu-central-1 --ssh-access --asg-access  --full-ecr-access  --external-dns-access --appmesh-access --auto-kubeconfig --vpc-public-subnets=subnet-dfdc2993,subnet-eae30596
```

```bash
export KUBECONFIG=~/.kube/eksctl/clusters/eksc1
```

```bash
export KUBECONFIG=~/.kube/eksctl/clusters/eksc2
```


- VirtualNode
- VirtualService placeholder

https://aws.amazon.com/blogs/compute/learning-aws-app-mesh/


```
helm repo add eks https://aws.github.io/eks-charts
kubectl create ns appmesh-system
kubectl apply -f https://raw.githubusercontent.com/aws/eks-charts/master/stable/appmesh-controller/crds/crds.yaml
helm upgrade -i appmesh-controller eks/appmesh-controller --namespace appmesh-system
helm upgrade -i appmesh-inject eks/appmesh-inject --namespace appmesh-system --set mesh.create=true --set mesh.name=global
```

```
aws servicediscovery create-private-dns-namespace --name appmesh-demo.pvt.aws.local --vpc vpc-873cfced
```

https://aws.amazon.com/blogs/containers/cross-amazon-eks-cluster-app-mesh-using-aws-cloud-map/
