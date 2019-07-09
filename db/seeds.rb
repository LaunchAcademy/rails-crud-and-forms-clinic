journal_1 = Journal.create(name: "Nick's Tween Entries", year: 2009, author: "Birdman", description: "oh god there is just so many hormones...", theme: "personal" )
journal_2 = Journal.create(name: "College senior year", year: 2014, author: "Chinchilla", description: "a rant about ontology and being that is completely uninformed", theme: "school" )
journal_3 = Journal.create(name: "Workout Entries", year: 2017, author: "Nick", theme: "exercise" )


Entry.create(title: "Still covered in acne", body: "small sobs", journal: journal_1)
Entry.create(title: "So I'm vegan now", body: "LET ME TELL YOU ABOUT FACTORY FARMING", journal: journal_1)

Entry.create(title: "I still don't understand human emotions", body: "How can I study when my friends are playing call of duty and I'm still pining over someone?", journal: journal_2)
Entry.create(title: "Running a business", body: "no.clue.what.I.am.doing", journal: journal_2)
