class CreateRequest < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.text :request
    end
  end
end
