class AddPointsToCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :points, :integer
  end
end
