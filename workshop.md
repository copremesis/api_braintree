
Rob's Braintree API workshop

+ Credit card payments using braintree gem

  * clone this repo

    <pre> <code>
      git clone git@github.com:copremesis/api_braintree.git
    </code> </pre>

  * add your first & last names and email
    
    <pre> <code>
    :customer => {
      :first_name => "",
      :last_name => "",
      :company => "MakerSquare",
      :website => "http://www.themakersquare.com",
      :email => ""
    }

    </code> </pre>
    

  * run script

    <pre> <code>
      bash-3.2$ ruby braintree.rb
      I, [2013-12-02T16:09:13.662180 #53726]  INFO -- : [Braintree] [02/Dec/2013 22:09:13 UTC] POST /transactions 422
      #<Braintree::ErrorResult params:{...} errors:<transaction/credit_card:[(81707) CVV must be 4 digits for American Express and 3 digits for other card types.], >>
    </code> </pre>

  * fix script and rerun

  you should see your name, last & email appear [here](http://dragonwrench.com:3004/transactions)


  * can you remove you name from the dash board?
    
    review [this](https://www.braintreepayments.com/docs/ruby/transactions/void) documentation:


<!--
    If time permits I'll dig deeper and talk a little more about 
    
    serialization and using HTTP libraries to connect/authenticate to 3rd parties

    https://gist.github.com/copremesis/85be852b6478cf7b83a6 (my very 1st ruby script)


+ intermidiate

  * serialization
    + xml <-> ruby
    + JSON <->ruby
    + legacy key=value& ...

+ Advanced exercises

  * get your name & email on the dash board

+ challenges
   
  * parsing xml, json and connecting to 3rd parties
-->
