class AddNewFieldsToRecipe < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :directions, :text
    add_column :recipes, :cost, :decimal
  end
end
