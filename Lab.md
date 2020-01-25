
![](Images/SHALab1.PNG)

SOME TEXT of the LAB

| Title  | Description | Time Required [120 Mins] |
| :----------| :----------- | :---------- |
| Lab1 | Publish a Header  Based Application with F5 BIG-IP APM and Azure AD | 30 Mins | 
| Lab2 | Publish a Header Based Application with Azure AD Application Proxy | 30 Mins | 
| Lab3 | Publish a Keberos Application with F5 BIG-IP APM and Azure AD | 30 Mins | 
| Lab4 | Publish a Keberos Application with Azure AD Application Proxy | 30 Mins |


**Pre-requisites**
Before we get started with the exercises there are few environment pre-requisites that will need to be installed and setup.

### Install the Web Application Samples

1. Login to **SHAApp1** VM as **wingtiptoys\administrator**
2. Open Windows PowerShell ISE as Administrator
3. Open the Browser and type `https://raw.githubusercontent.com/jeevanbisht/Azure-ActiveDirectory-AppProxy-DemoSuite/master/BootStrap.ps1` in url.
4. Copy the entire script from this URL and paste the contents in previously open powerShell ISE console and execute. This should install the webserver and the sample websites required for the lab.


# **Lab 1: Publish a Header Based Application with F5 BIG IP APM and Azure AD**
##### **Objective** : 
We will publish a Header Based Application running Internally on the SHAAPP1 Web Server. The application can be accessed internally by using http://shaapp1:90/HeaderApp1

Below are the series of steps required.

 | Step | Description | Time Required [30 Mins] |
 | :----------- | :---------- | :---------- |
| **1** |Identify the public IP Address | 5 Min |
| **2** |Update the Internal and External DNS for the Application | 10 Min |
|**3** |Add Application in the Azure AD | 10 Min |
|**4** |Publish and Configure BIG IP to Authenticate with Azure AD and Create Headers | 10 Min |
|**5** |Verify Application Access Internally | 10 Min |
| **6**| Verify Application Access Externally | 10 Min |

### Identify the public IP Address and update public DNS

We will publish the application externally we need to setup a public hostname name ex `testappxx.wingtiptoys.site` 
1. Goto the **SHADC1** Virtual Machine
2. Open edge browser and type 'https://www.whatsmyip.com' and make a note of public IPV4 Address
3. Open Windows Powershell and open `c:\scripts\UpdatePublicDNS.ps1` update the $Name and $PublicIP
4. Verify the name was updated using NSLOOKUP from your Base Machine

**Result:** You should have a Public DNS Name  testappXX.wingtiptoys.site resolving to you public IP Address


### Update the Internal  DNS for the Application
The Internal request will be routed to F5 BIG-IP in the Virtual IP `192.168.10.150`.
1. Goto the **SHADC1** Virtual Machine
2. Open the **DNS Manager** from the Server Manager 
3. Create A/HOST  Record for `testappXX` pointing to `192.168.10.150`

**Result:** You should have a Internal DNS Name  `testappXX.wingtiptoys.site` resolving to `192.168.10.150`


### Add Application in the Azure AD
### Publish and Configure BIG IP to Authenticate with Azure AD and Create Headers
### Verify Application Access Internally 
### Verify Application Access Externally 



# **Lab 3: Publish a Kerberos Application with F5 BIG IP APM and Azure AD**

**Objective**

We will publish a Kerberos Application using the Access Guided Configuration.

 | Step | Description | Time Required [30 Mins] |
 | :----------- | :---------- | :---------- |
|  **1** | Identify the public IP Address| 10 Mins |
|  **2** | Update the Public DNS for the Application | 20 Mins |
|  **3** | Ensure the Web Application is using Kerberos| 10 Mins |
|  **4** | Create a F5 Keberos Delegation Account| 10 Mins |
|  **5** | Publish and Configure BIG IP to Authenticate with Azure AD| 15 Mins |
|  **6** | Verify Application Access| 10 Mins |

