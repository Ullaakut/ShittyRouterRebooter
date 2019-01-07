# Shitty Router Rebooter

<p align="center">
    <img src="shittyrouterrebooter.gif"/>
</p>

My goddamn **Nokia_G_240W_A**'s firmware most likely has a memory leak, and if I don't reboot it every now and then, it starts getting more and more packet loss, until it completely stops all traffic.

The stores near me are not selling GPON-compatible routers, apparently. So my only immediate solution is to write a goddamn script aimed at rebooting my fucking router every night to counter the memory leak.

This router **sucks so much** that it's web server's responses can't even be parsed by the golang `net/http` package. See issue https://github.com/golang/go/issues/21290 for more explanations.
