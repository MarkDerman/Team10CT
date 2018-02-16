az storage account create -g Team10V2 -name=team10ct --sku Standard_LRS

helm install --name team10 -f MongoDBValues.yaml stable/mongodb

helm install --name team10 -f RabbitMQValues.yaml stable/rabbitmq

kubectl create -f Storage.yaml

kubectl create -f PVC.yaml

kubectl create -f captureorder-deployment.yaml
kubectl create -f captureorder-service.yaml

kubectl create -f FulfillOrderDeployment.yaml
kubectl create -f fulfillorder-service.yaml


kubectl create -f EventListenerDeployment.yaml
kubectl create -f event-listener-service.yaml

kubectl create -f captureorder-service.yaml



