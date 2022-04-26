class AddCorrectToChoice < ActiveRecord::Migration[5.2]
  def change
    add_column :choices, :correct, :boolean
  end
end
