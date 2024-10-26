use v5.40;
use experimental qw<class>;

class RockPaperScissors;

use Const::Fast;

const my %MOVES => reverse indexed qw<rock paper scissors>;

field $player_1 :param;
field $player_2 :param;

method play () {
    if ($player_1 ne $player_2) {
        return $MOVES{$player_1} == ($MOVES{$player_2} + 1) % keys %MOVES ? 1 : 2;
    }
    return 0;
}
