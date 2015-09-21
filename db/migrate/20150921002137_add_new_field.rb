class AddNewField < ActiveRecord::Migration
  def change
    change_table :posts do |t|
    t.string :dirurl
  end
 end
end
