## Repository of useful VScripts I've created

### How to use
- Requires server administrative console access to run. Will work on listen servers you create with the 'map' command or the Create Server button, as well as dedicated servers you operate
- Place the .nut file(s) into the `\tf\scripts\vscripts\` directory. If the vscripts folder does not exist, create it first
- In console, use the command `script_execute <scriptname>` to execute the desired vscript from inside the server when it is running
  - You can automate this by placing `script_execute <scriptname>` into either `listenserver.cfg` (for listen servers created with 'map' command or the Create Server button) or `server.cfg` (for dedicated servers) so that the script is automatically executed when the server runs

## Scripts:
### instantrespawn.nut
- Running this VScript will enable instant respawning of all player entities (including bots) natively, regardless of map or other configurations
- Configurations within script:
  - `const RESPAWN_DELAY = 0.1; //set the delay time (in seconds) for respawn`
  - Can be set as low as 0.0 for truly instant respawn, but I suggest leaving at 0.1 (set by default)

___

#### Special thanks to Braindawg for assistance in learning some of the essentials of Squirrel

#### Helpful References: 
- https://developer.valvesoftware.com/wiki/Team_Fortress_2/Scripting/Script_Functions
- https://developer.valvesoftware.com/wiki/Team_Fortress_2/Scripting/VScript_Examples
- https://developer.valvesoftware.com/wiki/VScript_Fundamentals
