class ChangeIngredientsToDoses < ActiveRecord::Migration[6.0]
  def change
    rename_table :ingredients, :doses
  end
end
