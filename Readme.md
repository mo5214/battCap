# BattCap

## What is it?
A simple shell Script to set Macbook's Battery maximum charge in percent.
This will allow you to prolong the battery's life by setting a limit on the max charge level to reduce battery's stress. 
(Li-Ion cells has least stress around 60-80% charge level.)

## How it works?
It will first ask for your input via a pop-up. (via AppleScript)
It will then call smc utility in smcFanControl app to set the 'BCLM' key in the smc to set the charge limit.

## Usage
chmod +x the script to be made executable, and run it.
Personally I use this with BetterTouchTool's script execution and bound it to a hotkey.

## Requirements
Requires smcFancontrol.app to be installed in /Applications
May have to do chmod +x the script to be made executable.
Get it from here:
[link to the GitHub Page!](https://github.com/hholtmann/smcFanControl)

## Disclaimer
This script is provided AS-IS. It had undergone limited manual testing, and has the potential to kill your Mac.
Also, the value set maybe exceeded by about 3 percent (set to 80% ended up with 83%). This is SMC's doing, and is normal.
It also takes up to half a minute for the set value to register with the smc.

## Legal notes
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Credits
Credits to Hendrik Holtmann for his smcFanControl and in extension, his smc utility shipped with it.