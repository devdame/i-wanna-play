module ApplicationHelper

  def current_player
    Player.find_by_id(session[:player_id])
  end
end
