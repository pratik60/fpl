class CreateFplPlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :fpl_players do |t|
      t.bigint :fpl_id
      t.string :first_name
      t.string :last_name
      t.string :team_name
      t.timestamps
      (1..38).each do |i|
        t.integer "gw_#{i}"
      end
    end
    add_index :fpl_players, :fpl_id, unique: true
  end
end

