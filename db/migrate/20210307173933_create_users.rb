class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :playlist, :default=>"https://open.spotify.com/embed/playlist/0vvXsWCC9xrXsKd4FyS8kM"
      t.integer :timer_interval, :default=>25
      t.integer :timer_break, :default=>5

      t.timestamps
    end
  end
end
