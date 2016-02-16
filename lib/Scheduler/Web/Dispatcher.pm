package Scheduler::Web::Dispatcher;
use strict;
use warnings;
use utf8;
use Amon2::Web::Dispatcher::RouterBoom;

get '/' => sub {
    my ($c) = @_;
    return $c->render('index.tx');
};

get '/user' => sub {
    my ($c) = @_;

    return $c->render('user.tx', {
        name => 'sakaimo',
        age  => '40',
        address => 'Kawasaki',
    });
};

1;