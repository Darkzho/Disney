class ChangeTypeIntegerWeightToStringWeight < ActiveRecord::Migration[6.0]
  def change
    change_column :characters, :weight, :string
  end
end
