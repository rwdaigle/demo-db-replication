require "rubygems"
require "bundler"
Bundler.setup

require 'sinatra/base'
load 'config.rb'

class Hit < ActiveRecord::Base
end

class DbReplicationDemoApp < Sinatra::Base

  get "/" do
    Hit.create(:ip => request.ip)
    "Hi #{request.ip}"
  end
end

run DbReplicationDemoApp
