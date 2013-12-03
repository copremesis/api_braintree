require "braintree"


Braintree::Configuration.environment = :sandbox
Braintree::Configuration.merchant_id = "8r9rgh86r35v6dpd"
Braintree::Configuration.public_key = "kvt5jjxkm99yt55b"
Braintree::Configuration.private_key = "b0a52c8b0f6bf1ee361d78a6dbe061f5"

#exception handling
def output_results(result) 
  if result.success?
    ap result
    puts "success!: #{result.transaction.id}"
  elsif result.transaction
    puts "Error processing transaction:"
    puts "  code: #{result.transaction.processor_response_code}"
    puts "  text: #{result.transaction.processor_response_text}"
  else
    p result.errors
  end
end

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

output_results(result)
