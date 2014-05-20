
Game.delete_all
Move.delete_all


g1 = Game.create!(finished: true, declined: false, draw: true, player1: 3, player2: 2)
g2 = Game.create!(finished: true, declined: false, win: 2, lose: 3, draw: false, player1: 2, player2: 3)
g3 = Game.create!(finished: true, declined: false, win: 4, lose: 5, draw: false, player1: 4, player2: 5)
g4 = Game.create!(finished: false, declined: false, player1: 2, player2: 1)
g5 = Game.create!(finished: true, declined: true, player1: 3, player2: 5)
g6 = Game.create!(finished: true, declined: false, win: 1, lose: 2, draw: false, player1: 2, player2: 1)
g7 = Game.create!(finished: true, declined: false, win: 2, lose: 5, draw: false, player1: 2, player2: 5)
g8 = Game.create!(finished: true, declined: false, win: 2, lose: 3, draw: false, player1: 2, player2: 3)
g9 = Game.create!(finished: true, declined: false, win: 3, lose: 1, draw: false, player1: 3, player2: 1)
g10 = Game.create!(finished: false, declined: false, player1: 2, player2: 4)
g11 = Game.create!(finished: false, declined: false, player1: 3, player2: 5)
g12 = Game.create!(finished: false, declined: false, player1: 2, player2: 5)
g13 = Game.create!(finished: false, declined: false, player1: 3, player2: 1)

m1  = Move.create!(move_no: 1, placement: "2-2", user_id: 3, game_id: 1)
m2  = Move.create!(move_no: 2, placement: "1-1", user_id: 2, game_id: 1)
m3  = Move.create!(move_no: 3, placement: "2-3", user_id: 3, game_id: 1)
m4  = Move.create!(move_no: 4, placement: "2-1", user_id: 2, game_id: 1)
m5  = Move.create!(move_no: 5, placement: "3-1", user_id: 3, game_id: 1)
m6  = Move.create!(move_no: 6, placement: "1-3", user_id: 2, game_id: 1)
m7  = Move.create!(move_no: 7, placement: "1-2", user_id: 3, game_id: 1)
m8  = Move.create!(move_no: 8, placement: "3-2", user_id: 2, game_id: 1)
m9  = Move.create!(move_no: 9, placement: "3-3", user_id: 3, game_id: 1)

m10 = Move.create!(move_no: 1, placement: "3-3", user_id: 2, game_id: 2)
m11 = Move.create!(move_no: 2, placement: "3-2", user_id: 3, game_id: 2)
m12 = Move.create!(move_no: 3, placement: "1-3", user_id: 2, game_id: 2)
m13 = Move.create!(move_no: 4, placement: "2-2", user_id: 3, game_id: 2)
m14 = Move.create!(move_no: 5, placement: "2-3", user_id: 2, game_id: 2)


m19 = Move.create!(move_no: 1, placement: "3-3", user_id: 4, game_id: 3)
m20 = Move.create!(move_no: 2, placement: "3-2", user_id: 5, game_id: 3)
m21 = Move.create!(move_no: 3, placement: "1-3", user_id: 4, game_id: 3)
m22 = Move.create!(move_no: 4, placement: "2-2", user_id: 5, game_id: 3)
m23 = Move.create!(move_no: 5, placement: "2-3", user_id: 4, game_id: 3)


m28 = Move.create!(move_no: 1, placement: "2-2", user_id: 2, game_id: 4) 
m29 = Move.create!(move_no: 2, placement: "1-1", user_id: 1, game_id: 4) 
m30 = Move.create!(move_no: 3, placement: "3-3", user_id: 2, game_id: 4)


m37 = Move.create!(move_no: 1, placement: "2-2", user_id: 3, game_id: 5)


m46 = Move.create!(move_no: 1, placement: "3-3", user_id: 2, game_id: 6)
m47 = Move.create!(move_no: 2, placement: "3-2", user_id: 1, game_id: 6)
m48 = Move.create!(move_no: 3, placement: "1-3", user_id: 2, game_id: 6)
m49 = Move.create!(move_no: 4, placement: "2-2", user_id: 1, game_id: 6) 
m50 = Move.create!(move_no: 5, placement: "2-3", user_id: 2, game_id: 6)


m55 = Move.create!(move_no: 1, placement: "3-3", user_id: 2, game_id: 7)
m56 = Move.create!(move_no: 2, placement: "3-2", user_id: 5, game_id: 7)
m57 = Move.create!(move_no: 3, placement: "1-3", user_id: 2, game_id: 7)
m58 = Move.create!(move_no: 4, placement: "2-2", user_id: 5, game_id: 7)
m59 = Move.create!(move_no: 5, placement: "2-3", user_id: 2, game_id: 7)


m64 = Move.create!(move_no: 1, placement: "3-3", user_id: 2, game_id: 8)
m65 = Move.create!(move_no: 2, placement: "3-2", user_id: 3, game_id: 8)
m66 = Move.create!(move_no: 3, placement: "1-3", user_id: 2, game_id: 8)
m67 = Move.create!(move_no: 4, placement: "2-2", user_id: 3, game_id: 8)
m68 = Move.create!(move_no: 5, placement: "2-3", user_id: 2, game_id: 8)


m73 = Move.create!(move_no: 1, placement: "3-3", user_id: 3, game_id: 9)
m74 = Move.create!(move_no: 2, placement: "3-2", user_id: 1, game_id: 9)
m75 = Move.create!(move_no: 3, placement: "1-3", user_id: 3, game_id: 9)
m76 = Move.create!(move_no: 4, placement: "2-2", user_id: 1, game_id: 9)
m77 = Move.create!(move_no: 5, placement: "2-3", user_id: 3, game_id: 9)


m82 = Move.create!(move_no: 1, placement: "3-3", user_id: 2, game_id: 10)
m83 = Move.create!(move_no: 2, placement: "3-2", user_id: 4, game_id: 10)


m91 = Move.create!(move_no: 1, placement: "1-3", user_id: 3, game_id: 11)
m92 = Move.create!(move_no: 2, placement: "2-2", user_id: 5, game_id: 11)


m100 = Move.create!(move_no: 1, placement: "1-2", user_id: 2, game_id: 12)
m101 = Move.create!(move_no: 2, placement: "2-2", user_id: 5, game_id: 12)
m102 = Move.create!(move_no: 3, placement: "1-3", user_id: 2, game_id: 12)
m103 = Move.create!(move_no: 4, placement: "1-1", user_id: 5, game_id: 12)


m109 = Move.create!(move_no: 1, placement: "3-2", user_id: 3, game_id: 13) 
m110 = Move.create!(move_no: 2, placement: "2-2", user_id: 1, game_id: 13)
m111 = Move.create!(move_no: 3, placement: "3-3", user_id: 3, game_id: 13)


