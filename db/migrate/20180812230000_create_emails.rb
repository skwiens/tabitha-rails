class CreateEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :emails do |t|
      t.date :senddate
      t.string :subject
      t.text :message

      t.timestamps
    end
  end
end
