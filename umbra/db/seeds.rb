# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

PosQuote.create(quote: "When someone comes up and says something like, 'I am a god,' everybody says 'Who does he think he is?' I just told you who I thought I was. A god. I just told you.", author: "Kanye West")
PosQuote.create(quote: "I've reached a point in my life where my Truman Show boat has hit the painting.", author: "Kanye West")
PosQuote.create(quote: "My greatest pain in life is that I will never be able to see myself perform live.", author: "Kanye West")
NegQuote.create(quote: "You can't process me with a normal brain.", author: "Charlie Sheen")
NegQuote.create(quote: "People say you have to work on your resentments. Yeah, no, I'm gonna hang onto them and they're gonna fuel my attack.", author: "Charlie Sheen")
NegQuote.create(quote: "I have a 10,000-year-old brain and the boogers of a 7-year-old. That's how I describe myself.", author: "Charlie Sheen")

User.create(phone: "+19256396135", preference: "pos", subscribed: true)
User.create(phone: "+19256396135", preference: "neg", subscribed: true)

QCount.create(q_count: 1)