#!/usr/bin/env perl
use Mojolicious::Lite;

get '/' => sub {
        my $self = shift;
        $self->render('index');
    };

app->start;
__DATA__

@@ index.html.ep
% layout 'default';
% title 'Welcome';
Welcome to the Mojolicious real-time web framework!

@@ layouts/default.html.ep
<!DOCTYPE html>
<html>
  <head><title><%= title %></title></head>
  <body>
  <h4><%= content %></h4>

  <input type="text" name="archivo"  />

  </body>
</html>