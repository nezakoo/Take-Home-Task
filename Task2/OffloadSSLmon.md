Metrics that need to be monitored:
1. **Server running state** -- it is important for any server
2. **CPU metrics** 
3. **Disk I/O** -- because offload SSL servers perform Encryption and Decryption
4. **Network statistic**
5. **LoadAvarage**
6. **Filesystem** -- disk spaces, inodes, etc.

Monitoring for these metrics could be implemented in any way. 
I recommend doing that with the help of _Prometheus_ + _Grafana_.
_Prometheus_ can be deployed in containers for fast monitoring **recovery** and **lower system usage**. 

Otherwise, it mostly depends on the platform where the server is running.
