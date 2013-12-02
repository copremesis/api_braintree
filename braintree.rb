require "rubygems"
require "braintree"
require "awesome_print"
require "json"
require "faker"


Braintree::Configuration.environment = :sandbox
Braintree::Configuration.merchant_id = "8r9rgh86r35v6dpd"
Braintree::Configuration.public_key = "kvt5jjxkm99yt55b"
Braintree::Configuration.private_key = "b0a52c8b0f6bf1ee361d78a6dbe061f5"


@sale = ->() {
  result = Braintree::Transaction.sale(
    :amount => rand(5..10).to_s + ".00" ,
    :order_id => "order id",
    :credit_card => {
      :number => "5105105105105100",
      :expiration_date => "05/2012",
      :cvv => "1111"
    },
    :customer => {
      :first_name => "",
      :last_name => "",
      :company => "MakerSquare",
      :website => "http://www.themakersquare.com",
      :email => ""
    }
  )

  ap result
}

@sale[]

#api exercises:
#Xml.hash_from_xml('<xml><person><name>Rob</name></person></xml>')
#ruby -> xml
#rexeml, nokogiri, xml_simple ... native ruby
#result = Braintree::Transaction.void("6pdjq6")
#json
#JSON.parse
#object.to_json
