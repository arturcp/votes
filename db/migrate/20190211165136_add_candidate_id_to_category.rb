class AddCandidateIdToCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :candidate_id, :integer
  end
end
