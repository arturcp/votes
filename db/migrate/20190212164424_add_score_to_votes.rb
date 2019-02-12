class AddScoreToVotes < ActiveRecord::Migration[5.2]
  def change
    add_column :votes, :score, :integer, default: 0
  end
end
