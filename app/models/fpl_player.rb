class FplPlayer < ApplicationRecord
  after_create :add_additional_attributes

  def add_additional_attributes
    player_details = FplService.fetch_player_info(self.fpl_id)
    self.update_attributes({
      first_name: player_details["player_first_name"],
      last_name: player_details["player_last_name"],
      team_name: player_details["name"]
    })
  end
end
