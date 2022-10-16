Northstar.Retouched (work in progress)
================================================================================

Vanilla balance, just less so.

Goals
--------------------------------------------------------------------------------

  1. Not a "perfect" rebalance
  2. Nerfing the top weapons a little, but leaving weaker/harder guns be so that players can still show off with them
  3. Minimal changes
  4. Avoiding _scope creep_ which causes unnecessary changes to accumulate

Constaints
--------------------------------------------------------------------------------

For now:

  1. Damage changes only, no messing with other variables like falloffs or headshot multipliers
  2. SMG, R201/101, Flatline, EVA-8 and Spitfire changes only
  3. No tactical and ordnance changes (yet)

Change summary
--------------------------------------------------------------------------------

| Weapon     | Change                     |
|------------|----------------------------|
| CAR        | 7 bullets to kill (from 4) |
| Alternator | 5 bullets to kill (from 3) |
| Volt       | 6 bullets to kill (from 4) |

TODO: the rest of the thing

Development
--------------------------------------------------------------------------------

### Damage range to bullets needed for kill

Make changes based on how many bullets are needed for kill,
because that's most noticeable for the player.

| Damage range | Bullets for kill |
|--------------|------------------|
| 100+         | 1                |
| 50 - 99      | 2                |
| 34 - 49      | 3                |
| 25 - 33      | 4                |
| 20 - 24      | 5                |
| 17 - 19      | 6                |
| 15 - 16      | 7                |
| 13 - 14      | 8                |
| 12           | 9                |
| 10 - 11      | 10               |
| 9            | 12               |
| 8            | 13               |
| 7            | 15               |
| 6            | 17               |
| 5            | 20               |
| 4            | 25               |
| 3            | 34               |
| 2            | 50               |
| 1            | 100              |


### Weapon code names

[Link](https://r2northstar.gitbook.io/r2northstar-wiki/hosting-a-server-with-northstar/dedicated-server#weapons)

### Harmony VPK tool

[Link](https://github.com/harmonytf/HarmonyVPKTool/releases/tag/1.2.0)

  1. Open `vpk/englishclient_mp_common.bsp.pak000_dir.vpk` in your Titanfall 2 install directory
  2. In the VPK, open `RootDir/scripts/weapons`
  3. Unpack the file somewhere on your PC
  4. Copy the file under `reference/` and `keyvalues/scripts/weapons`
  5. Leave the file under `reference/` as is, changes are made in `keyvalues/scripts/weapons`

### Change tracking

Use `./diffs.sh` or `./changes.sh` to track changes. You can also search for a single file
by passing a substring, eg.:

    $ ./changes.sh car

Make sure `./diffs.sh` includes only actual changes, not anything else (like whitespace changes and such).

### Editing

When editing a file under `keyvalues/scripts/weapons`, put a comment after the line explaining
the change like this:

  * `CHANGE/NERF: old value -> new value (explanation)`, if it's a nerf
  * `CHANGE/BUFF: old value -> new value (explanation)`, if it's a buff

Example:

```
"damage_near_value"     "14" // CHANGE/NERF: 25 -> 14 (4 -> 7 bullets)
"damage_far_value"      "10" // CHANGE/NERF: 13 -> 10 (7 -> 10 bullets)
"damage_very_far_value" "8"  // CHANGE/NERF: 10 -> 8 (10 -> 12 bullets)
```
