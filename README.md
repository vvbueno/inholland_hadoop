### In your Hadoop ecosystem:

•	Make sure to have Python >2 installed <br />
•	Make sure to have PIP for installing Python packages: yum install python-pip <br />
•	Make sure to have MrJob installed: pip install mrjob=0.5.11 <br />

### Download the movielens data file:

```wget http://media.sundog-soft.com/hadoop/nl-100k/u.data```

Then you can move the following command, on the folder where you have the file ```assignment.py``` and u.data stored:
```python assignment.py u.data```

### The output should look like the following:

![Example output](https://cdn.discordapp.com/attachments/588092262882344960/708815620585685052/unknown.png)
 
The movie id to the left with the amount of ratings to the right ordered ascendingly.
