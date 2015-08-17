require "god_forbid/version"

module GodForbid
  extend ActiveSupport::Concern

  @@start_with = "Bismillahirrahmanirrahim (In the name of Allah, the beneficent the merciful)"
  @@security_policy = "God Forbid"

  included do
    before_action :god_forbid!
  end

  def god_forbid!
    response.headers["X-Security-Policy"] = @@security_policy
    response.headers["X-Start-With"] = @@start_with

    if request.headers["X-Start-With"] != @@start_with || request.headers["X-Security-Policy"] != @@security_policy
      raise "Not secure!"
    end
  end
end
