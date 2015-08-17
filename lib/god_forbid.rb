require "god_forbid/version"

module GodForbid
  extend ActiveSupport::Concern

  included do
    before_action :god_forbid!
  end

  def god_forbid!
    response.headers["X-Security-Policy"] = "God Forbid"
    response.headers["X-Start-With"] = "Bismillahirrahmanirrahim (In the name of Allah, the beneficent the merciful)"
  end
end
