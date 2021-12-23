class CreateWords < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.integer        :speech_id
      t.string         :word_name     ,null:false
      t.string         :meaning       ,null:false
      t.text           :example
      t.references   :user         ,null:false, foreign_key: true          
      t.timestamps
    end
  end
end
