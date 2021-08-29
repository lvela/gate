# frozen_string_literal: true

class GateController < ApplicationController
  def open

    redirect_to root_path
  end
end

