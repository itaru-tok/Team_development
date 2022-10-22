ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :email
    column :created_at
    actions
  end

  show do
    attributes_table do
      row :id
      row :email
      row :created_at
    end
    active_admin_comments
  end

  filter :email
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
