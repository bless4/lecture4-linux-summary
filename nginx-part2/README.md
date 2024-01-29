# This class id after the class of Internet, and WebServer
We are to increase our knowledge on Nginx as our webserver

#  Coppying from our machine to ec2-Instance
 use the delete script to delete files excluding folders, doc, docx, jpg and pdf
# Deploy an html website to our ec2-instance
# Deploy a reactjs to an nginx server from your computer





```

For Nginx load balancing, you typically need to edit the configuration files related to the specific site or application that you want to balance across multiple servers. The main configuration file (nginx.conf) and the sites-available directory are key places to make these edits. Here are the relevant files and directories:

nginx.conf:

Location: /etc/nginx/nginx.conf
Purpose: The main Nginx configuration file.
Use Case: While the nginx.conf file contains global configurations, such as the number of worker processes, you might need to include additional load balancing settings here. However, it's often more practical to keep load balancing configurations in site-specific configuration files.
sites-available/ Directory:

Location: /etc/nginx/sites-available/
Purpose: A directory where configuration files for individual sites are stored.
Use Case: Create or modify configuration files in this directory to define server blocks for each site. In these files, you can specify load balancing settings such as upstream servers and balancing algorithms.
Example: Load Balancing Configuration in sites-available/
Assuming you have a site configuration file in /etc/nginx/sites-available/, you can include load balancing settings within the server block. Here's a simplified example using the upstream directive for load balancing:
```

```
# /etc/nginx/sites-available/example.com

server {
    listen 80;
    server_name example.com;

    location / {
        proxy_pass http://backend_servers;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }
}

upstream backend_servers {
    server backend1.example.com;
    server backend2.example.com;
    # Add more backend servers as needed
}

```

```
The upstream block defines a group of backend servers (backend1.example.com, backend2.example.com) for load balancing.
The proxy_pass directive in the location block routes requests to the backend servers defined in the upstream block.
``

```
After making changes, ensure to create a symbolic link in sites-enabled/ to activate the site configuration:
```
sudo ln -s /etc/nginx/sites-available/example.com /etc/nginx/sites-enabled/

# Finally, restart or reload Nginx for the changes to take effect:

sudo systemctl reload nginx

# nginx html dir
/usr/share/nginx/html/