class CreateRgbconversions < ActiveRecord::Migration[5.2]
  def change
    create_table :rgbconversions do |t|

      t.timestamps
    end
  end
end
