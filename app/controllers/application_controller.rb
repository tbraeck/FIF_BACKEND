class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def manifest
    respond_to do |format|
      format.json { render template: 'application/manifest.json.erb' }
    end
  end
end
