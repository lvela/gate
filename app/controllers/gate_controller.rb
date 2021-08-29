# frozen_string_literal: true

class GateController < ApplicationController
  def open
    result = `curl https://api.particle.io/v1/devices/#{ENV["PROTON_DEVICE_ID"]}/press -d access_token=#{ENV["PROTON_ACCESS_TOKEN"]}`
    puts result

    redirect_to root_path
  end
end

