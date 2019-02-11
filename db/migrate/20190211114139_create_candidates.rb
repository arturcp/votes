class CreateCandidates < ActiveRecord::Migration[5.2]
  def change
    create_table :candidates do |t|
      t.integer :category_id
      t.string :name, nil: false
      t.string :image_url
      t.string :description
      t.string :link

      t.timestamps
    end
  end
end
