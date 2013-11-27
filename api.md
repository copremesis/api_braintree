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

*functions* -> __messages__ or methods used within the context of peer to peer communication



So the consise definition becomes:

API documents the interaction or delivery of __messages__ between any of the following:
  * a software package 
  * a web service
  * a web resource 
  * or a module

### api local gem/libray figure
![Local API flow diagram](https://docs.google.com/drawings/d/1d-awxPC664DlIhTWM_pqK9SkcjD2udJWgO8K-gRZ_5U/pub?w=960&amp;h=720)

When used in the context of web development, an API is typically defined as a set of Hypertext Transfer Protocol (HTTP) request __messages__, along with a definition of the structure of response __messages__, which is usually in an Extensible Markup Language (XML) or JavaScript Object Notation (JSON) format. While "web API" historically has been virtually synonymous for web service, the recent trend (so-called Web 2.0) has been moving away from Simple Object Access Protocol (SOAP) based web services and service-oriented architecture (SOA) towards more direct representational state transfer (REST) style web resources and resource-oriented architecture (ROA).[7] Part of this trend is related to the Semantic Web movement toward Resource Description Framework (RDF), a concept to promote web-based ontology engineering technologies. Web APIs allow the combination of multiple APIs into new applications known as mashups.
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

![message in a bottle](data:image/jpeg;base64,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)

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

