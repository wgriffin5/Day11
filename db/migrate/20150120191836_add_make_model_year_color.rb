class AddMakeModelYearColor < ActiveRecord::Migration
  def change
  	add_column :cars, :Make, :string
  	add_column :cars, :Model, :string
  	add_column :cars, :Year, :string
  	add_column :cars, :Color, :string
  end
end
