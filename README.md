# pingMe
## Quite Fast Bash Ping Sweep

Part of prepping for my CTL (Cyber Scheme) I have been playing about more with Pivoting, Routers etc. 

HTB Machine Carrier had 22 subnets exposed. I wondered how easy it would be to ping sweep all of them quickly with bash, hence.........pingMe.sh

**WARNING** 

It works by simply backgrounding the process and spawning new process for each invidual IP. Can cause a lot of network traffic.

time below shows 2 * /24 subents being ping'd

![image](https://github.com/deeexcee-io/pingMe/assets/130473605/da5a8f21-e2b8-4524-974d-cb9fc1bfff3b)





