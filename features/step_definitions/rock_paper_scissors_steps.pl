#!/usr/bin/env perl

use v5.40;
use Test2::V0;
use Test::BDD::Cucumber::StepFile;
use RockPaperScissors ();

Given qr/player ([12]) chooses "(.*?)"/ => sub {
    S->{"player_$1"} = $2;
};

When 'the game is played' => sub {
    my $rps = RockPaperScissors->new(
        S->%{qw<player_1 player_2>}
    );
    S->{result} = $rps->play;
};

Then 'the game ends in a draw' => sub {
    is S->{result}, 0;
};

Then qr/player ([12]) wins the game/ => sub {
    is S->{result}, $1;
};
