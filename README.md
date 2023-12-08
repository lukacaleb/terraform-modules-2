# terraform-modules-2
Using Terrafrom to create an aws instance (ubuntu) in multiple regions (free-tier) 
(eu-west-1 and eu-central-1) with a minimum of 2 availability zones, 
modularizing the scripts and making it reusable, 
while building on multiple environment (development and production) and 
creates both ansible and docker containers and also Creates a VPC 
for the various environments so that development environment is located in one region 
while production environment is also located in second region.
