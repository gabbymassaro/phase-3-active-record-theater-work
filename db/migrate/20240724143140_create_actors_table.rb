class CreateActorsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :actors do |t|
      t.string :name
      t.integer :phone
    end
  end
end
