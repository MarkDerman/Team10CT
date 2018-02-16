

kubectl apply -f Storage.yaml

kubectl apply -f PVC.yaml

kubectl apply -f captureorder-deployment.yaml
kubectl apply -f captureorder-service.yaml

kubectl apply -f FulfillOrderDeployment.yaml
kubectl apply -f fulfillorder-service.yaml

kubectl apply -f EventListenerDeployment.yaml
kubectl apply -f event-listener-service.yaml


