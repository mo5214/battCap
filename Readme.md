# BattCap

## What is it?
A simple shell Script to set Macbook's Battery maximum charge in percent.
This will allow you to prolong the battery's life by setting a limit on the max charge level to reduce battery's stress. 
(Li-Ion cells has least stress around 60-80% charge level.)

## How it works?
It will first ask for your input via a pop-up. (via AppleScript)
It will then call smc utility in smcFanControl app to set the 'BCLM' key in the smc to set the charge limit.

## Requirements
Requires smcFancontrol.app to be installed in /Applications
Get it from here:
[link to the GitHub Page!](https://github.com/hholtmann/smcFanControl)

## Disclaimer
This script is provided AS-IS. It had undergone limited testing, and has the potential to kill your Mac.

## Credits
Credits to Hendrik Holtmann for his smcFanControl and in extension, his smc utility shipped with it.