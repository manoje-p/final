User.delete_all
Card.delete_all
Guest.delete_all

manoje = User.create(name: "Manoje")
hanne = User.create(name: "Hanne")
emily = User.create(name: "Emily")
reema = User.create(name: "Reema")
dan = User.create(name: "Dan")

one = Card.create(sku: 1)
two = Card.create(sku: 2)
three = Card.create(sku: 3)
four = Card.create(sku: 4)
five = Card.create(sku: 5)

Guest.create(user_id: manoje.id, name: "Nick", address: "1500 Chicago Ave.", gift: "Handmade", status: "Done", card_id: one.id)
Guest.create(user_id: manoje.id, name: "Pang", address: "1500 Chicago Ave.", gift: "Postcard", status: "Done", card_id: two.id)
Guest.create(user_id: manoje.id, name: "Jess", address: "1500 Chicago Ave.", gift: "Grocery", status: "Done", card_id: two.id)
Guest.create(user_id: manoje.id, name: "Emily", address: "1600 Hinman Ave.", gift: "Wine Glass", status: "Done", card_id: two.id)
Guest.create(user_id: manoje.id, name: "Pai", address: "1410 Chicago Ave.", gift: "Heater", status: "Done", card_id: two.id)