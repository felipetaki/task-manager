class ChangeColumnDefault < ActiveRecord::Migration[6.0]
  def change
    rename_column(:tasks, :default, :details)
  end
end
