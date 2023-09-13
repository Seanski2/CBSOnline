<script>

import "./character-data.json";
import "./element-chart.json";
import "../assets";

//globals and hardcoded values
CRIT_MULTIPLIER = 1.33333;
ATTACK_MULTIPLIER = 1.25; //tweak these however you want so that the damage formula is balanced
DEFENSE_MULIPLIER = 1.15; //formulas will be: damage = ((move.damage + a.atk) * (ATTACK_MULTIPLIER * move.element.effectiveness)) - (b.def * DEFENSE_MULTIPLIER)
MAGICATK_MULTIPLIER = 1.33333; //values will be clamped to prevent ohko's and negative values
MAGICDEF_MULTIPLIER = 1.25;

//variables
//only use when attacks happen. a is the local player, b is the online player.
a = {
    "atk": 0,
    "def": 0,
    "mat": 0,
    "mdf": 0,
    "hp": 0,
    "spd": 0,
    "mp": 0
};
b = {
    "atk": 0,
    "def": 0,
    "mat": 0,
    "mdf": 0,
    "hp": 0,
    "spd": 0,
    "mp": 0
};
yourTurn = false; //used only client-side to indicate when it's the local player's turn

//menu and other ui
menuSelection = 0; //used for navigation
currentMenu = "main"; //each menu has a string id so i don't have to deal with numbers :v

//team setup: each team can have up to 4 people. here we use dummies as a placeholder and replace the values later. once again, a is local, b is online
teamA = {dummy, dummy, dummy, dummy}
teamB = {dummy, dummy, dummy, dummy}

/*
TODO:
- Make charater selection
- Speed function to determine turn order
- Online connectivity
- Incorporate damage formulas
- UI
- Make game work
- Fancy Stuff (like move effects and animations)
*/

//actual code lol

</script>