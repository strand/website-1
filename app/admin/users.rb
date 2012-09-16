ActiveAdmin.register User do
  menu priority: 2
  index do
    column :id
    column :nickname
    column :email
    column :admin
    column :description do |user|
      user.description.truncate 80 unless user.description.blank?
    end
    column :github
    column :twitter
    column :homepage
    default_actions
  end
end
