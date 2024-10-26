use v5.40;
use experimental qw<class>;

class RockPaperScissors;

field $player_1 :param;
field $player_2 :param;

method play () {
    return 1 if $player_1 ne $player_2;
    return 0;
}
