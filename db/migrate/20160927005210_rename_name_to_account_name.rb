class RenameNameToAccountName < ActiveRecord::Migration[5.0]
  def change
    rename_column :accounts, :name, :account_name
  end
end
