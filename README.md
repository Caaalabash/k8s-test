## k8s-test

构建镜像

````
// 有docker-compose
./p.sh build

// 只有docker
docker build -f deploy/frontend/Dockerfile -t test_fe_image .
docker build -f deploy/backend/Dockerfile -t test_be_image .
````

启动后端

````
kubectl apply -f backend.yml
````

获取`be-service`的 ip，作为环境变量`BACKEND_URL`传递给`fe-deployment`，启动前端

````
kubectl apply -f frontend.yml
````

pods

````
[root@VM-0-17-tlinux ~/k8s-test]# kubectl get pods
NAME                             READY   STATUS    RESTARTS   AGE
be-deployment-58fd454c8c-2chw8   1/1     Running   0          26m
be-deployment-58fd454c8c-gfkd8   1/1     Running   0          26m
fe-deployment-8547bc7978-8jgct   1/1     Running   0          24m
````
