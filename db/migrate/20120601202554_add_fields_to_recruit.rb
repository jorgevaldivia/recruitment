class AddFieldsToRecruit < ActiveRecord::Migration
  def up
    add_column :recruits, :contacted, :boolean
    add_column :recruits, :promising, :boolean
    add_column :recruits, :rejected, :boolean
    add_column :recruits, :comments, :string
  end

  def down
    remove_column :recruits, :contacted, :boolean
    remove_column :recruits, :promising, :boolean
    remove_column :recruits, :rejected, :boolean
    remove_column :recruits, :comments, :string
  end
end
