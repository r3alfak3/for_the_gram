module ApplicationHelper

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def destroy_link_to(path, options)
  link_to t('.destroy'), path,
    :method => :delete,
    :class => 'btn',
    :confirm => t('.destroy_confirm.body', :item => options[:item]),
    'data-confirm-fade' => true,
    'data-confirm-title' => t('.destroy_confirm.title', :item => options[:item]),
    'data-confirm-cancel' => t('.destroy_confirm.cancel', :item => options[:item]),
    'data-confirm-cancel-class' => t('btn-default'),
    'data-confirm-proceed' => t('.destroy_confirm.proceed', :item => options[:item]),
    'data-confirm-proceed-class' => 'btn-danger'
	end

end
