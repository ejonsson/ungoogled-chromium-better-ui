### ungoogled-chromium-modified-ui

Removes sliding and fading animations, empty space above tabs and overly rounded corner material design. Adds slightly thinner tabs and attempts to bring dark mode colours more in line with native macOS applications.


### Instructions - Arch Linux
 
 ```
 git clone --recurse-submodules https://github.com/ejonsson/ungoogled-chromium-better-ui.git
 cd ungoogled-chromium-better-ui
 ./patch.sh
 cd ungoogled-chromium-archlinux
 sudo pacman -S ninja clang lld gn llvm quilt
 makepkg
 ```


### Instructions - macOS

```
git clone --recurse-submodules https://github.com/ejonsson/ungoogled-chromium-better-ui.git
cd ungoogled-chromium-better-ui
./patch.sh
cd ungoogled-chromium-macos
```

Then follow Ungoogled Chromium build instructions for macOS at https://github.com/ungoogled-software/ungoogled-chromium-macos.
These changes were tested on tag 75.0.3770.100-1.2, but might work with later versions.


### Examples of changes. Modified UI above, original below.


#### Tabs
![](https://user-images.githubusercontent.com/482483/60313832-12999800-9950-11e9-8907-6c911e823a99.gif)
![](https://user-images.githubusercontent.com/482483/60313837-16c5b580-9950-11e9-8d18-21f4feececf0.gif)



#### Address bar
![](https://user-images.githubusercontent.com/482483/60313801-f85fba00-994f-11e9-940e-f77cc176320b.gif)
![](https://user-images.githubusercontent.com/482483/60313817-04e41280-9950-11e9-9132-13028d3cba21.gif)


#### Menu
![](https://user-images.githubusercontent.com/482483/60313821-09a8c680-9950-11e9-9af4-92b651bf96ad.gif)
![](https://user-images.githubusercontent.com/482483/60313825-0d3c4d80-9950-11e9-8589-040ed461f48b.gif)
