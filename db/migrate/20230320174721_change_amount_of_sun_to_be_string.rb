class ChangeAmountOfSunToBeString < ActiveRecord::Migration[7.0]
  def change
    change_column :plants, :amount_of_sun, :text
  end
end
