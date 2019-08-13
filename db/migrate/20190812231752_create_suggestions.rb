class CreateSuggestions < ActiveRecord::Migration[5.1]
  def change
    create_table :suggestions do |t|
    	t.text :description
    	
    	t.timestamps
    end
  end
end
