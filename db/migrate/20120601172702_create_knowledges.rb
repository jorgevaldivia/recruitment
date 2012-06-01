class CreateKnowledges < ActiveRecord::Migration
  def change
    create_table :knowledges do |t|

      t.timestamps
    end
  end
end
