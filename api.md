# APIs


### Summary of today's Topic

* History
  - encapsulation via 3rd parties
  - serialization
     + XML
     + SOAP
     + query string or attribute value pairs
     + JSON
* APIs Using Ruby
  - Ruby & Ruby gems
  - How to scroll through Documentation
  - Code examples in other languages
    
* Exercise with Braintree 
 






# History


# APIs Using Ruby


# Exercise with Braintree

You are a Store owner who wishes to begin selling merchandise through your website.

You already have a nicely designed page. All we need to do now is submit

transactions to a 'Payment Gateway' using ruby to add this feature to our existing

Ruby application.

### Most Basic Sale Code Snippet
    result = Braintree::Transaction.sale(
      :amount => "7.77",
      :credit_card => {
        :number => "4111111111111111",
        :expiration_date => "05/14"
      }
    )




