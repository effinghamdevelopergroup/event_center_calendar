# Vagrant Tutorial
1. switch to your project directory
2. run command "Vagrant Up"
  * this will run through a series of dependancy installations.
3. After the installation is finish you can ssh into the machine by running "Vagrant ssh"
4. Once connected to the vagrant machine cd into the shared directory between windows and the ubuntu vm by using this command "cd /vagrant".
5. You should be able to see your project files by running the "ls" command.
6. You can now attempt to start the application by running this command "rails s -b 0.0.0.0" for your rails server.
  * if all went well you should be able to see the application running at "http://localhost:3000/" in your preferred browser.
