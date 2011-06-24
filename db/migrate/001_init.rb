class Init < ActiveRecord::Migration
  def self.up
    create_table "hits" do |t|
      t.string   "ip"
      t.datetime "created_at"
    end
  end

  def self.down
    drop_table "hits"
  end
end

