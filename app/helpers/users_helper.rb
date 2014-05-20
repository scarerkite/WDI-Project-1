module UsersHelper
  # def games_overview
  #   # Calculate computer matches
  #   c_wins = Game.where(win: params[:id] && lose: 1).count
  #   c_losses = Game.where(win: 1 && lose: params[:id]).count
  #   # draws = Move where game_id includes params[:id], id 1 and Game.draw is true
  #   # Calculate total matches
  #   wins = Game.where(win: params[:id]).count
  #   losses = Game.where(lose: params[:id]).count
  #   # draws = Move where game_id includes params[:id] and Game.draw is true
  #   # User matches is total matches minus computer matches

  # end

  # def game_challenges
  #   # Check for user id in moves table, where the id is second go.
  #   #game_id = 
  #   <%= #link_to "Accept", game_path(game_id) %> # update declined to false
  #   <%= #link_to "Decline", games/game_id, :confirm => 'Are you sure?', :method => :delete %>
  # end

  # def game_opponents
  #   # create a list, by going through the moves table with the params[id] and counting instances against the same user.
  #   # call the user name.
  # end

end







# def songs_list_for_artist
#     songs = Song.where(artist_id: nil)
#     html = songs.map do |song|
#       content_tag :label do
#         "#{song.name} #{check_box_tag('artist[song_ids][]', song.id)}"
#       end
#     end.join
#     raw html
#   end