# k8-bootcounter
This is a small springboot micro service application. This application is storing login counter in a file. So after restart pod or application crash data will be persist.

Pre-requisite

	Kubernetes <= 1.15
	Docker 1.13

We can start/deploy the application throgh below command.

	./startk8BootCounter <namespace_name> <k8_ipaddress>

After deployment complete we  can access the application throgh below URL. Every call of this URL counter value would be increased.

	http://boot.<k8address>.nip.io/counter/
	
Defaut persistence data is storing by-default in /var/data location as hostpath. If we have NFS server available we can change the hostpath option to nfs in *pv*.yml file like below.

	nfs:
    path: "/var/data"
    server: <NFS_HOST_IP_ADDRESS>

Image location is public docker hub and url is sounak01/bootcounter:01. 
Contact me @sounak.saha86@gmail.com
