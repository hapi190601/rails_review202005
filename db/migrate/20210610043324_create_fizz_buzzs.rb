class CreateFizzBuzzs < ActiveRecord::Migration[5.2]
  def change
    create_table :fizz_buzzs do |t|

      t.timestamps
    end
  end
end
