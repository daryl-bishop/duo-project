# Practical Project 

## Contents 

- Resources 
- Brief 
- Installation 
- How to deploy this task 
- Setup
- Installation
- Deployment
- Testing 
- Author 

## Resources 

Jira - https://demodb.atlassian.net/jira/software/projects/DP/boards/4/roadmap 

Git - https://github.com/daryl-bishop/duo-project

Risk Assessment - https://qalearning-my.sharepoint.com/:w:/g/personal/ccartwright_qa_com/EQPfMM8loadBhx9vzof7D2MBL9iazYA_z2KcSZcuI811Lw?e=9Sx6KT 

Presentation -  https://qalearning-my.sharepoint.com/:p:/g/personal/ccartwright_qa_com/ET4QAdqf_oBHuI3TZsGlj0MBWdG59Ub3Xm1Tm0Q7oIeSbA?e=PW4ZyT

## Introduction 

The aim of this project was to deploy a ready-made Flask application onto a Virtual Machine that made use of a managed database solution and could be tested automatically.  

This application uses four services throughout the full stack application that communicate together and also a database.  

 

## Project Planning 

Jira Boards 

Project link above and also [here](https://demodb.atlassian.net/jira/software/projects/DP/boards/4/roadmap).  

We created a Jira Kanban project in order to create a methodical and organised plan for completing the project within our pair. The attached photos give a quick insight into the layout of Jira and show how it separates the tasks into bitesize junks that we could take on one at a time. We generated ‘Sprints’ that kept our time well managed, we knew exactly what we needed to work on and when. We also were able to priorities he more important tasks that needed to be completed first.

![sprint](https://user-images.githubusercontent.com/86298594/132033799-14d1f714-513f-476c-8533-2256ad98800a.PNG)

![backlog](https://user-images.githubusercontent.com/86298594/132033784-d57e0ff0-04db-46a5-9690-29a304389844.PNG)

## Risk Assessment  

We have attached a link to the Risk assessment above but it can also be accessed [here](https://qalearning-my.sharepoint.com/:w:/g/personal/ccartwright_qa_com/EQPfMM8loadBhx9vzof7D2MBL9iazYA_z2KcSZcuI811Lw?e=9Sx6KT).
We created this before the start of the project as part of the planning and highlighted our own areas of concern. We found that this was a moving picture as we carried out the project so added a notes section at the end as a document for the changes to the plan that we made. I am sure that when we gain more experience within this sector, we will know to add more to the list.  

![riskAssessment](https://user-images.githubusercontent.com/86298594/132036046-a099404c-a4de-4156-9927-73f5da15859c.PNG)

## CI Pipeline 

The diagram shown presents the structure of our CI Pipeline. 

![ci pipeline](https://user-images.githubusercontent.com/86298594/132034097-105f62e3-ce79-4572-a69c-dfe8453dda51.png)

## How to deploy this task yourself 

The subsection below will walk you step by step through the process of deploying the application given. Each section has a key feature that it will be explaining. The setup will go through which AWS resources are needed as well as a brief on their configuration. Installation will explain all the different software and plugins that are needed to be able to deploy the flask-application. Deployment will go through the use of docker files and how Jenkins can automate the process.  

### Setup 

AWS Resources required: 

- Public VPC with a CIDA notation /16 
- Private subnet with a CIDA notation /24 
-  Public subnet with a CIDA notation /24 
- Internet gateway 
- NAT gateway 
- Route table 
- Three EC2 instance 
- Manager-EC2 
- Worker 1 
- Worker 2 
- Security group  
- RDS 

### Installation 

In order to run this project yourself, you will need to: 
- Install docker & docker compose on that EC2 instance.  
- Install Jenkins using a Linux commands 
- Install python3-pip 
- Allow Jenkins user to run docker commands 

### Deployment 

#### Swarm 

We used Docker Swarm to deploy this project. Swarm consists of a manager node and a worker node, although we used a minimum of two. Both sets are managed by NGINX and containers are distributed between them.  

#### Jenkins 

We used Jenkins to automate the deployment of the application. Below shows our attempts and the number of errors that arose whilst trying to get it deployed. We eventually overcame those errors and managed to get the application running successfully.   

![stageView](https://user-images.githubusercontent.com/86298594/132034579-2d486450-7619-4229-a09d-3adfe3b13121.PNG)

#### Github 

For the version control we used Git. We created a Main branch and initially pulled down to a Dev branch. We connected Jira to Git so we could add commit notes to our Jira progress.  

![github](https://user-images.githubusercontent.com/86298594/132034853-3eacb501-813f-4a82-8253-96edc2092c25.PNG)

![gitcommit](https://user-images.githubusercontent.com/86298594/132034875-712a1390-b14d-4dfc-ad43-d0c615e4bf64.PNG)

### how to run tests 

Our tests are automatically run from Jenkins, through Python as part of our setup although they can be run separately. We have created an artifact that stores the test results and keeps them for future reference. 
![testing](https://user-images.githubusercontent.com/86298594/132035294-575455d1-c6d6-4722-9c2f-e1411ddccfe4.PNG)

## Author and Acknowledgements
I would like to acknowledge the QA trainers in particular Jordan Harrison and Luke Benson for helping me with small errors that have appeared. I would also like to thank team one for keeping me company throughtout the project and making stressful times, when code goes wrong, into a fun experiance.

Project by Charlotte Cartwright and Daryl Bishop.
