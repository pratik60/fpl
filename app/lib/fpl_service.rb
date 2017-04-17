class FplService

  class << self

    def base_url
      "https://fantasy.premierleague.com"
    end

    def update_gameweek_score(player_ids, gw)
      Parallel.each(player_ids, in_threads: 8) do |player_id|
        score = gameweek_score(player_id, gw)
        FplPlayer.find_by(fpl_id: player_id).update_attributes("gw_#{gw}": score)
      end
    end

    # Queries: https://fantasy.premierleague.com/drf/entry/#{player_id}
    # Response from api:
    # {
    #   "entry": {
    #     "id": 2857018,
    #     "player_first_name": "Pratik",
    #     "player_last_name": "Bothra",
    #     "name": "Class on Grass",
    #     "started_event": 1,
    #     "player": 3692207
    #     },
    #   "leagues": {
    #   }
    # }
    # Input: PlayerId. Example: 2857018
    # Response:
    # {"id"=>2857018,
    #  "player_first_name"=>"Pratik",
    #  "player_last_name"=>"Bothra",
    #  "name"=>"Class on Grass"
    # }
    def fetch_player_info(player_id)
      player_info_api = base_url + "/drf/entry/#{player_id}"
      response = HTTParty.get(player_info_api)
      entry = JSON.parse(response.body)["entry"]
      entry.slice("id", "player_first_name", "player_last_name", "name")
    end

    # TODO: Request/Response
    def gameweek_score(player_id, gameweek)
      player_gw_api = base_url + "/drf/entry/#{player_id}/event/#{gameweek}/picks"
      response = HTTParty.get(player_gw_api)
      JSON.parse(response.body)["entry_history"]["points"]
    end

  end
end
