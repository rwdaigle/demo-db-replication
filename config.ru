require "rubygems"
require "bundler"
Bundler.setup

require 'sinatra/base'
load 'config.rb'

class Hit < ActiveRecord::Base
end

class DbReplicationDemoApp < Sinatra::Base

  get "/" do
    hit = Hit.create(:ip => request.ip)
    "Hi #{hit.ip} at #{hit.created_at}"
  end
end

run DbReplicationDemoApp
