# pingMe
## Stupidly Fast Bash Ping Sweep

Part of prepping for my CTL (Cyber Scheme) I have been playing about more with Pivoting, Routers etc. 

HTB Machine Carrier had 22 subnets exposed. I wondered how easy it would be to ping sweep all of them quickly with bash, hence.........pingMe.sh

**WARNING** 

It works by simply backgrounding the process and spawning new process for each invidual IP. Can cause a lot of network traffic.

Due to ping itself and network latency, results can vary. I suggest running at least twice and saving the results.

![image](https://github.com/deeexcee-io/pingMe/assets/130473605/25ac7504-2330-4a25-970c-6b6c344fdb10)




