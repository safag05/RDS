
# SITUATION:

 ### Create database using AWS RDS with terraform on a custom VPC created by Team1.
 ### Pre-requisites

Terraform version: 0.11.14

Custom VPC created by Team1

Database engine: AWS Aurora(mysql) 

Engine version: 5.6.10a 
  

# TASK:
  <img width="865" alt="Screen Shot 2020-03-27 at 8 44 33 PM" src="https://user-images.githubusercontent.com/59778896/77811007-f016e580-706d-11ea-9373-32c8ac97993b.png">
  
 ### Pre-requsites
 #### Data source file to pull VPC information from Team1's backend using their backend key. 
 
 <img width="571" alt="Screen Shot 2020-03-27 at 9 06 13 PM" src="https://user-images.githubusercontent.com/59778896/77811136-e0e46780-706e-11ea-93e5-4c04e154c0d9.png">
 
 Used dynamodb lock so that multiple team members can't run terraform apply at the same time
 
 Added multiple regions to test

 Made use of interpolations in our db_cluster file

#### commands used to run our code: (run commands under the main repo)

source sentenv.sh configurations/regions/us-east-1.tfvars

terraform apply -var-file configurations/us-east-1.tfvars

#### created output.tf file to include our DB name, region, endpoints of our DB for Team3. 


### challanges:
Make sure to use your own backend (s3 bucket) in .tfvars files

Waiting on other teams 

RDS gets created but endpoints take too long to create. 


# ACTION:
  
  Fixed our .tfvars file to have the correct information (our backend (S3)). This resolved 1st issue we had.

  Communication with other teams whenever state file was broken. 

  Team1 had to fix their state file couple times, then were able to continue with our task

  ### Created an EC2 instance on public subnet of the VPC that was created by Team1. This way our database and the instance would be on the same VPC. 

  #### On EC2 install mariadb. Then connect to the database by using the below command:
     mysql -h <RDS endpoint> -u <mysqlusername> -p 


# RESULT: 

Created RDS successfully with the outputs as below:

<img width="720" alt="Screen Shot 2020-03-27 at 9 28 52 PM" src="https://user-images.githubusercontent.com/59778896/77811617-f6a75c00-7071-11ea-9e73-6bf264307827.png">


 

Merve   - 6 hours (+ additional 2.5 hours)





  
