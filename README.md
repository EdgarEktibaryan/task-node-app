## 🛠️ Task Steps

### TASK 1. Working with Docker
--------------------------------------------------------------------------------------------------------------------------
First wrote simple NodeJS Application run under /app path
--------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------
Run: npm init -y to initialise environment
--------------------------------------------------------------------------------------------------------------------------
<img width="879" alt="Screenshot1" src="https://github.com/user-attachments/assets/805f709a-6eb1-4934-8d52-1fbf08fc5dda" />

--------------------------------------------------------------------------------------------------------------------------
Installed express lib (As we used it in our app)
--------------------------------------------------------------------------------------------------------------------------
<img width="792" alt="Screenshot2" src="https://github.com/user-attachments/assets/bfc400b9-be48-4e20-b552-210fffd57746" />

--------------------------------------------------------------------------------------------------------------------------
Built and started the docker container listening port 4000
--------------------------------------------------------------------------------------------------------------------------
<img width="1436" alt="Screenshot3" src="https://github.com/user-attachments/assets/65dd784b-b619-487a-93f3-2eb89f8ad009" />

--------------------------------------------------------------------------------------------------------------------------
After we can see the app in localhost:4000
--------------------------------------------------------------------------------------------------------------------------
<img width="491" alt="Screenshot4" src="https://github.com/user-attachments/assets/57cad06b-8bc4-494e-9c57-ba5ad7480ded" />

--------------------------------------------------------------------------------------------------------------------------
And lastly push to Docker Hub (image pull command: docker pull edgarektibaryan/local-node-app:v1)
--------------------------------------------------------------------------------------------------------------------------
<img width="1435" alt="Screenshot5" src="https://github.com/user-attachments/assets/8ce74826-790f-4b32-a442-2b8fccf6ed4d" />

### TASK 2. Working with Docker

--------------------------------------------------------------------------------------------------------------------------
Wrote simple pipeline under /.github/workflows path

--------------------------------------------------------------------------------------------------------------------------
Tested the deployed image in local Cluster
--------------------------------------------------------------------------------------------------------------------------
<img width="643" alt="Screenshot6" src="https://github.com/user-attachments/assets/e65f6513-b15a-4192-9a31-1a07f3e5198a" />
<img width="548" alt="Screenshot7" src="https://github.com/user-attachments/assets/e163dcbc-14e1-45e6-b6a1-e472eec41c7a" />

### TASK 3. Working with Helm and Terraform

--------------------------------------------------------------------------------------------------------------------------
Initialised the simple Helm chart by running helm create node-app and removed unused configs
Added the Helm chart and customisable values (under /env path)
--------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------
In Azure Portal created Storage Account and blob container to store backend tf state
--------------------------------------------------------------------------------------------------------------------------
<img width="1497" alt="Screenshot8" src="https://github.com/user-attachments/assets/97b9a7b7-2f90-4a1e-a93f-c3c1baf596d3" />
<img width="1775" alt="Screenshot9" src="https://github.com/user-attachments/assets/003aa3f1-3e0f-4006-8bd1-567f8af659b5" />

--------------------------------------------------------------------------------------------------------------------------
Wrote terraform configuration under /terraform folder and initialised the environment to connect to remote Backend
--------------------------------------------------------------------------------------------------------------------------
<img width="1119" alt="Screenshot10" src="https://github.com/user-attachments/assets/d44127fa-3907-4c15-b8a4-3a0eb27acab5" />

--------------------------------------------------------------------------------------------------------------------------
Run: terraform apply to deploy our infrastructure
--------------------------------------------------------------------------------------------------------------------------
<img width="1133" alt="Screenshot11" src="https://github.com/user-attachments/assets/9c5db01c-f8b6-4204-98a4-394223703c13" />

--------------------------------------------------------------------------------------------------------------------------
Following resources were created under 2 resource groups
--------------------------------------------------------------------------------------------------------------------------
<img width="1728" alt="Screenshot12" src="https://github.com/user-attachments/assets/b00b2954-d526-47cd-b373-0b4cfdde093f" />
<img width="1475" alt="Screenshot13" src="https://github.com/user-attachments/assets/062fa9ee-7e76-46b0-bf80-b5b5231512c6" />
<img width="1434" alt="Screenshot14" src="https://github.com/user-attachments/assets/b8947e42-6f46-49fc-ab16-219df8b50d6c" />

--------------------------------------------------------------------------------------------------------------------------
Connected to cluster via Connect section
--------------------------------------------------------------------------------------------------------------------------
<img width="1457" alt="Screenshot15" src="https://github.com/user-attachments/assets/13742964-badd-4ac6-8274-ff96bd437bd6" />

--------------------------------------------------------------------------------------------------------------------------
Checked the Argo Helm charts and the application itself
--------------------------------------------------------------------------------------------------------------------------
<img width="1159" alt="Screenshot16" src="https://github.com/user-attachments/assets/d1dc5cd2-0cff-4760-8073-696b74601548" />

--------------------------------------------------------------------------------------------------------------------------
And finally we can see the result by going to Public IP that was assigned to service with type LoadBalancer
APP is accessible: http://135.18.195.202:80
--------------------------------------------------------------------------------------------------------------------------
<img width="505" alt="Screenshot 2025-04-07 at 13 26 24" src="https://github.com/user-attachments/assets/61d7e005-787d-46fa-836e-a56f0108c97a" />




