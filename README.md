# mybatis-generator-sample

## What is this sample for?
A simle demo of how to use mybatis to automatically create java  *models* and mapper schema(xml mapper files).

In this sample, I demo the usage of the tool for Mysql.

In a typical spring web project integrating mybatis, if the CRUD operations are so a lot then we can light our
job using this "mybatis generator" to automatically create the models and xml mapping files, java client interfaces.

I stronglly recommend you to refer the official [documentation](http://www.mybatis.org/generator/index.html) to get more details if you have doubts.

## How to use?
  1. first you should have mysql installed and prepare the database and sample table
  
  2. change directory to [project-root]/tools/mbg, this is where the generate.sh script stands.
     Notes:you will see in the content of the script that we use command line method of the several ones.
    
  3. execute the shell script in your env.
     > ./generate.sh
     
     Notes:if you are windows env, then you should change the .sh extension to .cmd to run it in the cmd line.
     
Thanks!
   
