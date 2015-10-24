cd /opt/example.com
source bin/activate
wget http://172.16.10.192/tars/Django-1.6.11.tar.gz
tar -xzvf Django-1.6.11.tar.gz
cd Django-1.6.11
python setup.py install
sleep 5
django-admin.py startproject itworks
