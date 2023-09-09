<script>

import "./character-data.json";
import "../assets";

//globals
CRIT_MULTIPLIER = 1.33333;

//variables
//only use when attacks happen. a is the local player, b is the online player.
a;
a.atk;
a.def;
a.mat;
a.mdf;
a.hp;
a.spd;
a.mp;
b;
b.atk;
b.def;
b.mat;
b.mdf;
b.hp;
b.spd;
b.mp;

//team setup: each team can have up to 4 people. here we use dummies as a placeholder and replace the values later. once again, a is local, b is online
teamA = {dummy, dummy, dummy, dummy}
teamB = {dummy, dummy, dummy, dummy}

</script>