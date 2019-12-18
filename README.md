# Introduction  

In this article, you will learn how to install Oracle 11g on your Window 7 64-bit PC. This article will guide you through the installation steps especially when you are a fresher.

# **Step 1**

First, we have to download the software from the Oracle website. For downloading [click here](http://www.oracle.com/technetwork/database/enterprise-edition/downloads/index.html).  
  
Choose "Accept License Agreement" and proceed further more to download.  

![Step by step installation of oracle 11g on windows 7 (64bit)](https://www.c-sharpcorner.com/article/step-by-step-installation-of-oracle-11g-on-windows-7-64bit2/Images/image001.png)


# Step 2  
  
**When the download completes, unzip the downloaded file and you will get a setup.exe file. Now, right click on setup.exe and "Run as Administrator". An installer window will pop up.

  

![Step by step installation of oracle 11g on windows 7 (64bit)](https://www.c-sharpcorner.com/article/step-by-step-installation-of-oracle-11g-on-windows-7-64bit2/Images/image002.png)

  

# Step 3  

You can skip the "configure security updates" option. Now, click on Next.

  

# Step 4  

Now, choose your System Class(I prefer desktop class for beginners) and click on Next.

  

## Step by step installation of oracle 11g on windows 7 (64bit)]
(https://www.c-sharpcorner.com/article/step-by-step-installation-of-oracle-11g-on-windows-7-64bit2/Images/image003.png)

  

## Step 5  

Choose your path wherever you want to install your product. If you want to change the drive, then replace only Character ‘C:\’ to ‘D:\’ and all the options should be left the same as usual. Just choose your Oracle Standard Password and proceed. The global database name should be ‘orcl’.

  

![Step by step installation of oracle 11g on windows 7 (64bit)](https://www.c-sharpcorner.com/article/step-by-step-installation-of-oracle-11g-on-windows-7-64bit2/Images/image004.png)

  
## Step 6  
  
Now, Oracle checks up the software requirements and dependencies and it will give the installation summary. If everything is fine, then proceed further more.  
  

![Step by step installation of oracle 11g on windows 7 (64bit)](https://www.c-sharpcorner.com/article/step-by-step-installation-of-oracle-11g-on-windows-7-64bit2/Images/image005.png)

  
## Step 7  
  
Now oracle will install the following products in your system.

1.  Setup files
2.  Database configuration assistant

[Step by step installation of oracle 11g on windows 7 (64bit)](https://www.c-sharpcorner.com/article/step-by-step-installation-of-oracle-11g-on-windows-7-64bit2/Images/image006.png)

  
## Step 8  
  
Always allow these firewalls when it pop ups in your system.

  

[Step by step installation of oracle 11g on windows 7 (64bit)](https://www.c-sharpcorner.com/article/step-by-step-installation-of-oracle-11g-on-windows-7-64bit2/Images/image007.png)

  
## Step 9  
  
Now you can see DBCA(Database configuration assistant) is Installing.

  

[Step by step installation of oracle 11g on windows 7 (64bit)](https://www.c-sharpcorner.com/article/step-by-step-installation-of-oracle-11g-on-windows-7-64bit2/Images/image008.png)

  
DBCA is a tool who help to create and mange Oracle Databases with GUI.  
  

[Step by step installation of oracle 11g on windows 7 (64bit)](https://www.c-sharpcorner.com/article/step-by-step-installation-of-oracle-11g-on-windows-7-64bit2/Images/image009.png)

  

## Step 10  

When DBCA installation will complete then a pop up window will open.

  
With the help of "Password management" tool you can alter the default passwords for the particular database accounts  
  

![Step by step installation of oracle 11g on windows 7 (64bit)](https://www.c-sharpcorner.com/article/step-by-step-installation-of-oracle-11g-on-windows-7-64bit2/Images/image008.png)

[Step by step installation of oracle 11g on windows 7 (64bit)](https://www.c-sharpcorner.com/article/step-by-step-installation-of-oracle-11g-on-windows-7-64bit2/Images/image010.png)

  
## Step 11  
  
Now test your installation done or not.

  
Open cmd with Run As administrator.

1.  _set oracle_sid=orcl_
2.  _Sqlplus / as sysdba_

[Step by step installation of oracle 11g on windows 7 (64bit)](https://www.c-sharpcorner.com/article/step-by-step-installation-of-oracle-11g-on-windows-7-64bit2/Images/image011.jpg)

  
After this command, you will see Oracle Database 11g Enterprise is connected. Now, you are connected to the Oracle Database 11g Enterprise Edition.

That's it. I hope you have found this article helpful. Do let me know via comments and likes.


# Practice Exercises
# You can give a shot at these practice exercises and send me the answers so that I can review them for you!!!
## 1) Find the SALES DATE, ORDER ID, and sales amount of all SALES which are coming from 'SOUTH' region
## 2) Find the SALES DATE, ORDER ID, and sales amount of all SALES which are coming from 'SOUTH' region and sales amount is
more than 1000
## 3) Find the names of all customers in the database who live in Atlanta area
## 4) Find the number of customers in the database by the month they joined
## 5) Display the first name, middle name and last name of all the customers in 1 column separated by space
## 6) Find the product name of the products that have 7 in their product names
## 7) Display the number of products in the database by product category
## 8) Display the number of products in the database by product category and are more than 2
## 9) Display all the products in the database that not have been sold yet. (HINT: this means the product id is not in the SALES
table)
## 10) Display all the data about sales persons who joined in the month of January
## 11) Display SALES DATE, ORDER ID, sales amount, tax amount percentage of all SALES (HINT: tax amount percentage formula is
(tax amount / sales amount ) / 100 ))
## 12) find the SALES DATE and ORDER ID which has the largest sales amount
## 13) Find the SALES DATE, ORDER ID, and sales amount of all SALES which happened in the month of January 2015
## 14) Display the number of products we have in the database by their color
## 15) Display the product data whose color is either BLACK or GREY and product size is 6
## 16) Write a function which displays the second and third character of a given word. (Example: It should return 'OH' when I
give 'JOHN' as the input)
## 17) Display the product names in UPPER case letters
## 18) Display the product names which are already in UPPER case in the database
## 19) Display the customer data who have 'DRIVE' in their address
## 20) Update customer data address line 2 column, with the same values as address line 1
## 21) Display the total number of records in all the tables CUSTOMER, PRODUCT, SALES, SALES_HISTORY, SALESPERSON (Output should
be 22)
## 22) Display the data which is common between sales table and sales history table

