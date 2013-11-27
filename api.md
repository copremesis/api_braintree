# APIs


### Summary of today's Topic

* [Overview] (#overview)
  - [Encapsulation] (#encapsulation)
    + [local libraris/gems] (#api-local-gemlibray-figure)
    + [remote web services/resources] (#remote-apis)
  - [serialization] (#serialization)
     + [xml](#serialization)
     + [json](#serialization)
* [APIs Using Ruby](#apis-using-ruby)
  - [Ruby & Ruby gems](#apis-using-ruby)
  - Code examples in other languages (nodejs)
    + nodejs
    + java
    + c#
  - Ruby solution from scratch
    + tools for developers
      * curl testing
      * postman
      * webhookapp
* [Exercise with Braintree](#exercise-with-braintree)
 




# Overview

###Encapsulation through 3rd parties
__API__
:  An application programming interface (API) specifies how some __software components__ should interact with each other.

__Software components__
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

###remote apis

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


###Serialization
![message in a bottle](https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRVjRCHZ_AExVjzk5A48opyapsKr-o1jTtyAHM7F_PEdsY0Tu_f)

The process in which we take an existing data structure and transfer it through
the network.

<!--
#######Ruby 

    {
        :a => 1,
        :b => 2,
        :c => 3
    }

####### 1.9+ syntax

    {
        a: 1,
        b: 2,
        c: 3
    }
     
#######XML

    <a> 1 </a>
    <b> 2 </b>
    <c> 3 </c>

#######JSON

    {
      "a": 1,
      "b": 2,
      "c": 3
    }
-->

<table>

  <tr>
    <th> Ruby </th>
    <th> Ruby 1.9+ </th>
    <th> XML </th>
    <th> JSON </th>
  </tr>

  <tr>
    <td>
      <pre>
        <code>
        {
            :a =&gt; 1,
            :b =&gt; 2,
            :c =&gt; 3
        }
        </code>
      </pre>
    </td>

    <td>
      <pre>
        <code>
        {
            a: 1,
            b: 2,
            c: 3
        }
        </code>
      </pre>
    </td>

    <td>
      <pre><code>
      &lt;a&gt; 1 &lt;/a&gt;
      &lt;b&gt; 2 &lt;/b&gt;
      &lt;c&gt; 3 &lt;/c&gt;
      </code></pre>
    </td>

    <td>
      <pre><code>
      {
        "a": 1,
        "b": 2,
        "c": 3
      }
      </code></pre>
    </td>
  </tr>
</table>


# APIs Using Ruby

- libraries
  * software libraies included with ruby auto magically
- gems
  * Ruby libraries written/tested/published by the community which ranges from developers  
  * encourages software reuse few bugs avoid rebuilding the wheel.
- 3rd party apis + existing gem

  * The third-party software component market thrives because many programmers believe that component oriented development improves the efficiency and the quality of developing custom applications

![Logos](http://brickartist.com/img/gallery/yellow.jpg)

![Gumbo](http://media.smithsonianmag.com/images/Unified-Theory-Gumbo-631.jpg)

<!--
Point I'm making ... As a cook or one who aspires to be a chef (you and I) ... we will test various ingredients (building blocks aka gems)
-->


As software engineers that aspire to build signature applications. We will test various ingredients (building blocks aka gems)
in order to produce the best dish we can.

If it comes down to it we may need to make our own ingredients from scratch ... yet If we want to compete in todays market
we can speed up this process by knowing and understanding the world of gems and how this gives us a foundation of 
solid building blocks when producing MVP's.

<!--
The philosophy here leads back to open source and how software reuse from a community standpoint allows us to focus more on the domain and not so much
the details.

gems compete for use based on our community and where it trends. 
gems have meta data and are quality inspected from their contributors. rspec or unit test are present inside the source tree.
gems can in most cases do most of the heavy lifting allow us as developers to perform quickly.

broken gems?

it's ruby you can fix them :D (monkey patching)

if they are on github you can fork them ... and fix them there

if the project was halted ... 
simply reading other solutions to simmilar problems is a fountain of wisdom and design patterns you can 
use to discover different ways to solve your everyday problems.
-->

#### analogy of gems in a cajun restaurant 

In a kitchen a gem would essentially be prep work before the chef begins to cook.

If the client requests gumbo, one essential time consuming ingredient would be the *Roux*.

(cooking and time ... slower the better )

If the cook were to *always* prepare the roux for each dish this could add complexity and time 
when preparing a single dish.

Instead restaurants have workers prepare these essential building blocks so that the line cooks/chefs can quickly prepare
dishes for their consumers.

#### Summary of gems/libraries

Similarly companies or 3rd parties will provide us ruby developers with building blocks to enable us to integrate our applications
to their software.

As a decision maker in manufactoring software, your discretion and or own cross examination, A/B testing, or researching 
various ingredients (or gems) ultimately help to improve your final delivery.

![papa johns](https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQS5H_mPRftlge_mDcOQnj3luQyEMSfLbq3IyIs97SFg6ALrszw2w)

#### where do we stand with gems?

As you travel through the ruby worlds you role may be anywhere from:

+ gem user
+ gem contributor
+ gem author
+ gem design pattern interpretor (all of the above)


####Segway to todays exercise

![Segway image](http://resources1.news.com.au/images/2010/09/28/1225930/655541-segway.gif)

Problem
: we need to connect our ruby application to a remote 3rd party service  

  ####basic ruby design decision flow
![Decision Flow](https://docs.google.com/drawings/d/1plLIzfr_brdpe1mlffiyFkgFjA1Z7wQV4FUEzpPqkF4/pub?w=949&amp;h=475)

<!--
  As a software professional you will discover how to interpret other code or convert solutions
  from one language to ruby ... hence hopefully become a gem author and contribute to open source

  otherwise each existing API if using REST will have documentation detail messages (endpoints) 
  parameters/xml/json code snippets fields to you as a programmer use to build these bridges
-->


  Our role as software engineers is to provide solutions existing or non existing and work with 
  companies. 

  Here's where we as ruby developers spend most of our time is understanding existing solutions so we can
  combine extend or rebuild them in our day to day efforts.

  Implementing home cooked solutions is the best way to learn ruby or compare it against and existing gem
  to discover different: *patterns*, *solutions* or *optimizations*. 


![bridge image](http://home.wangjianshuo.com/archives/2005/07/17/shanghai-donghai.bridge.jpg)

# Exercise with Braintree


### what we are going to do visually

For our exercise we are going to focus credit card processing using a ruby script.

This exemplify's the use of an API as if we were to house private sensitive data on our own
local machines would require security licensing plus fees & routine inspections.

Point is we can piggy back off of braintrees existing infrastucture using code examples provided by braintree
which not only provides solutions in ruby but many other existing languages/platforms


### api figure
![braintree gem/API flow diagram](https://docs.google.com/drawings/d/1whdbJI2rN52ohyehMXoWChWIRnR6xOvKNY6aKjIDILM/pub?w=516&amp;h=720)

You are a Store owner who wishes to begin selling merchandise through your website.

You already have a nicely designed page. All we need to do now is submit

transactions to a 'Payment Gateway' using ruby to add this feature to our existing

Ruby application. To begin please [clone this] (https://github.com/copremesis/api_braintree.git) repo.

We'll attempt to run this as is and if we run into any pitfalls will work together as a team to 
determine what missing pieces of the puzzle are missing.

<!--
  leave this in a broken state so that the student essentially 
  needs to fill in the blanks with valid input
  list some test cards in a table along with code samples
-->


  I've put together dashboard to provide peers visual/audio feedback whenever a transaction is performed

  you can demonstrate this with your completed script 


  Additionally you do not provide the code no how to perform a VOID transaction however 

  but demonstrate this using your script ... ruby  sale.rb void.rb

  two distinct visual queues should occur with your user name ...
  I could play with this: <https://oauth.io/> and see if that does something cool like post to a timeline or tweet actions performed on your braintree account 


  I think a GREEN bold font of the name and amount  should appear when a sale is performed 
  as well with a -$(amount) red when a VOID is performed ...

  The point here is that when implementing a solution for an applicaiton always focus on do and undo ... VOID satisfies the basic premise of this
  concept as the rabbit hole deepens ... you can mention time sensitive complexity with performing REFUNDS .. maybe share a story but overall just
  inform them that 

  also mentions rescue logic ... when working through a network connection to provide informant UX when physical connection is severed.

  leave some links to documentation so that the students can practice doing what we as software developers do a lot of:
  read documentation in search of existing solutions.

    

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
Rob Ortiz

<https://github.com/copremesis>
twitter: @copremsis
email: rob@dragonwrench.com
[slides] (https://github.com/copremesis/api_braintree/blob/master/api.md)

Companies I've worked with:

![ChaiOne](http://www.chaione.com/wp-content/uploads/2013/09/cropped-c1-logo1.png)
![VenariBio](http://venaribio.com/images/venaribio-cmyk-tag.jpg)
![CabForward](https://www.cabforward.com/wp-content/uploads/2013/11/cabforward-logo.png)
![CV](http://www.classifiedventures.com/wp-content/themes/cv2013/images/CV-black.svg)
![Apartments](http://graphics.aptcdn.com/ACW/Apts/Responsive/Images/apartments-logo-ver70296.png)
![AHL](http://austin.apartmenthomeliving.com/imgs/global/header/apartments-for-rent-apartment-home-living.png)
![Auto](http://www.auto.com/assets/logo/auto-logo-200x100.png)
![Cars](http://graphics.cars.com/images/core/logo.png)
![AccioData](http://www.acciodata.com/images/accio_data_logo.png)

