class AddUserIdToTiles < ActiveRecord::Migration[5.0]
  def change
    add_reference :tiles, :user, foreign_key: true
  end
end
