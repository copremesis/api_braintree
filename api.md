# APIs


### Summary of today's Topic

* [Overview] (#overview)
  - Encapsulation 
    + local libraris 
    + gems
    + remote web services/resources
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
 




# Overview

API
:  An application programming interface (API) specifies how some software components should interact with each other.

Software components
:  An individual software component is a software package, a web service, a web resource, or a module that encapsulates a set of related functions (or data).

Better definition of API?

API specifies how:
* a software package 
* a web service
* a web resource 
* or a module
__encapsulates__ a set of related *functions* ( or data )
*functions* -> messages or methods used within the context of peer to peer communication



So the consise definition becomes:

API documents the interaction or delivery of messages between any of the following:
  * a software package 
  * a web service
  * a web resource 
  * or a module

### api local gem/libray figure
![Local API flow diagram](https://docs.google.com/drawings/d/1d-awxPC664DlIhTWM_pqK9SkcjD2udJWgO8K-gRZ_5U/pub?w=960&amp;h=720)

When used in the context of web development, an API is typically defined as a set of Hypertext Transfer Protocol (HTTP) request messages, along with a definition of the structure of response messages, which is usually in an Extensible Markup Language (XML) or JavaScript Object Notation (JSON) format. While "web API" historically has been virtually synonymous for web service, the recent trend (so-called Web 2.0) has been moving away from Simple Object Access Protocol (SOAP) based web services and service-oriented architecture (SOA) towards more direct representational state transfer (REST) style web resources and resource-oriented architecture (ROA).[7] Part of this trend is related to the Semantic Web movement toward Resource Description Framework (RDF), a concept to promote web-based ontology engineering technologies. Web APIs allow the combination of multiple APIs into new applications known as mashups.
Web use to share content


### api figure
![remote API flow diagram](https://docs.google.com/drawings/d/1yWy8O4jCKL4RG4JRvASOZ2FZ9lUJZPQQluAxBk-wE0w/pub?w=960&amp;h=720)


The practice of publishing APIs has allowed web communities to create an open architecture for sharing content and data between communities and applications. In this way, content that is created in one place can be dynamically posted and updated in multiple locations on the web:
* Photos can be shared from sites like Flickr and Photobucket to social network sites like Facebook and MySpace.
* Content can be embedded, e.g. embedding a presentation from SlideShare on a LinkedIn profile.
* Content can be dynamically posted. Sharing live comments made on Twitter with a Facebook account, for example, is enabled by their APIs.
* Video content can be embedded on sites served by another host.
* User information can be shared from web communities to outside applications, delivering new functionality to the web community that shares its user data via an open API. One of the best examples of this is the Facebook Application platform. Another is the Open Social platform.

If content is a direct representation of the physical world (e.g., temperature at a geospatial location on earth) then an API can be considered an "Environmental Programming Interface" (EPI). EPIs are characterized by their ability to provide a means for universally sequencing events sufficient to utilize real-world data for decision making.


# APIs Using Ruby

- libraries
  * software libraies included with ruby auto magically
- gems
  * Ruby libraries written/tested/published by the community which ranges from developers  
  * encourages software reuse few bugs avoid rebuilding the wheel.
- 3rd party apis + existing gem

  * The third-party software component market thrives because many programmers believe that component oriented development improves the efficiency and the quality of developing custom applications

# Exercise with Braintree

### what we are going to do visually


### api figure
![braintree gem/API flow diagram](https://docs.google.com/drawings/d/1whdbJI2rN52ohyehMXoWChWIRnR6xOvKNY6aKjIDILM/pub?w=516&amp;h=720)

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





#Whoami


Companies I've worked with:
* ![CabForward](https://www.cabforward.com/wp-content/uploads/2013/11/cabforward-logo.png)
* ![Apartments](http://graphics.aptcdn.com/ACW/Apts/Responsive/Images/apartments-logo-ver70296.png)
* ![AHL](http://austin.apartmenthomeliving.com/imgs/global/header/apartments-for-rent-apartment-home-living.png)
* ![Auto](http://www.auto.com/assets/logo/auto-logo-200x100.png)
* ![Cars](http://graphics.cars.com/images/core/logo.png)
* ![AccioData](http://www.acciodata.com/images/accio_data_logo.png)

