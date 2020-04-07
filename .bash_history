apt-get update && apt-get install -y apt-transport-https curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
sudo add-apt-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
apt-get update
sudo apt-get install -y kubelet kubeadm kubectl kubernetes-cni
systemctl enable kubelet
ip a
vim /etc/hosts
apt-get install bash-completion
echo "source <(kubectl completion bash)" >> ~/.bashrc
source .bashrc 
kubeadm init --apiserver-advertise-address=192.168.56.101  --node-name $HOSTNAME --pod-network-cidr=10.244.0.0/16
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
ls
ls -a
ls -la
sysctl net.bridge.bridge-nf-call-iptables=1
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
kubectl edit cm -n kube-system kube-flannel-cfg
kubectl get pod --all-namespaces 
kubectl get pod --all-namespaces  -o wide
kubectl get nodes 
kubectl get nodes  -o wide
kubectl get nodes 
ls
git clone https://github.com/kubernetes-sigs/metrics-server/tree/release-0.3
git clone https://github.com/kubernetes-sigs/metrics-server.git
ls
ls metrics-server/
ls metrics-server/deploy/
rm -rf metrics-server
git clone https://github.com/kubernetes-sigs/metrics-server/tree/release-0.3
git clone https://github.com/kubernetes-sigs/metrics-server/tree/release-0.3.git
mkdir deploy_metrics-server
cd deploy_metrics-server/
ls
cd ..
git clone https://github.com/kubernetes-sigs/metrics-server.git
ls
cd metrics-server/
ls
ls -l
cd ..
ls
rm -rf metrics-server/
cd deploy_metrics-server/
ls
touch aggregated-metrics-reader.yaml
touch auth-delegator.yaml
touch auth-reader.yaml
touch metrics-apiservice.yaml
touch metrics-server-deployment.yaml
touch metrics-server-service.yaml
touch resource-reader.yaml
ls -l
vim aggregated-metrics-reader.yaml 
vim auth-delegator.yaml 
vim aggregated-metrics-reader.yaml 
vim auth-reader.yaml 
ls
vim aggregated-metrics-reader.yaml 
vim auth-delegator.yaml 
vim auth-reader.yaml 
ls -l
vim auth-reader.yaml 
vim metrics-apiservice.yaml 
vim metrics-server-deployment.yaml 
vim metrics-server-service.yaml 
vim resource-reader.yaml 
ls
cd ..
cp -rf deploy_metrics-server save_deploy_metrics-server
cd deploy_metrics-server/
vim metrics-server-deployment.yaml 
ls
kubectl apply -f .
vim resource-reader.yaml 
vim rauth-delegator.yaml
ls
vim auth-delegator.yaml 
ls -l
vim aggregated-metrics-reader.yaml 
vim auth-delegator.yaml 
vim auth-reader.yaml 
vim metrics-apiservice.yaml 
vim metrics-server-deployment.yaml 
vim metrics-server-service.yaml 
vim resource-reader.yaml 
kubectl apply -f .
vim resource-reader.yaml 
kubectl apply -f metrics-server-deployment.yaml 
kubectl get pods -n kube-system 
kubectl top node
ls
kubectl delete deploy metrics-server -n kube-system 
kubectl get apiservices.apiregistration.k8s.io 
kubectl get apiservices.apiregistration.k8s.io | grep metrics
kubectl get apiservices.apiregistration.k8s.io | grep metric
ls
kubectl apply -f .
kubectl apply -f . --validate=false
kubectl get pods -n kube-system 
kubectl top node
kubectl get apiservices.apiregistration.k8s.io | grep metric
kubectl top node
cd ~
ls
history 
history | more
ls -la
mkdir -p /srv/data
vim /srv/data/index.html
ls
vim pod.yml
kubectl apply -f pod.yml 
kubectl get pods
kubectl get pods -o wide
curl 10.244.1.4
ls
mv pod.yml pod_hostPath.yml 
vim pod_hostPath.yml 
cp -p pod_hostPath.yml pod_emptyDir.yml 
vim pod_emptyDir.yml 
vim pod_hostPath.yml 
vim pod_emptyDir.yml 
ls
kubectl get pods
kubectl delete pods monpod
vim pod_emptyDir.yml 
kubectl apply -f pod_emptyDir.yml 
vim pod_emptyDir.yml 
kubectl apply -f pod_emptyDir.yml 
vim pod_emptyDir.yml 
kubectl apply -f pod_emptyDir.yml 
vim pod_emptyDir.yml 
kubectl apply -f pod_emptyDir.yml 
vim pod_emptyDir.yml 
kubectl apply -f pod_emptyDir.yml 
kubectl apply -f pod_hostPath.yml 
kubectl delete pods monpod
kubectl apply -f pod_emptyDir.yml 
vim pod_emptyDir.yml 
kubectl get pods
kubectl get pods --all
kubectl delete pods --all
vim pod_emptyDir.yml 
kubectl apply -f pod_emptyDir.yml 
vim pod_emptyDir.yml 
kubectl apply -f pod_emptyDir.yml 
kubectl get pods 
kubectl get pods -o wide
vim pod_emptyDir.yml 
kubectl get pods -o wide
vim pod_emptyDir.yml 
kubectl get pods
kubectl delete pods monpod
kubectl apply -f pod_emptyDir.yml 
kubectl get pods
kubectl get pods -o wide
vim pod_emptyDir.yml 
ls
git init .
git commit -m "first commit"
history > cmd_k8s.txt
vim cmd_k8s.txt 
git add .
git commit -m "first commit"
git remote add origin https://github.com/thegodsson/K_s_cmd2.git
git push -u origin master
ls
kubectl exec -ti monpod -c mondebian /bin/bash
history > cmd_k8s.txt
vim pod_emptyDir.yml 
git add cmd_k8s.txt 
git commit -m "update"
git push -u origin master
ls
vim pod_persitentVolume.yml
mkdir -p /pvdata
vim /pvdata/index.html
kubectl apply -f pod_persitentVolume.yml 
vim pod_persitentVolume.yml
kubectl apply -f pod_persitentVolume.yml 
kubectl get pods
vim pod_persitentVolume.yml
kubectl get pv
mv pod_persitentVolume.yml 1_pod_persitentVolume.yml 
vim 2_pod_persitentVolumeClaim.yml
ls
vim source.txt
ls
vim 2_pod_persitentVolumeClaim.yml 
kubectl apply -f 2_pod_persitentVolumeClaim.yml 
kubectl get pv
kubectl get pvc
vim 3_utilisation_du_pv_et_pvc_par_le_pod.yml 
vim 2_pod_persitentVolumeClaim.yml 
vim 1_pod_persitentVolume.yml 
vim 2_pod_persitentVolumeClaim.yml 
vim 3_utilisation_du_pv_et_pvc_par_le_pod.yml 
vim 1_pod_persitentVolume.yml 
ls -l /pvdata/
vim 3_utilisation_du_pv_et_pvc_par_le_pod.yml 
vim 1_pod_persitentVolume.yml 
vim 2_pod_persitentVolumeClaim.yml 
vim 3_utilisation_du_pv_et_pvc_par_le_pod.yml 
kubectl apply -f 3_utilisation_du_pv_et_pvc_par_le_pod.yml 
kubectl get pods -o wide
vim /pvdata/index.html 
cat 1_pod_persitentVolume.yml 
vim 3_utilisation_du_pv_et_pvc_par_le_pod.yml 
vim 2_pod_persitentVolumeClaim.yml 
vim 1_pod_persitentVolume.yml 
kubectl get pv
kubectl get pvc
kubectl get pods -o wide
curl 10.244.1.8
ls -l /pvdata/
ls -l /srv/data/index.html 
cp /srv/data/index.html /pvdata/
cat /pvdata/index.html 
curl 10.244.1.8
kubectl get pods -o wide
kubectl delete pods monpod
kubectl delete pods monpods
kubectl apply -f 3_utilisation_du_pv_et_pvc_par_le_pod.yml 
kubectl get pods -o wide
ls -l /pvdata/
cat /pvdata/index.html 
vim 3_utilisation_du_pv_et_pvc_par_le_pod.yml 
vim 1_pod_persitentVolume.yml 
vim pod_hostPath.yml 
vim 3_utilisation_du_pv_et_pvc_par_le_pod.yml 
vim pod_hostPath.yml 
vim 3_utilisation_du_pv_et_pvc_par_le_pod.yml 
vim pod_hostPath.yml 
vim 3_utilisation_du_pv_et_pvc_par_le_pod.yml 
kubectl delete pods monpods
kubectl apply -f 3_utilisation_du_pv_et_pvc_par_le_pod.yml 
kubectl get pods -o wide
kubectl delete pods monpods
kubectl delete pv pv
kubectl get pv
kubectl delete pv monpv
kubectl get pv
kubectl get pvs
kubectl get pv
kubectl delete pv monpv
vim 1_pod_persitentVolume.yml 
vim pod_hostPath.yml 
vim 1_pod_persitentVolume.yml 
vim 2_pod_persitentVolumeClaim.yml 
vim 3_utilisation_du_pv_et_pvc_par_le_pod.yml 
vim 1_pod_persitentVolume.yml 
mkdir /pvdata2
cp -p /srv/data/index.html /pvdata2/
ls -l /pvdata2/
kubectl apply -f 1_pod_persitentVolume.yml 
kubectl apply -f 2_pod_persitentVolumeClaim.yml 
kubectl apply -f 3_utilisation_du_pv_et_pvc_par_le_pod.yml 
kubectl get pods -o wide
kubectl describe pods monpod2 | moremonpod2
kubectl describe pods monpod2 | more
kubectl describe pvs monpvs2
kubectl get pv
kubectl get pvs
kubectl get pvc
kubectl describe pvc monpvs2
kubectl describe pvc monpvc2
kubectl describe pv monpv2
kubectl describe pods monpod2 
cd /pvdata2/
ls
rm index.html 
vim index.html
cd -
vim 1_pod_persitentVolume.yml 
vim 2_pod_persitentVolume.yml 
vim 2_pod_persitentVolumeClaim.yml 
vim 3_utilisation_du_pv_et_pvc_par_le_pod.yml 
kubectl exec -ti monpod2 /bin/bash
ls -l 
ls -l /srv/
ls -l /srv/data/
ls -ld /srv
ls -ld /srv/data/
ls -ld /srv/data/index.html 
ls -ld /pvdata2
ls -ld /pvdata2/index.html 
vim 1_pod_persitentVolume.yml 
vim 2_pod_persitentVolumeClaim.yml 
vim 3_utilisation_du_pv_et_pvc_par_le_pod.yml 
vim 2_pod_persitentVolumeClaim.yml 
vim 3_utilisation_du_pv_et_pvc_par_le_pod.yml 
kubectl get pods
kubectl delete pods monpod2
kubectl get pvc
kubectl delete pvc monpvc2
kubectl get pv
kubectl delete pv monpv2
kubectl get pods
kubectl get pvc
kubectl get pv
kubectl get pvc
kubectl delete pvc monpvc
kubectl get pv
kubectl apply -f 1_pod_persitentVolume.yml 
kubectl apply -f 2_pod_persitentVolumeClaim.yml 
kubectl apply -f 3_utilisation_du_pv_et_pvc_par_le_pod.yml 
kubectl get pods -o wide
rm -rf /pvdata*
ls
ls -la
df -h
df -h | grep tmp
df -h | grep -w tmp
mount -t nfs 192.168.56.1:/srv/exports /tmp
ip a | grep 56
mount -t nfs 192.168.56.102:/srv/exports /tmp
df -h
df -h | grep -w tmp
vim /tmp/test1.txt 
ls
ls -l /tmp/
ls
vim 1_pod_persitentVolume.yml 
cp -p 1_pod_persitentVolume.yml 1_pv_nfs.yml
vim 1_pv_nfs.yml 
kubectl apply -f 1_pv_nfs.yml 
kubectl get pv
cp -p 2_pod_persitentVolumeClaim.yml 2_pvc_nfs.yml
vim 2_pvc_nfs.yml 
kubectl apply -f 2_pvc_nfs.yml 
kubectl get pv,pvc
cp -p 3_utilisation_du_pv_et_pvc_par_le_pod.yml 3_NFS_utilisation_du_pv_et_pvc_par_le_pod.yml 
vim 3_NFS_utilisation_du_pv_et_pvc_par_le_pod.yml 
kubectl apply -f 3_NFS_utilisation_du_pv_et_pvc_par_le_pod.yml 
vim 3_NFS_utilisation_du_pv_et_pvc_par_le_pod.yml 
kubectl get pv,pvc
vim 3_NFS_utilisation_du_pv_et_pvc_par_le_pod.yml 
kubectl apply -f 3_NFS_utilisation_du_pv_et_pvc_par_le_pod.yml 
vim 3_NFS_utilisation_du_pv_et_pvc_par_le_pod.yml 
kubectl apply -f 3_NFS_utilisation_du_pv_et_pvc_par_le_pod.yml 
kubectl get pods
kubectl describe nginx-deploy
kubectl describe pods nginx-deploy
kubectl get pods
kubectl delete pods monpod2
kubectl get pvc
kubectl delete pvc monpvc2
kubectl get pv
kubectl delete pv monpv2
kubectl get pv,pvc
kubectl get pods
kubectl delete pods nginx-deploy
kubectl get pods
kubectl get pv,pvc
kubectl delete pvc mynfspvc
kubectl delete pv mynfspv
kubectl get pv,pvc
kubectl apply -f 1_pv_nfs.yml 
kubectl get pv,pvc
kubectl apply -f 2_pvc_nfs.yml 
kubectl get pv,pvc
vim 2_pvc_nfs.yml 
kubectl get pv,pvc
kubectl describe pvc mynfspvc 
kubectl get pv,pvc
vim 2_pvc_nfs.yml 
vim 1_pv_nfs.yml 
kubectl get pv,pvc
kubectl delete pvc mynfspvc 
kubectl delete pv mynfspv 
kubectl get pv,pvc
kubectl apply -f 1_pv_nfs.yml 
kubectl get pv,pvc
kubectl apply -f 2_pvc_nfs.yml 
kubectl get pv,pvc
kubectl apply -f 3_NFS_utilisation_du_pv_et_pvc_par_le_pod.yml 
kubectl get pv,pvc
kubectl get pv,pvc,pods
kubectl get pods -o wide
kubectl exec -ti nginx-deploy /bin/bash
kubectl get pv,pvc,pods
kubectl delete pods nginx-deploy
kubectl get pv,pvc
kubectl delete pvc mynfspvc 
kubectl delete pv mynfspv 
kubectl get pv,pvc,pods
ls
mkdir cas_pratique_pv_pvc
cd cas_pratique_pv_pvc/
cp -p ../1_pv_nfs.yml 1_pv_nfs.yml
vim 1_pv_nfs.yml 
kubectl apply f 1_pv_nfs.yml 
vim 1_pv_nfs.yml 
kubectl apply -f 1_pv_nfs.yml 
kubectl get pv,pvc,pods
cp ../2_pvc_nfs.yml 2_pvc_nfs.yml
vim 2_pvc_nfs.yml 
kubectl apply -f 2_pvc_nfs.yml 
kubectl get pv,pvc,pods
vim 3_pods.yml
mv 3_pods.yml 3_pod_mysql.yml
vim 3_pod_mysql.yml 
kubectl apply -f 3_pod_mysql.yml 
vim 3_pod_mysql.yml 
kubectl get pv,pvc,pods
vim 3_pod_mysql.yml 
kubectl apply -f 3_pod_mysql.yml 
vim 3_pod_mysql.yml 
kubectl get pv,pvc,pods
vim 3_pod_mysql.yml 
kubectl apply -f 3_pod_mysql.yml 
kubectl get pv,pvc,pods
kubectl get pv,pvc
kubectl get pv,pvc,pods
kubectl describe pods mysql-deploy 
kubectl describe pods mysql-deploy | more
apt-get install mysql-client
kubectl get pods -o wide
mysql -h 10.244.1.14 -u root -p
vim 3_pod_mysql.yml 
mysql -h 10.244.1.14 -u root -p
vim 3_pod_mysql.yml 
kubectl get pods -o wide
kubectl delete pods mysql-deploy 
ls
vim 3_pod_mysql.yml 
cp -p 3_pod_mysql.yml 3_pod_mysql_V2.yml 
vim 3_pod_mysql_V2.yml 
kubectl apply -f 3_pod_mysql.yml 
kubectl get pods -o wide
vim 3_pod_mysql_V2.yml 
ls
mkdir cas1
mv *.yml cas1/
mkdir cas2
cd cas2/
ls
vim nginx.yml
ls
cp -p ../cas1/3_pod_mysql.yml nginx.yml
vim nginx.yml 
kubectl apply -f nginx.yml 
vim nginx.yml 
kubectl apply -f nginx.yml 
kubectl get pods -o wide
cp nginx.yml debian.yml
vim debian.yml 
kubectl get pods -o wide
kubectl apply -f debian.yml 
kubectl get pods -o wide
vim debian.yml 
kubectl delete pods debian-deploy 
vim debian.yml 
kubectl apply -f debian.yml 
kubectl get pods
kubectl get pods -o wide
kubectl exec -ti debian-deploy /bin/bash
kubectl get pods -o wide
kubectl delete pods debian-deploy
kubectl get pods -o wide
kubectl exec -ti nginx-deploy bin/bash
cd ..
ls
cd ..
ls
mkdir replicaset
cd replicaset/
vim nginx.yml
mv nginx.yml rs_nginx.yml
vim rs_nginx.yml 
kubectl apply -f rs_nginx.yml 
vim rs_nginx.yml 
kubectl apply -f rs_nginx.yml 
kubectl get replicaset 
kubectl get replicaset -o wide
kubectl describe rs monrs 
kubectl get pods
kubectl get pods -o yaml
kubectl get pods -o yaml | more
ls
cd ..
ls
cat cmd_k8s.txt 
ls
cd replicaset/
kubectl get rs
kubectl delete rs monrs 
kubectl get pods
kubectl get pods -n kube-system 
kubectl apply -f rs_nginx.yml 
kubectl get pods
kubectl get rs
kubectl get pods
vim rs_nginx.yml 
kubectl get pods
kubectl delete pods --all
kubectl get rs
kubectl delete rs monrs 
kubectl get rs
kubectl get pods
kubectl apply -f rs_nginx.yml 
kubectl get rs
kubectl get pods
vim rs_nginx.yml 
kubectl get pods
kubectl get rs
kubectl get pods
kubectl describe pods monrs-69n7k
kubectl delete rs monrs 
kubectl delete pods --all
kubectl apply -f rs_nginx.yml 
kubectl get pods
kubectl get rs
kubectl get pods
kubectl delete pods monrs-8zvrl
kubectl get pods
kubectl delete pods --all
kubectl get pods
kubectl delete rs monrs 
kubectl get pods
kubectl get rs
vim pods.yml
kubectl apply -f pods.yml 
kubectl get pods
ls
mv rs_nginx.yml 1_rs_nginx.yml 
mv pods.yml 2_pods.yml 
cp 1_rs_nginx.yml 3_rs_nginx.yml 
vim 3_rs_nginx.yml 
kubectl get pods
kubectl apply -f 3_rs_nginx.yml 
kubectl get 
kubectl get pods
kubectl get rs
kubectl get pods
cat 2_pods.yml 
cat 3_rs_nginx.yml 
kubectl get pods
kubectl get s
kubectl get rs
kubectl delete rs front2 
kubectl get pods
cd ..
ls
mkdir pv_pvs_pod
mv 1_p* pv_pvs_pod/
ls
mv 2_p* pv_pvs_pod/
ls
mv 3_* pv_pvs_pod/
ls
cat pod_emptyDir.yml 
ls
cat source.txt 
ls
mkdir configmaps_secrets
mv configmaps_secrets configmaps_secrets_1
ls
cd configmaps_secrets_1/
ls
kubectl create configmap langue --from-literal=LANGUAGE=Fr
kubectl get configmap
kubectl get configmap langue 
kubectl describe configmap langue 
kubectl create secret generic mysql_password --from-literal=MYSQL_PASSWORD=monmotdepasse
kubectl create secret generic mysqlpassword --from-literal=MYSQL_PASSWORD=monmotdepasse
kubectl describe secret langue 
kubectl describe secret mysqlpassword 
kubectl get secret mysqlpassword 
kubectl delete configmap langue
kubectl create configmap langue --from-literal=LANGUAGE=Fr --from-literal=ENCODING=UTF-8
kubectl get configmap langue
kubectl describe configmap langue
kubectl get configmap
vim maconf.cfg
kubectl get configmap
kubectl describe configmap langue
ls
cat maconf.cfg 
kubectl describe configmap langue
history 
kubectl create configmap maconfiguration --from-file=maconf.cfg 
kubectl get configmap
kubectl describe configmaps maconfiguration 
kubectl edit configmap maconfiguration 
kubectl describe configmaps maconfiguration 
kubectl create configmap maconfiguration --from-literal=LANGUAGE=Es -o yaml --dry-run | kubectl replace -f -
kubectl describe configmaps maconfiguration 
ls
cd ..
mkdir configmaps_secrets_2
cd configmaps_secrets_2/
vim 1_personne.yml
mv 1_personne.yml configmap.yml
vim configmap.yml 
kubectl apply -f configmap.yml 
vim configmap.yml 
kubectl apply -f configmap.yml 
kubectl get configmap 
kubectl describe configmap personne 
cat ../source.txt 
ls
mv configmap.yml 1_configmap.yml 
vim 2_configmap.yml
kubectl get configmap 
kubectl describe configmap personne 
ls
mv 2_configmap.yml 2_pod.yml
kubectl apply -f 2_pod.yml 
kubectl get configmap 
kubectl describe configma
kubectl describe configmap personne 
kubectl get pods
kubectl describe pods monpod 
kubectl delete pods monpod 
vim 2_pod.yml 
kubectl apply -f 2_pod.yml 
kubectl describe pods monpod 
vim 2_pod.yml 
kubectl describe pods monpod 
kubectl delete pods monpod 
kubectl apply -f 2_pod.yml 
kubectl describe pods monpod 
kubectl get pods
kubectl describe pods monpod 
kubectl get pods
kubectl delete pods monpod 
vim 2_pod.yml 
kubectl get pods
kubectl apply -f 2_pod.yml 
kubectl get pods
kubectl describe pods monpod 
kubectl describe configmap personne 
kubectl logs monpod 
kubectl delete pods monpod 
ls
cp -p 2_pod.yml 3_pod.yml 
vim 3_pod.yml 
vim 2_pod.yml 
vim 3_pod.yml 
kubectl apply -f 3_pod.yml 
kubectl get pods
kubectl logs monpod 
ls
vim 4_volume_fichier.yml
mv 4_volume_fichier.yml 4_maconf.yml
vim 4_maconf.yml 
kubectl apply -f 4_maconf.yml 
kubectl describe configmap hello
kubectl delete pod
kubectl get pods
kubectl delete pod monpod 
ls
kubectl get configmap
ls
vim 5_pods.yml
ls
vim 5_pods.yml
kubectl get configmap
kubectl describe configmap hello 
kubectl apply -f 5_pods.yml 
kubectl get pods
kubectl get pods -o wide
kubectl describe configmap hello 
vim 5_pods.yml
kubectl delete pods monpod 
kubectl apply -f 5_pods.yml 
kubectl get pods -o wide
kubectl exec -ti 10.244.1.47 /bin/bash
kubectl exec -ti -name 10.244.1.47 /bin/bash
kubectl exec -ti monpod /bin/bash
kubectl get pods -o wide
kubectl delete pods monpod 
ls
mv 5_pods.yml 5_pods_fichier.yml 
cp -p 5_pods_fichier.yml 6_pods_repertoire.yml 
vim 6_pods_repertoire.yml 
vim index.html
vim david.html
ls
kubectl create configmap mondir --from-file=index.html --from-file=david.html 
kubectl get configmap
kubectl describe configmap mondir 
vim 6_pods_repertoire.yml 
kubectl apply -f 6_pods_repertoire.yml 
kubectl get pods
kubectl get pods -o wide~
kubectl get pods -o wide
cd ..
mkdir deploiments
cd deploiments/
ls
cd ..
ls
cd deploiments/
ls
vim ngnix.yml
vim 1_ngnix.yml
mv 1_ngnix.yml 1_deploy.yml 
vim 1_deploy.yml 
kubectl apply -f 1_deploy.yml 
kubectl get deploy
kubectl get deploy -o wide
kubectl get deploy
ls
vim 2_service.yml
kubectl get deploy
kubectl get deploy -o wide
kubectl get pods -o wide
vim 2_service.yml
kubectl apply -f 2_service.yml 
kubectl get service
kubectl get service -o wide
ls
vim 1_deploy.yml 
ls
cp -p 1_deploy.yml 2_deploy.yml 
vim 2_deploy.yml 
kubectl apply -f 2_deploy.yml 
ls
mkdir rolling_update
mv *.yml rolling_update/
ls
mkdir recreate
cd recreate/
ls
vim 1_deploy.yml
cd ..
ls
cd ..
ls
vim cas_pratique_pv_pvc/cas1/1_pv_nfs.yml 
vim cas_pratique_pv_pvc/cas2/nginx.yml 
vim cas_pratique_pv_pvc/cas2/debian.yml 
vim cas_pratique_pv_pvc/cas1/2_pvc_nfs.yml 
vim cas_pratique_pv_pvc/cas1/3_pod_mysql.yml 
vim cas_pratique_pv_pvc/cas1/3_pod_mysql_V2.yml 
cd deploiments/
ls
cd recreate/
vim 1_deploy.yml 
ls
kubectl apply -f 1_deploy.yml 
kubectl delete pods monpod 
cd ..
ls
mv rolling_update 1
mv recreate 2_recreate
mkdir rolling_update
ls
ls -l
cd rolling_update/
ls
vim 1_deploy.yml
kubectl delete deploy myfirstdeploy 
vim 1_deploy.yml
kubectl apply -f 1_deploy.yml 
ls
ls -l
kubectl get deploy
ls
cat ../1/2_service.yml 
cp ../1/2_service.yml .
ls
vim 2_service.yml 
vim 1_deploy.yml 
cp 1_deploy.yml 2_deploy.yml 
vim 2_deploy.yml 
ls
kubectl apply -f 2_deploy.yml 
cp 2_deploy.yml 3_deploy.yml 
vim 3_deploy.yml 
ls
cat 1_deploy.yml 
cat 2_deploy.yml 
vim 3_deploy.yml 
kubectl apply -f 3_deploy.yml 
vim 3_deploy.yml 
kubectl get pods
vim 3_deploy.yml 
kubectl apply -f 3_deploy.yml 
vim 3_deploy.yml 
kubectl apply -f 3_deploy.yml 
vim 3_deploy.yml 
ls
kubectl delete deploy myfirstdeploy 
vim 3_deploy.yml 
kubectl apply -f 3_deploy.yml 
ls
cp -p 3_deploy.yml 4_deploy_update_version.yml 
kubectl get deploy
kubectl rollout status deployment myfirstdeploy 
ls -l
vim 4_deploy_update_version.yml 
kubectl apply -f 4_deploy_update_version.yml 
kubectl rollout pause deployment myfirstdeploy 
kubectl rollout resume deployment myfirstdeploy 
kubectl rollout status deployment myfirstdeploy 
kubectl rollout history deployment myfirstdeploy 
kubectl rollout history deployment myfirstdeploy --revision 1
kubectl rollout history deployment myfirstdeploy --revision 2
kubectl rollout undo deployment myfirstdeploy 
kubectl rollout status deployment myfirstdeploy 
kubectl rollout history deployment myfirstdeploy 
cd ../..
cat cmd_k8s.txt 
history >> cmd_k8s.txt 
vim cmd_k8s.txt 
cd -
ls
kubectl rollout history deployment myfirstdeploy 
kubectl rollout undo deployment myfirstdeploy --to-revision=2
kubectl rollout history deployment myfirstdeploy 
cd ../../
history >> cmd_k8s.txt 
vim cmd_k8s.txt 
cd -
kubectl rollout status deployment myfirstdeploy 
cd ..
mkdir statefulset
cd statefulset/
vim 1.yml
exit
