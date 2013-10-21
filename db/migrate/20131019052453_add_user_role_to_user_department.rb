class AddUserRoleToUserDepartment < ActiveRecord::Migration
  def change
  	add_column :user_departments, :user_dept_role, :string
  end
end
