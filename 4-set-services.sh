sudo cp ~/git/ELK_SIEM_HIDS_ConfigurationFiles/elasticsearch.service /lib/systemd/system
sudo cp ~/git/ELK_SIEM_HIDS_ConfigurationFiles/kibana.service /lib/systemd/system
sudo cp ~/git/ELK_SIEM_HIDS_ConfigurationFiles/logstash.service /lib/systemd/system
sudo cp ~/git/ELK_SIEM_HIDS_ConfigurationFiles/nginx.service /lib/systemd/system
echo "systemctl .service files added..."

#Elastic
sudo systemctl enable elasticsearch
sudo systemctl status elasticsearch
#sudo systemctl start elasticsearch

#Logstash
sudo systemctl enable logstash
sudo systemctl status logstash
#sudo systemctl start logstash

#Kibana
sudo systemctl enable kibana
sudo systemctl status kibana
#sudo systemctl start kibana

#Nginx
sudo systemctl enable nginx
sudo systemctl status nginx
sudo systemctl start nginx


#sudo systemctl status elasticsearch
#sudo systemctl status logstash
#sudo systemctl status kibana
#sudo systemctl status nginx

echo "---------------------------------------------------------------------"

echo "Elasticsearch is"
sudo systemctl is-enabled elasticsearch

echo "Elasticsearch is"
sudo systemctl is-enabled logstash

echo "Kibana is"
sudo systemctl is-enabled kibana

echo "Nginx is"
sudo systemctl is-enabled nginx
