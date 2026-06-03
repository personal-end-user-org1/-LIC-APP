cd /opt
sudo yum install wget -y
# In case of Ubuntu/Debiain
#sudo apt install wget -y
sudo wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.115/bin/apache-tomcat-9.0.115.tar.gz
sudo tar -xvzf apache-tomcat-9.0.115.tar.gz
sudo mv apache-tomcat-9.0.115 tomcat
sudo rm apache-tomcat-9.0.115.tar.gz

# Set permissions
sudo chown -R ec2-user:ec2-user /opt/tomcat
# In Case Of Ubuntu
# sudo chown -R ubuntu:ubuntu /opt/tomcat
sudo chmod +x /opt/tomcat/bin/startup.sh
sudo chmod +x /opt/tomcat/bin/shutdown.sh
sudo chmod +x /opt/tomcat/bin/catalina.sh