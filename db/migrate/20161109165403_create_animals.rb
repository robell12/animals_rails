class CreateAnimals < ActiveRecord::Migration[5.0]
  def change
    create_table :animals do |t|
    	t.string :name, null: false
    	t.string :species, null: false
    	t.integer :age
    	t.boolean :alive, default: true
    	t.belongs_to :person

      t.timestamps
    end
  end
end
