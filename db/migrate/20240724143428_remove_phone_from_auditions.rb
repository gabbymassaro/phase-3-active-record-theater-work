class RemovePhoneFromAuditions < ActiveRecord::Migration[6.1]
  def change
    remove_column :auditions, :phone, :integer
  end
end
