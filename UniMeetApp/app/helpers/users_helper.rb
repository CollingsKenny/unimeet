module UsersHelper
  def full_name
    if @user.middle_name == ""
      @user.first_name + " " + @user.last_name
    else
      @user.first_name + " " + @user.middle_name + " " + @user.last_name
    end
  end
  
  def age
    if (@user.birthday != nil)
      (Date.today.strftime('%Y%m%d').to_i - @user.birthday.strftime('%Y%m%d').to_i) / 10000
    end
  end

  def display_image(user, size, class_type)
      image_tag(user.image.url(size), :class => class_type)
  end

  def image_url(size)
    if @user.image_file_size == nil
      default_user_image_url 
    else @user.image.url(size)
    end
  end

  def display_image_menu(user, size, class_type)
    image_tag(user.image.url(size), :class => class_type) 
  end

  def display_activity_image_menu(activity, size, class_type)
    image_tag(activity.image.url(size), :class => class_type) 
  end
end
