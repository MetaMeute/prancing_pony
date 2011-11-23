# PrancingPony

The Prancing Pony is an inn in the village of Bree (this is somewhere in Middle-earth). It’s also, where Frodo first met Strider (aka
Aragorn, Son of Arathorn).

Sadly this program is no longer pony-powered, but got an upgrade to Rails. Nobody can stop the technical progress and steam-powered
engines are what is now state-of-the-art.

Anyway. It still serves us (MetaMeute) best as a counter in nearly all meanings of the word. It counts and fresh beverages are served
with it’s help to fulfill the needs of thirsty geeks.

## Installation ##

Add the prancing_pony gem to your `Gemfile`:

    gem 'prancing_pony'

Add a route in your `config/routes.rb` (i.e. mount the engine):

    mount PrancingPony::Engine, "prancing_pony"

Install the migrations:

    rake prancing_pony:install:migrations
    rake db::migrate

That should be it—start up your server and see prancing pony in action.

