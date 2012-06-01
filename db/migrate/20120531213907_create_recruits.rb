class CreateRecruits < ActiveRecord::Migration
  def change
    create_table :recruits do |t|
      t.string :name
      t.string :email
      t.string :cellphone
      t.string :residence
      t.boolean :rails

      t.timestamps
    end
  end
end
