These terraform files reflect the execution of the task assigned to me by the nexedgetechnologies director. The tasks categorically instructs the creation of new databases, virtual machines and vpc-subnets, and storage buckets.

This task was executed in a systematic manner similar to company culture i.e VPCs and VMs, storage buckets and db_instances, all created in the same region and not scattered around the globe.
The following tasks were executed:
•	The creation of 2 additional subnets in different regions (Africa and Europe), making total available subnets for “my-vpc” to be 3.
•	The creation of firewall rule allowing http-https for the newly created subnets. This firewall rules were created with tags “allow-http-https” to target only the 2 new VMs to be created in Africa and Europe. 
•	2 new VMs were created and were targeted with tags from the subnet firewall rule, making the total VMs to be 3, 2 with tags and 1 without tags.
•	2 additional Storage buckets were created in Africa and Europe
•	2 database instances; mysql and postgres sql were deployed in Africa and Europe.
After the execution of these tasks, the scripts were pushed to git for approval.

