class UpdateAuditionsTable < ActiveRecord::Migration[6.1]
  def change
    rename_column :auditions, :actor, :actor_id
  end
end
