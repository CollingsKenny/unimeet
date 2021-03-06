module ApplicationHelper
  def resource_name
    :user
  end

  def login_resource
    :user
  end

  def resource
      @resource ||= User.new
  end

  def login
      @login ||= User.new
  end

  def resource_class 
      User 
  end

  def devise_mapping
      @devise_mapping ||= Devise.mappings[:user]
  end

  def activity_image_drop_url
    "/system/default/activity_drop.png"
  end

  def default_activity_image_url
    "/system/default/missing_activity_avatar.png"
  end

  def default_user_image_url
    "/system/default/missing_user_avatar2.png"
  end
end
