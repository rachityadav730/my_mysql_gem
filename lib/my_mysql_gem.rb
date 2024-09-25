require_relative "my_mysql_gem/version"
require 'mysql2'

module MyMysqlGem
  class DatabaseConnector
    def initialize(host:, username:, password:, database:)
      @host = host
      @username = username
      @password = password
      @database = database
    end

    def connect
      @client = Mysql2::Client.new(
        host: @host,
        username: @username,
        password: @password,
        database: @database
      )
      puts "Connected to MySQL database #{@database} successfully."
    rescue Mysql2::Error => e
      puts "Error connecting to MySQL: #{e.message}"
    end

    def query(sql)
      @client.query(sql)
    rescue Mysql2::Error => e
      puts "Query Error: #{e.message}"
    end
  end
end
