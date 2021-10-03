# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  # Only index page for now.
  def index; end
end
