Steps to install gnmi-svr on DUT
================================
#### By deb
- On Linux server
```
  1. apt-get install python-stdeb
  2. git clone https://github.com/SquidRo/gnmi-svr-deb 
  3. cd gnmi-svr-deb; ./build_deb.sh
  4. copy ../python-gnmi-svr_0.101_all.deb to DUT
```
- On DUT 
```
  1. pip install protobuf; pip install grpcio
  2. dpkg -i python-gnmi-svr_0.1-1_all.deb
```


#### By whl
- On Linux server
```
  1. git clone https://github.com/SquidRo/gnmi-svr-deb
  2. cd gnmi-svr-deb; ./build_whl.sh
  3. copy ./dist/gnmi_svr_0.1-py2-none-any.whl to DUT
```
- On DUT
```
  1. pip install protobuf; pip install grpcio
  2. pip install ./gnmi_svr_0.1-py2-none-any.whl --prefix=/usr/bin
  3. put service file into DUT's systemd
  4. systemctl start gnmi_svr.service
```
