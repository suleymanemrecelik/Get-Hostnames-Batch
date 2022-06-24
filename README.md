# Get-Hostnames-Batch
Mini scripts to get hostnames of IP list input.

There are two batch scripts with different methods to get hostnames of IPs from a file named input.txt
One of the methods is getting hostname with ICMP packet, another is DNS query.

### Installation
``` bash
git clone https://suleymanemrecelik/Get-Hostnames-Batch.git
```

### Usage
1. Write IPs to input.txt.
2. Run one of scripts.
3. Hostnames will appear in output.txt

### Known Bugs
To avoid get domain, scripts process text before the first dot. So, it causes missing hostnames which have dot in name.
For ICMP method, if hostname could not be find, the first octet of IP is printed.
