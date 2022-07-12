kubernetes

```bash
kubectl apply -f k8s-basic/
kubectl apply -f frontend.yaml
kubectl delete -f k8s-basic/
kubectl delete -f ./
```

<br>

Helm

```bash
helm list
helm install -f pathValue ชื่อrelease pathHelmChart   //ใช้ครั้งแรก
helm upgrade -f pathValue ชื่อrelease pathHelmChart   //ใช้ครั้งที่สองเป็นต้นไป
helm uninstall ชื่อrelease   //ลบออก
helm downgrade -f pathValue ชื่อrelease pathHelmChart

# ตัวอย่าง
helm install -f k8s-helm/helm-values/values-smb-dev.yaml sharemybook k8s-helm/helm --namespace=smb-workload
helm install -f k8s-helm-ssl/helm-values/values-smb-dev.yaml sharemybook k8s-helm-ssl/helm --namespace=smb-workload
helm upgrade -f k8s-helm-ssl/helm-values/values-smb-dev.yaml sharemybook k8s-helm-ssl/helm --namespace=smb-workload 
helm upgrade -f k8s-helm-ssl/helm-values/values-smb-dev.yaml --set extraEnv.COMMIT_ID=bb  sharemybook k8s-helm-ssl/helm --namespace=smb-workload 
helm uninstall sharemybook --namespace=smb-workload 
```


░░░░░░░░░░░░░░░░░░░░░▄▀░░▌  <br>
░░░░░░░░░░░░░░░░░░░▄▀▐░░░▌  <br>
░░░░░░░░░░░░░░░░▄▀▀▒▐▒░░░▌  <br>
░░░░░▄▀▀▄░░░▄▄▀▀▒▒▒▒▌▒▒░░▌  <br>
░░░░▐▒░░░▀▄▀▒▒▒▒▒▒▒▒▒▒▒▒▒█   <br>
░░░░▌▒░░░░▒▀▄▒▒▒▒▒▒▒▒▒▒▒▒▒▀▄   <br>
░░░░▐▒░░░░░▒▒▒▒▒▒▒▒▒▌▒▐▒▒▒▒▒▀▄   <br>
░░░░▌▀▄░░▒▒▒▒▒▒▒▒▐▒▒▒▌▒▌▒▄▄▒▒▐    <br>
░░░▌▌▒▒▀▒▒▒▒▒▒▒▒▒▒▐▒▒▒▒▒█▄█▌▒▒▌   <br>
░▄▀▒▐▒▒▒▒▒▒▒▒▒▒▒▄▀█▌▒▒▒▒▒▀▀▒▒▐░░░▄   <br>
▀▒▒▒▒▌▒▒▒▒▒▒▒▄▒▐███▌▄▒▒▒▒▒▒▒▄▀▀▀▀    <br>
▒▒▒▒▒▐▒▒▒▒▒▄▀▒▒▒▀▀▀▒▒▒▒▄█▀░░▒▌▀▀▄▄    <br>
▒▒▒▒▒▒█▒▄▄▀▒▒▒▒▒▒▒▒▒▒▒░░▐▒▀▄▀▄░░░░▀    <br>
▒▒▒▒▒▒▒█▒▒▒▒▒▒▒▒▒▄▒▒▒▒▄▀▒▒▒▌░░▀▄      <br>
▒▒▒▒▒▒▒▒▀▄▒▒▒▒▒▒▒▒▀▀▀▀▒▒▒▄▀     <br>