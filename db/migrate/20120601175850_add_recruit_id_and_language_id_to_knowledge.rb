class AddRecruitIdAndLanguageIdToKnowledge < ActiveRecord::Migration
  def up
  	add_column :knowledges, :recruit_id, :integer
  	add_column :knowledges, :language_id, :integer
  end

  def down
  	remove_column :knowledges, :recruit_id
  	remove_column :knowledges, :language_id
  end
end
