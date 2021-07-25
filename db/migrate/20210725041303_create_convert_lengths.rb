class CreateConvertLengths < ActiveRecord::Migration[5.2]
  def change
    create_table :convert_lengths do |t|

      t.timestamps
    end
  end
end
