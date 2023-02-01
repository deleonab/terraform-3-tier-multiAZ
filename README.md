
We shall be building a secure and resilient 3 Tier infrastructure inside our own AWS Virtual Private Cloud network for the  McQuire Intel company (which uses WordPress CMS for its main business website, and in addition to that, a Tooling Website for their DevOps team. 
For improved security and performance, a decision has been made to use a reverse proxy technology of which we shall use NGINX to achieve this.

It will be made up 3 Tiers: 
Layer 1. Public subnets to host our bastion and nat gateway
Layer 2: Private subnet to host our webservers
Layer 3: Data layer to host our Elastic File System EFS and RDS database.


Of major importance to this project are Cost, Security, Scalability, availability, resilience, and monitoring.  

Skills Required : AWS, Terraform, Linux scripting

For our entire infrastructure, we will be creating, implementing Infrastructure as code using Terraform which is a cloud agnostic IAC tool.
We shall maintain state using a remote backend to enable effective collaboration from the teams using S3 and Dynamo DB.

Our Infrastructure will be modular and will consist of the following resources.

1. Route 53 DNS which will use a custom domain naim and be the entry point to our Load balancer
2. VPC to isolate our infrastructure in the cloud
3. Private and Public Subnets to group our resources according to need.
4. Elastic Load balancer to route traffic to our highly available nginx reverse proxy servers
5. Target groups for our Load Balancer
6. Auto scaling groups for or Nginx server and web servers
7. Launch Templates for our autoscaling groups
8. Security groups associated with every resource and configured to only allow certain type of traffic from certain ports or IP's
9. Bastion host in a public subnet for SSH access into other servers.
10. Internet gateway to be accessible to the public internet
11. Nat Gateway to give internet access to the private subnet
12. S3 Object storage will be used to store our terraform state. with state locking enabled.

![3 Tier Project Image](./tooling_workachoo.png)

