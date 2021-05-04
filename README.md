# About
This is a desktop GUI loop timer for Windows. As this timer runs and resets repeatedly, it's useful for homework, workouts, and other applications where events should occur at repeat intervals. Since the timer waits for you to reset it, there is some flexibility in how long it runs for.

The amount of minutes the timer runs for is customizable and the design emphasizes low desktop footprint.

Check out my other repository [Pom](https://github.com/RogueArt/pom) for my newer take on this. I use this perpetual timer personally so Pom is meant to be a more featureful and maintainable version of this.

# Demo

## Initial prompt

![image](https://user-images.githubusercontent.com/57082175/116982852-2fa2fe80-ac7e-11eb-98aa-0a9d9ceb6d1f.png)

## Timer running
*Notice the box at the dead center of the task bar*
![image](https://user-images.githubusercontent.com/57082175/116983070-7db80200-ac7e-11eb-8c1c-b734a4948030.png)

## Timer over

![image](https://user-images.githubusercontent.com/57082175/116983342-d12a5000-ac7e-11eb-9018-86d8e5b4e984.png)

# Installation
**This timer only works on Windows.**
The current Windows release is available on this Github page under releases.

For building the executable yourself, follow these instructions:

> 1. Download the AutoHotkey language from [here](https://www.autohotkey.com/).
> 2. Download LoopTimer.ahk to your desktop
> 3. Right click the .exe, accept the UAC prompt, and click "Compile"

This will produce a portable .exe that is identical to the one listed in releases section.

# Trivia

The loop timer seems to affect the perception of time to a significant extent. Setting the loop timer to 1 minute, every iteration resulted in my perception of time slowing down. After about 7 or 8 iterations, **every minute felt five times as long as it did the first iteration**. There is potential research to be done with this as this implies that a loop timer could be used to modify and augment the perception of time allowing for large productivity increases.
