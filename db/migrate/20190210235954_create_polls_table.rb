class CreatePollsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :polls do |t|
      t.string :name, nil: false
      t.datetime :poll_date
      t.integer :status, default: 1
    end
  end
end
