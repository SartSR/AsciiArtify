##Deploy ArgoCD step-by-step
1. kubectl create namespace argocd\nkubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
 2. k port-forward svc/argocd-server -n argocd 8088:443&
 5066  k -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo

 Please take a look ArgoCD_login.gif in main