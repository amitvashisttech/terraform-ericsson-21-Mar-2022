```
   22  terraform init ; terraform apply --auto-approve 
   23  ls
   24  kubectl get nodes 
   25  cat kubeconfig 
   26  kubectl get nodes --kubeconfig=kubeconfig 
   27  kubectl get pods  --kubeconfig=kubeconfig 
   28  kubectl run hello-k8s --image=nginx --port=80  --kubeconfig=kubeconfig 
   29  kubectl get pods  --kubeconfig=kubeconfig 
   30  kubectl expose pod hello-k8s --type=LoadBalancer --kubeconfig=kubeconfig 
   31  kubectl get svc   --kubeconfig=kubeconfig 
   32  cp -rf kubeconfig ~/.kube/config 
   33  kubectl get pods 
   34  kubectl get svc 
   35  kubectl delete svc hello-k8s 
   36  kubectl delete pod  hello-k8s 
```
