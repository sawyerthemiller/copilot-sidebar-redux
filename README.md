**microsoft seems to love making good things then taking them away**

**caveats - we're covering the bell so**
- you must not use apps like windhawk to 'hide the bell'
- you will not be able to use the bell to access notifications
- to get notifications, click on the date and time thing

| Windows Original Sidebar | Windows AI Sidebar |
|---------------------------|---------------------|
| <img src="https://i.ibb.co/tw7QMnvx/cp-sidebar-m.png" width="350" height="770"> | <img src="https://i.ibb.co/Qvr9p8DP/cp-n-upd.png" width="350" height="770"> |
| Diffs in actual results of the former or latter are not the responsibilty of author |

**can we ever get it back to exactly how it was** <br />
no. microsoft develoepd the original one in a custom web-view bar, and also, they've deprecated all ways to get the old copilot UI back as of 2025 <br />
we also have to deal with compression and icon type blocks from autohotkey (no svg etc)

**requires** <br />
- [brave browser](https://brave.com/) with the extensions [stylebot](https://chromewebstore.google.com/detail/stylebot/oiaejidbmkiecgbjeifoejpgmdaleoha/), [favicon change pro](https://chromewebstore.google.com/detail/favicon-changer-pro/gmeifkannaohahogkfoljeceabndhpif), [tab renamer](https://chromewebstore.google.com/detail/tab-renamer/mncaahedchkhclokjmfjbennhbeceecl) installed <br />
- [autohotkey version one](https://www.autohotkey.com/) <br />
- why would i pin edge - you dont need to but if u dont the favicon will always show in the taskbar 

**how does it work** <br />
it's an ahk script to put a copilot icon over the bell icon and make it stay on top <br />
when you click it it will open a copilot window. then it will work by minimising or bringing back up that window.

it's on you to resize the window to your liking or push it to the right quadrant of the screen, my code won't do that

**my copilot button is not where its supposed to be** <br />
the script is made for uhd screens. it can be made to go on smaller screens <br />
you will see where offset for the screen is supposed to be in the ahk code. for hd screens, i recommend cutting the curren values in half

**the css for mine isnt working / it still looks like the new copilot** <br />
please make sure u know -- u have to modify the window size urself and LEAVE IT OPEN <br />
go to [copilot's standalone page](https://www.copilot.com)

click extension > stylebot > open > and paste in the contents of the css file <br />
click extension > tab renamer > name it something like 'Windows AI Sidebar'<br />
click extension > favicon changer > change to 'https://i.ibb.co/ZztcwmW0/sidebar.png'

microsoft is in the process of deprecating www.copilot.com, which these changes rely on <br />
if you keep getting the new one, keep trying to go to the old one, it works eventually (for now) <br />
their new one, copilot.microsoft.com, can't be edited with traditional element-changer tools, so i need to figure out something else <br />

**closing notes** <br />
recommend doing all the edge things first, then running the exe/ahk <br />
recommend a high-quality background and using transparent tb addon with windhawk or [translucent tb](https://github.com/TranslucentTB/TranslucentTB)

u could also modify the colors in the ahk script. i tried to make it transparent, but to no avail <br />
there might be some other dll-call method or something but that's too involved and invasive imo
