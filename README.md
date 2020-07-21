How to use this ? it's really simple
Copy pasterinio these two files to your project, add the .m file to your Makefile and don't forget to include the .h file and then
Just use these :

[UIDevice.currentDevice isNotched]; This will return a BOOL that is equal to YES if the device is notched
[UIDevice.currentDevice isAniPad]; This will return a BOOL that is equal to YES if the device is an iPad
[UIDevice.currentDevice isAniPod]; This will return a BOOL that is equal to YES if the device is an iPod

You can use those like this :
BOOL isNotchedDevice = [UIDevice.currentDevice isNotched];

This is pretty useless but you know
https://wompampsupport.azureedge.net/fetchimage?siteId=7575&v=2&jpgQuality=100&width=700&url=https%3A%2F%2Fi.kym-cdn.com%2Fentries%2Ficons%2Ffacebook%2F000%2F028%2F021%2Fwork.jpg
