class CreateChapter2s < ActiveRecord::Migration[5.2]
  def change
    create_table :chapter2s do |t|

      t.timestamps
    end
  end
end
