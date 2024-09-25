# frozen_string_literal: true

require 'my_mysql_gem'

RSpec.describe MyMysqlGem::DatabaseConnector do
  let(:connector) do
    MyMysqlGem::DatabaseConnector.new(
      host: 'localhost',
      username: 'root',
      password: 'your_password',
      database: 'app_development'
    )
  end

  it 'connects to the MySQL database' do
    expect { connector.connect }.not_to raise_error
  end

  it 'executes a query' do
    connector.connect
    result = connector.query("SELECT 1 AS test")
    expect(result.first['test']).to eq(1)
  end
end
