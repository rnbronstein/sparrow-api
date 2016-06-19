bob = User.create(name: "Bob", email: "bob@bobsburgers.com", password: "password")
linda = User.create(name: "Linda", email: "linda@bobsburgers.com", password: "password")
tina = User.create(name: "Tina", email: "tina@bobsburgers.com", password: "password")
louise = User.create(name: "Louise", email: "louise@bobsburgers.com", password: "password")
gene = User.create(name: "Gene", email: "gene@bobsburgers.com", password: "password")

fibro = Diagnosis.create(user: linda, diagnosis: "Fibromyalgia")
back = Diagnosis.create(user: bob, diagnosis: "Back sprain")
uc = Diagnosis.create(user: tina, diagnosis: "Ulcerative colitis")
lupus = Diagnosis.create(user: louise, diagnosis: "Lupus")
scapula = Diagnosis.create(user: gene, diagnosis: "Scapula injury")

datetime1 = DateTime.new(2016,6,15,12,5,6)
datetime2 = DateTime.new(2016,6,14,12,5,6)
datetime3 = DateTime.new(2016,6,13,12,5,6)
datetime4 = DateTime.new(2016,6,12,06,23,6)
datetime5 = DateTime.new(2016,6,12,20,5,6)
datetime6 = DateTime.new(2016,6,11,8,5,6)
datetime7 = DateTime.new(2016,6,9,12,5,6)
datetime8 = DateTime.new(2016,6,8,12,5,6)


time_1 = DateTime.now.strftime('%FT%T%')
time_2 = datetime1.strftime('%FT%T%')
time_3 = datetime2.strftime('%FT%T%')
time_4 = datetime3.strftime('%FT%T%')
time_5 = datetime4.strftime('%FT%T%')
time_6 = datetime5.strftime('%FT%T%')
time_7 = datetime6.strftime('%FT%T%')
time_8 = datetime7.strftime('%FT%T%')
time_9 = datetime8.strftime('%FT%T%')

Entry.create(diagnosis: fibro, value: 1, time: time_1)
Entry.create(diagnosis: fibro, value: 2, time: time_2)
Entry.create(diagnosis: fibro, value: 0, time: time_3)
Entry.create(diagnosis: fibro, value: 3, time: time_4)
Entry.create(diagnosis: fibro, value: 2, time: time_5)

Entry.create(diagnosis: back, value: 8)
Entry.create(diagnosis: back, value: 3)
Entry.create(diagnosis: back, value: 4)
Entry.create(diagnosis: back, value: 1)
Entry.create(diagnosis: back, value: 9)
Entry.create(diagnosis: back, value: 7)

Entry.create(diagnosis: uc, value: 4, time: time_1)
Entry.create(diagnosis: uc, value: 3, time: time_2)
Entry.create(diagnosis: uc, value: 5, time: time_3)
Entry.create(diagnosis: uc, value: 2, time: time_4)
Entry.create(diagnosis: uc, value: 5, time: time_5)
Entry.create(diagnosis: uc, value: 7, time: time_6)
Entry.create(diagnosis: uc, value: 6, time: time_7)

Entry.create(diagnosis: lupus, value: 0, time: time_1)
Entry.create(diagnosis: lupus, value: 0, time: time_2)
Entry.create(diagnosis: lupus, value: 3, time: time_3)
Entry.create(diagnosis: lupus, value: 4, time: time_4)
Entry.create(diagnosis: lupus, value: 5, time: time_5)
Entry.create(diagnosis: lupus, value: 8, time: time_6)
Entry.create(diagnosis: lupus, value: 0, time: time_7)
Entry.create(diagnosis: lupus, value: 1, time: time_8)
Entry.create(diagnosis: lupus, value: 2, time: time_9)

Entry.create(diagnosis: scapula, value: 8, time: time_1)
Entry.create(diagnosis: scapula, value: 6, time: time_2)
Entry.create(diagnosis: scapula, value: 7, time: time_3)
Entry.create(diagnosis: scapula, value: 8, time: time_4)
Entry.create(diagnosis: scapula, value: 9, time: time_5)
Entry.create(diagnosis: scapula, value: 8, time: time_6)
Entry.create(diagnosis: scapula, value: 6, time: time_7)
Entry.create(diagnosis: scapula, value: 7, time: time_8)
Entry.create(diagnosis: scapula, value: 5, time: time_9)
