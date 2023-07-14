#echo "need to be done manually as far as i can tell"

#start elastic to get the enrollment token or try to generate one
echo "The Elastic service needs to up and running, this should be handled earlier, but if running 5 script on own, wait for service to start end rerun 5"
sudo systemctl start elasticsearch
#sudo systemctl status elasticsearch

#~/elk/bin/elasticsearch-create-enrollment-token -s kibana --url "https://localhost:9200" #> ~/elk/enrollment-token.txt

~/elk/elasticsearch-8.7.1/bin/elasticsearch-create-enrollment-token -s kibana --url "https://localhost:9200" > ~/elk/enrollment-token.txt

#start kibana with the enrollment token
#setting variable to the token
x=$(cat ~/elk/enrollment-token.txt)
# enrolling kibana
~/elk/kibana-8.7.1/bin/kibana-setup --enrollment-token $x

# restart the elaticsearch and kibana service
sudo systemctl restart kibana
sudo systemctl restart elasticsearch



