class AddVerificationNumberAndIsVerifyToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :verification_string, :string
  	add_column :users, :is_verify, :boolean
  end
end
