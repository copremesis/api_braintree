
workshop.rb

API workshop

1. easy

  * download gem

    <pre> <code>
      git clone git@github.com:copremesis/api_braintree.git
    </code> </pre>

  * add your first & last names and email
    
    
    

  * run script

    <pre> <code>
      bash-3.2$ ruby braintree.rb
      I, [2013-12-02T16:09:13.662180 #53726]  INFO -- : [Braintree] [02/Dec/2013 22:09:13 UTC] POST /transactions 422
      #<Braintree::ErrorResult params:{...} errors:<transaction/credit_card:[(81707) CVV must be 4 digits for American Express and 3 digits for other card types.], >>
    </code> </pre>

  * fix script and rerun

  you should see your name, last & email appear [here](http://dragonwrench.com:3003/transactions)


  * can you remove you name from the dash board?
    
    review [this](https://www.braintreepayments.com/docs/ruby/transactions/void) documentation:




2. intermidiate

  * serialization
    + xml <-> ruby
    + JSON <->ruby
    + legacy key=value& ...

3. Advanced exercises

  * get your name & email on the dash board

4. challenges
   
  * parsing xml, json and connecting to 3rd parties
