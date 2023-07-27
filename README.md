# pingMe
## Stupidly Fast Bash Ping Sweep

Part of prepping for my CTL (Cyber Scheme) I have been playing about more with Pivoting, Routers etc. 

HTB Machine Carrier had 22 subnets exposed. I wondered how easy it would be to ping sweep all of them quickly with bash, hence.........pingMe.sh

Ping Sweeped 22 Full Subnets in less than a minute. 

**WARNING** 

It works by simply backgrounding the process and spawning new process for each invidual IP so in this example 254 (IPs) * 22 Subnets = 5588 newly spawned processes. It will use a lot of system resources but in a short space of time. 


https://github.com/deeexcee-io/pingMe/assets/130473605/7985a8bb-face-4697-8e22-22b1f659226a

