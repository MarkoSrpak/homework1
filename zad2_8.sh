#!/bin/bash

#koristeci unaprijed skinutu stranicu
content=$(cat ./njuskalo.html.save)

#spremi stranicu, ne radi bas uvijek jer chapcha
#content=$(curl -L https://www.njuskalo.hr/?ctl=search_ads&keywords=mobiteli)

#verzija s wget isto ne radi
#content=$(wget https://www.njuskalo.hr/?ctl=search_ads&keywords=mobiteli -q -O -)

#echo "$content" | grep "h3" | grep "entity-title" | cut -f3 -d ">" | cut -f1 -d "<"
echo "$content" | grep "h3" | grep "entity-title" | cut -f3 -d ">" | cut -f1 -d "<" > njuskalo.oglasi
echo "$content" > njuskalo.html

