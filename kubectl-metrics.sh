#!/bin/bash

# Define command-line arguments
#!/bin/bash
#script for get metrics from $RESOURCE(pod,nodes) in defiend namespaces (kube-system or other)
# Usage: ./script.sh <pod,nodes> <namespace>
#for use as plugin in kubectl just copy script to /usr/local/bin/ and add execution permissions
#for invoke plugin use: kubectl mtrcs <resource_type> <namespace>


RESOURCE_TYPE=$1
NAMESPACE=$2

# Retrieve resource usage statistics from Kubernetes
kubectl top $RESOURCE_TYPE -n $NAMESPACE | tail -n +2 | while read line
do
  # Extract CPU and memory usage from the output
  NAME=$(echo $line | awk '{print $1}')
  CPU=$(echo $line | awk '{print $2}')
  MEMORY=$(echo $line | awk '{print $3}')

  # Output the statistics to the console
  echo "Resource: $RESOURCE_TYPE, Namespace: $NAMESPACE, Name: $NAME, CPU: $CPU, Memory: $MEMORY"
done
    

