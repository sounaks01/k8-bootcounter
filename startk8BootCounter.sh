if [ "$#" -ne 2 ]; then
    echo "Illegal number of parameters"
    echo "Usage ./startk8BootCounter.sh <namespace_name> <k8_ipaddress>"
    exit 1
fi
NAMESPACE="$1"
K8ADDRESS="$2"
kubectl create ns $NAMESPACE
sed -i "s/{kube.namespace}/$NAMESPACE/g" *.yml
sed -i "s/{k8address}/$K8ADDRESS/g" *.yml
for file in *.yml; do 
    if [ -f "$file" ]; then 
        kubectl create -f "$file" 
    fi 
done
