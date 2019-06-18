class AddRequestStatusToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :request_status, :boolean
  end
end
