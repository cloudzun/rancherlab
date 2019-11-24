az group create --name rancherlab --location southeastasia
az vm create --resource-group rancherlab --name host --image UbuntuLTS --admin-username chengzh --generate-ssh-keys --size  Standard_B2s --custom-data node.txt  
az vm open-port --resource-group rancherlab --name host --port 80,443 --priority 1001
az vm create --resource-group rancherlab --name node01 --image UbuntuLTS --admin-username chengzh --generate-ssh-keys --size  Standard_B2ms --custom-data node.txt  
az vm open-port --resource-group rancherlab --name node01 --port 80,443 30000-32767 --priority 1001
az vm create --resource-group rancherlab --name node02 --image UbuntuLTS --admin-username chengzh --generate-ssh-keys --size  Standard_B2ms --custom-data node.txt  
az vm open-port --resource-group rancherlab --name node02 --port 80,443 30000-32767 --priority 1001
az vm create --resource-group rancherlab --name node03 --image UbuntuLTS --admin-username chengzh --generate-ssh-keys --size  Standard_B2ms --custom-data node.txt  
az vm open-port --resource-group rancherlab --name node03 --port 80,443 30000-32767 --priority 1001
