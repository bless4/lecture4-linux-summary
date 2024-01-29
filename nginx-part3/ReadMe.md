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