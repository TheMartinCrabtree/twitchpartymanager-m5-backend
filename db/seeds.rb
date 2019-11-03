# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Voip.create(servername: "voip server 1", voipaddress: "162.169.0.1", servernote: "a discord 1")
Voip.create(servername: "voip server 2", voipaddress: "162.169.0.2", servernote: "a discord 2")
Voip.create(servername: "voip server 3", voipaddress: "162.169.0.3", servernote: "a discord 3")
Voip.create(servername: "voip server 4", voipaddress: "162.169.0.4", servernote: "a discord 4")

User.create(username: "User123", subscriber: true, administrator: false, follower: false )
User.create(username: "User234", subscriber: true, administrator: true, follower: false )
User.create(username: "User456", subscriber: false, administrator: false, follower: true )
User.create(username: "User789", subscriber: true, administrator: false, follower: false )

Event.create(eventname: "First Event", serverinfo: "That Server 1", voip: "that voip 1", eventnote: "Here's all of the info you need")
Event.create(eventname: "Second Event", serverinfo: "That Server 1", voip: "that voip 1", eventnote: "Here's all of the info you need")
Event.create(eventname: "Third Event", serverinfo: "That Server 2", voip: "that voip 2", eventnote: "Here's all of the info you need")
Event.create(eventname: "Fourth Event", serverinfo: "That Server 2", voip: "that voip 1", eventnote: "Here's all of the info you need")
Event.create(eventname: "Fith Event", serverinfo: "That Server 3", voip: "that voip 2", eventnote: "Here's all of the info you need")
Event.create(eventname: "Sixth Event", serverinfo: "That Server 3", voip: "that voip 2", eventnote: "Here's all of the info you need")

Announcement.create(title: "First Event Thing", bodytext: "This is a thing")
Announcement.create(title: "Second Event Thing", bodytext: "This is a doohicky")
Announcement.create(title: "Third Event Thing", bodytext: "This is a stuff")
Announcement.create(title: "Fourth Event Thing", bodytext: "This is a thingy")
Announcement.create(title: "Fith Event Thing", bodytext: "This is a thang")

Joinuserevent.create(ingamename: "Oscar", inparty: true,waitlist:false, user_id: 1, event_id: 1)
Joinuserevent.create(ingamename: "Megan", inparty: true,waitlist:false, user_id: 2, event_id: 1)
Joinuserevent.create(ingamename: "Lisa", inparty: true,waitlist:false, user_id: 3, event_id: 1)
Joinuserevent.create(ingamename: "Martin", inparty: true,waitlist:false, user_id: 4, event_id: 1)
Joinuserevent.create(ingamename: "Oscar", inparty: true,waitlist:false, user_id: 1, event_id: 2)
Joinuserevent.create(ingamename: "Megan", inparty: true,waitlist:false, user_id: 2, event_id: 2)
Joinuserevent.create(ingamename: "Lisa", inparty: true,waitlist:false, user_id: 3, event_id: 2)
Joinuserevent.create(ingamename: "Martin", inparty: true,waitlist:false, user_id: 4, event_id: 3)
Joinuserevent.create(ingamename: "Megan", inparty: true,waitlist:false, user_id: 2, event_id: 4)
Joinuserevent.create(ingamename: "Lisa", inparty: true,waitlist:false, user_id: 3, event_id: 4)