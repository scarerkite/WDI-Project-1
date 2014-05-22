User.delete_all
Game.delete_all
Move.delete_all

ai = User.create!(user_name: "computer", password: "password", email: "ai@foo.com")
alice = User.create!(user_name: "alice", password: "password", email: "alice@alice.com")
bob = User.create!(user_name: "bob", password: "password", email: "bob@bob.com")
chris = User.create!(user_name: "chris", password: "password", email: "chris@chris.com")
derek = User.create!(user_name: "derek", password: "password", email: "derek@derek.com")
ed = User.create!(user_name: "ed", password: "password", email: "ed@ed.com")
fred = User.create!(user_name: "fred", password: "password", email: "fred@fred.com")
gill = User.create!(user_name: "gill", password: "password", email: "gill@gill.com")
harry = User.create!(user_name: "harry", password: "password", email: "harry@harry.com")

g1 = Game.create!(finished: true, declined: false, draw: true, player_1: bob, player_2: alice)
g2 = Game.create!(finished: true, declined: false, winner: alice, loser: bob, draw: false, player_1: alice, player_2: bob)
g3 = Game.create!(finished: true, declined: false, winner: chris, loser: derek, draw: false, player_1: chris, player_2: derek)
g4 = Game.create!(finished: false, declined: false, player_1: alice, player_2: ai)
g5 = Game.create!(finished: true, declined: true, player_1: bob, player_2: derek)
g6 = Game.create!(finished: true, declined: false, winner: ai, loser: alice, draw: false, player_1: alice, player_2: ai)
g7 = Game.create!(finished: true, declined: false, winner: alice, loser: derek, draw: false, player_1: alice, player_2: derek)
g8 = Game.create!(finished: true, declined: false, winner: alice, loser: bob, draw: false, player_1: alice, player_2: bob)
g9 = Game.create!(finished: true, declined: false, winner: bob, loser: ai, draw: false, player_1: bob, player_2: ai)
g10 = Game.create!(finished: false, declined: false, player_1: alice, player_2: chris)
g11 = Game.create!(finished: false, declined: false, player_1: bob, player_2: derek)
g12 = Game.create!(finished: false, declined: false, player_1: alice, player_2: derek)
g13 = Game.create!(finished: false, declined: false, player_1: bob, player_2: ai)

m1  = Move.create!(move_no: 1, placement: "2-2", user: bob, game: g1)
m2  = Move.create!(move_no: 2, placement: "1-1", user: alice, game: g1)
m3  = Move.create!(move_no: 3, placement: "2-3", user: bob, game: g1)
m4  = Move.create!(move_no: 4, placement: "2-1", user: alice, game: g1)
m5  = Move.create!(move_no: 5, placement: "3-1", user: bob, game: g1)
m6  = Move.create!(move_no: 6, placement: "1-3", user: alice, game: g1)
m7  = Move.create!(move_no: 7, placement: "1-2", user: bob, game: g1)
m8  = Move.create!(move_no: 8, placement: "3-2", user: alice, game: g1)
m9  = Move.create!(move_no: 9, placement: "3-3", user: bob, game: g1)

m10 = Move.create!(move_no: 1, placement: "3-3", user: alice, game: g2)
m11 = Move.create!(move_no: 2, placement: "3-2", user: bob, game: g2)
m12 = Move.create!(move_no: 3, placement: "1-3", user: alice, game: g2)
m13 = Move.create!(move_no: 4, placement: "2-2", user: bob, game: g2)
m14 = Move.create!(move_no: 5, placement: "2-3", user: alice, game: g2)


m19 = Move.create!(move_no: 1, placement: "3-3", user: chris, game: g3)
m20 = Move.create!(move_no: 2, placement: "3-2", user: derek, game: g3)
m21 = Move.create!(move_no: 3, placement: "1-3", user: chris, game: g3)
m22 = Move.create!(move_no: 4, placement: "2-2", user: derek, game: g3)
m23 = Move.create!(move_no: 5, placement: "2-3", user: chris, game: g3)


m28 = Move.create!(move_no: 1, placement: "2-2", user: alice, game: g4) 
m29 = Move.create!(move_no: 2, placement: "1-1", user: ai, game: g4) 
m30 = Move.create!(move_no: 3, placement: "3-3", user: alice, game: g4)


m37 = Move.create!(move_no: 1, placement: "2-2", user: bob, game: g5)


m46 = Move.create!(move_no: 1, placement: "3-3", user: alice, game: g6)
m47 = Move.create!(move_no: 2, placement: "3-2", user: ai, game: g6)
m48 = Move.create!(move_no: 3, placement: "1-3", user: alice, game: g6)
m49 = Move.create!(move_no: 4, placement: "2-2", user: ai, game: g6) 
m50 = Move.create!(move_no: 5, placement: "2-3", user: alice, game: g6)


m55 = Move.create!(move_no: 1, placement: "3-3", user: alice, game: g7)
m56 = Move.create!(move_no: 2, placement: "3-2", user: derek, game: g7)
m57 = Move.create!(move_no: 3, placement: "1-3", user: alice, game: g7)
m58 = Move.create!(move_no: 4, placement: "2-2", user: derek, game: g7)
m59 = Move.create!(move_no: 5, placement: "2-3", user: alice, game: g7)


m64 = Move.create!(move_no: 1, placement: "3-3", user: alice, game: g8)
m65 = Move.create!(move_no: 2, placement: "3-2", user: bob, game: g8)
m66 = Move.create!(move_no: 3, placement: "1-3", user: alice, game: g8)
m67 = Move.create!(move_no: 4, placement: "2-2", user: bob, game: g8)
m68 = Move.create!(move_no: 5, placement: "2-3", user: alice, game: g8)


m73 = Move.create!(move_no: 1, placement: "3-3", user: bob, game: g9)
m74 = Move.create!(move_no: 2, placement: "3-2", user: ai, game: g9)
m75 = Move.create!(move_no: 3, placement: "1-3", user: bob, game: g9)
m76 = Move.create!(move_no: 4, placement: "2-2", user: ai, game: g9)
m77 = Move.create!(move_no: 5, placement: "2-3", user: bob, game: g9)


m82 = Move.create!(move_no: 1, placement: "3-3", user: alice, game: g10)
m83 = Move.create!(move_no: 2, placement: "3-2", user: chris, game: g10)


m91 = Move.create!(move_no: 1, placement: "1-3", user: bob, game: g11)
m92 = Move.create!(move_no: 2, placement: "2-2", user: derek, game: g11)


m100 = Move.create!(move_no: 1, placement: "1-2", user: alice, game: g12)
m101 = Move.create!(move_no: 2, placement: "2-2", user: derek, game: g12)
m102 = Move.create!(move_no: 3, placement: "1-3", user: alice, game: g12)
m103 = Move.create!(move_no: 4, placement: "1-1", user: derek, game: g12)


m109 = Move.create!(move_no: 1, placement: "3-2", user: bob, game: g13) 
m110 = Move.create!(move_no: 2, placement: "2-2", user: ai, game: g13)
m111 = Move.create!(move_no: 3, placement: "3-3", user: bob, game: g13)


