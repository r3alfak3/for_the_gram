module ApplicationHelper

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def gram_resource_name
    :gram
  end

  def gram_resource
    @resource1 ||= Gram.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

end
