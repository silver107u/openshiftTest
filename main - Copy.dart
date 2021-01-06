1.	Create users armstrong, jobs, wozniak, jack & eric with the password password1, password2, password3, password4 and password5  respectively via htpasswd identity provider. Name of the secret to store these values should be ex280- htpasswd  identity provider name should be ex280-cluster
2.	Create 5 new-projects with names like project1, project2, project3, project4, project5  and assign the roles to the respective user create as: armstrong is admin of project1, jack & eric has view permission on project2, wozniak has edit power on project1
3.	 Assign cluster permission to the users as: Jobs  would be the cluster admin, wozniak would not be allowed cluster admin powers, No user would be able to provision projects, Jack us  would be allowed to provision projects. kubeadmin user should be deleted.
4.	Create two groups commander and pilot. Add user armstrong as part of commander group and jack & Eric to be part of pilot group. Commander group should be allowed to edit project3 and pilot group should be allowed view project1
5.	Create a resource quota of name ex280-quota in the project1 with resource consumption to be as: Pods=3, service=6, Memory=1Gi, CPU=2 Core, replication controllers=3
6.	Create a limit Range on project4 with limits set to be as: For Pod & Container CPU 10m to 100m and 5Mi to 500Mi, default Request: 50m for container
7.	Deploy the application. Use a deployment configuration to create an application named hello-world-nginx. The application source code is located in the hello-world-nginx subdirectory of the https:// github.com/RedHatTraining/DO280-apps repository  and make sure it is available in running state and must show some output on the given hello-world-nginx.apps.ocp4.example.com.(taint/toleration)
8.	Manually Scale up the application running on project5 upto 5 replicas(taint/toleration)
Image name quay.io/ redhattraining/loadtest:v1.0
App name :- load test 
9.	Apply autoscale on the application running in project7 with min pod 6, Max 9 and cpu-percent=50 and with a resource request for cpu of 10m and limit for cpu is 100m
Image name :- quay.io/redhattraining/hello-worldnginx:v1.0.
App name :- hello-world-nginx
10.	Create a secret in the project p7 with name magic and key-values of password= r3dh4t123
11.	Create a service account with name ex280-sa so that application runs with any user id
12.	Create a secure route for the application running in project are51 with name oxcart. The applications should be available on the given url and application should use self signed certificate with the given information as “/C=SI/ST=Ljubljana/L=Ljubljana/O=Security/OU=IT Department/CN=scale-area51.apps.ocp4.example.com”. The application must produces the output
APP yaml :- /DO280/labs/network-ingress/todo-app-v1.yaml
13.	Deploy the application oranges with the secret magic created in question 10.
Image :- registry.access.redhat.com/rhscl/mysql-57-rhel7:5.7
14.	Deploy the application with the service account ex280sa created in question 11.
Image name  :- gitlab/gitlab-ce:8.4.3-ce.0
15.	Deploy the application abc in project8 and make sure the application is up and running and available on the given url.
Use a deployment configuration to create an application named famous-quotes . The application source code is located in the famous-quotes subdirectory of the https:// github.com/RedHatTraining/DO280-apps repository  
