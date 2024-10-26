#!/usr/bin/env perl

use v5.40;
use Test2::V0;
use Test2::Tools::Spec;

use RockPaperScissors qw<play>;

describe 'a game of Rock Paper Scissors' => sub {
    describe 'both players pick "rock"' => sub {
        tests 'ends with a draw' => sub {
            is play('rock', 'rock'), 'draw';
        };
    };
    
    describe 'player 1 picks "rock" and player 2 picks "scissors"' => sub {
        tests 'player 1 wins' => sub {
            is play('paper', 'rock'), '1';
        };
    };
};

done_testing;
