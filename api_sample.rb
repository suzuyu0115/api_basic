# HTTPリクエストを行うためのライブラリ
require 'net/http'
# URIを扱うためのライブラリ、
require 'uri'
# JSONデータをパースするためのライブラリ
require 'json'


# 文字列形式のURLをURIオブジェクトに変換
uri = URI.parse("http://www.example.com/sample.json")

# Net::HTTP.getメソッドを使って、指定したURIからデータを取得
json = Net::HTTP.get(uri)

# JSON形式の文字列をRubyのハッシュまたは配列に変換
result = JSON.parse(json)

# 解析したJSONデータをコンソールに出力
puts result
