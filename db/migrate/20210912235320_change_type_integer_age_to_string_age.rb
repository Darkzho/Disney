class ChangeTypeIntegerAgeToStringAge < ActiveRecord::Migration[6.0]
  def change
    change_column :characters, :age, :string
  end
end
