class LessonsController < ApplicationController
  def hello
    @hello = "こんにちは"
    @message = "ハローアクションです"
  end
  def call
    @call = "コールでーす"
  end
end
