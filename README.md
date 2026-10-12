# Trader Mirage

Each wandering trader gets one secret roll when it first appears.
Chance = (ordinary traders since the last illusioner + 1) x difficulty value, capped at 100%.
So the base chance and the per-miss increase are the same number, set by difficulty:

  Easy 5%   Normal 10%   Hard 15%

The difficulty is read fresh on every roll, so changing it mid-game is safe; the streak is kept.
Peaceful: no rolls happen, the streak is untouched, and disguised traders stay disguised
(an illusioner would be removed instantly there). Everything resumes when difficulty is raised.

A disguised trader turns into an illusioner when a player interacts with it or hurts it.
When a roll succeeds, the streak resets to zero.

Commands (permission level 2):
  /function trader_mirage:status
  /function trader_mirage:reset
  /function trader_mirage:set_easy {value:50}     (permille: 50 = 5%)
  /function trader_mirage:set_normal {value:100}
  /function trader_mirage:set_hard {value:150}
  /function trader_mirage:set_hint {value:0}      (0 hides the faint particle tell)

Written for Minecraft Java 1.21 (pack_format 48; singular `function` folders).
License: (add your own)
