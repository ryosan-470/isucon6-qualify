require 'json'
require 'net/http'
require 'uri'

require 'mysql2'
require 'mysql2-cs-bind'
require 'rack/utils'
require 'sinatra/base'
require 'redis'


module Isutar
  class Web < ::Sinatra::Base
    redis = Redis.new(:host => "localhost", :port => 6379)

    enable :protection

    # set :db_user, ENV['ISUTAR_DB_USER'] || 'root'
    # set :db_password, ENV['ISUTAR_DB_PASSWORD'] || ''
    # set :dsn, ENV['ISUTAR_DSN'] || 'dbi:mysql:db=isutar'
    set :isuda_origin, ENV['ISUDA_ORIGIN'] || 'http://localhost:5000'

    configure :development do
      require 'sinatra/reloader'

      register Sinatra::Reloader
    end

    helpers do
    end

    get '/initialize' do
      redis.flushall

      content_type :json
      body '{"result" : "ok"}'
    end

    get '/stars' do
      keyword = params[:keyword] || ''
      stars = redis.lrange(keyword, 0, -1).join(',')

      content_type :json
      body "{\"stars\":[#{stars}]}"
    end

    post '/stars' do
      keyword = params[:keyword]

      isuda_keyword_url = URI(settings.isuda_origin)
      isuda_keyword_url.path = '/keyword/%s' % [Rack::Utils.escape_path(keyword)]
      res = Net::HTTP.get_response(isuda_keyword_url)
      halt(404) unless Net::HTTPSuccess === res

      user_name = params[:user]

      # {"id":21,"keyword":"菅山かおる","user_name":"lushe","created_at":"2016-09-17 13:06:25 +0900"}
      str = JSON.dump({keyword: keyword, user_name: user_name, created_at: Time.now})
      redis.rpush(keyword, )

      content_type :json
      body '{"result" : "ok"}'
    end
  end
end
