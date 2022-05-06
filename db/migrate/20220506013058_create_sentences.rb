class CreateSentences < ActiveRecord::Migration[5.2]
  def change
    create_table :sentences do |t|
      t.string :title
      t.text :introduction
      t.text :references
      t.string :jenre_id

      t.timestamps
    end
  end
end
