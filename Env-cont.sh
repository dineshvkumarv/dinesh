#!/bin/bash
cont_count=$1
echo "creating $cont_count new  containters.."
for i in `seq $cont_count`
do
  echo "===================================================="
 echo "creating the dineshkumar$i container.."
docker run -it -d --name  dineshkumar$i dineshkumarv1/gamutkart-img 
echo "created the dineshkumar$i container"
echo "====================================================="
done 
docker inspect --format {{.NetworkSettings.Networks.bridge.IPAddress}} `docker ps -q` > IPs.txt
