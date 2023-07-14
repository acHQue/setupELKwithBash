echo "Remember to change the ip in the nginx.conf in the server block."
sudo cp nginx.conf /etc/nginx
systemctl stop nginx
systemctl start nginx
