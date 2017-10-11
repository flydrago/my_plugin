class AddLastTweetToHickWall < ActiveRecord::Migration[5.0]
  def change
    add_column :hick_walls, :last_tweet, :string
  end
end
