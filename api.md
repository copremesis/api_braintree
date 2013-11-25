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

When used in the context of web development, an API is typically defined as a set of Hypertext Transfer Protocol (HTTP) request messages, along with a definition of the structure of response messages, which is usually in an Extensible Markup Language (XML) or JavaScript Object Notation (JSON) format. While "web API" historically has been virtually synonymous for web service, the recent trend (so-called Web 2.0) has been moving away from Simple Object Access Protocol (SOAP) based web services and service-oriented architecture (SOA) towards more direct representational state transfer (REST) style web resources and resource-oriented architecture (ROA).[7] Part of this trend is related to the Semantic Web movement toward Resource Description Framework (RDF), a concept to promote web-based ontology engineering technologies. Web APIs allow the combination of multiple APIs into new applications known as mashups.
Web use to share content

The practice of publishing APIs has allowed web communities to create an open architecture for sharing content and data between communities and applications. In this way, content that is created in one place can be dynamically posted and updated in multiple locations on the web:
Photos can be shared from sites like Flickr and Photobucket to social network sites like Facebook and MySpace.
Content can be embedded, e.g. embedding a presentation from SlideShare on a LinkedIn profile.
Content can be dynamically posted. Sharing live comments made on Twitter with a Facebook account, for example, is enabled by their APIs.
Video content can be embedded on sites served by another host.
User information can be shared from web communities to outside applications, delivering new functionality to the web community that shares its user data via an open API. One of the best examples of this is the Facebook Application platform. Another is the Open Social platform.
If content is a direct representation of the physical world (e.g., temperature at a geospatial location on earth) then an API canFacebook account, for example, is enabled by their APIs.
Video content can be embedded on sites served by another host.
User information can be shared from web communities to outside applications, delivering new fu

# APIs Using Ruby

- libraries
- gems
- 3rd party apis + existing gem


# Exercise with Braintree

You are a Store owner who wishes to begin selling merchandise through your website.

You already have a nicely designed page. All we need to do now is submit

transactions to a 'Payment Gateway' using ruby to add this feature to our existing

Ruby application. To begin please [clone this] (https://github.com/copremesis/api_braintree.git) repo.

We'll attempt to run this as is and if we run into any pitfalls will work together as a team to 

determine what missing pieces of the puzzle are missing.



### Most Basic Sale Code Snippet
    result = Braintree::Transaction.sale(
      :amount => "7.77",
      :credit_card => {
        :number => "4111111111111111",
        :expiration_date => "05/14"
      }
    )



### More robust example

    result = Braintree::Transaction.sale(
      :amount => "8.01",
      :order_id => "order id",
      :credit_card => {
        :number => "5105105105105100",
        :expiration_date => "05/2012",
        :cvv => "111"
      },
      :customer => {
        :first_name => "__FIRST_NAME__",
        :last_name => "__LAST_NAME__",
        :company => "MakerSquare",
        :website => "http://www.themakersquare.com",
        :email => "__YOUR_EMAIL__"
      }
    )

