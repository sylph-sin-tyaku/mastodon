# frozen_string_literal: true

class AboutController < ApplicationController
  before_action :set_body_classes
  before_action :set_instance_presenter, only: [:show, :more]

  def show
    @statuses = Status.joins(:account).with_public_visibility.without_reblogs.without_replies.\
      where(sensitive: false).local.limit(10)
  end

  def more; end

  def terms; end

  private

  def new_user
    User.new.tap(&:build_account)
  end
  helper_method :new_user

  def set_instance_presenter
    @instance_presenter = InstancePresenter.new
  end

  def set_body_classes
    @body_classes = 'about-body'
  end
end
