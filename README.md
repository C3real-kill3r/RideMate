# RideMate

RidesMate app is a carpool application which allows an Andelan car owner to give a ride to another Andelan who does not have a car or who is not feeling like driving his/her own personal car. The two major steps involved in the application are the ride offer process (which allows a car owner makes his/her car open to colleagues who may be interested in riding with him/her)  and ride request process (which allows a colleague without a car to ask for a ride from the car owners heading to his/her route).

## Installation

- Clone this repository to have the app on your machine with ```git clone https://github.com/C3real-kill3r/RideMate.git```
- Change directory to the app's root with ```cd RideMate```
- Then run ```bundle install```  to install the dependencies.
- create a ```.env``` file and copy contents from the ```.env_sample``` available in the app's root directory, and replace them with your variables.
- Run ```rails db:migrate``` to update the database.
- Start the server by running ```rails s```
- Then visit ```http://localhost:3000``` to view the app.

## Installed gems

- activerecord -  provide an interface and binding between the tables in a relational database and the Ruby program code that manipulates database records.
- rails - full-stack web framework optimized for programmer happiness and sustainable productivity.
- pg - a module that allows Ruby programs to interact with the PostgreSQL database engine.
- bcrypt - a hashing function that allows us to build a password security platform that can scale with computation power.
- bulma - A modern CSS framework based on Flexbox
- simple_form - flexible gem helping you with powerful components to create your forms.
- carrierwave - helps to upload files in your Ruby applications, map them to a range of ORMs, store them on different backends.
- mini_magick - Manipulate images with minimal use of memory via ImageMagick / GraphicsMagick
- fog - Ruby cloud services library. Supports all major cloud providers including AWS, Rackspace, Linode, Blue Box, StormOnDemand, and many others. Full support for most AWS services including EC2, S3, CloudWatch, SimpleDB, ELB, and RDS.

## Technologies Used

- [Ruby](https://www.ruby-lang.org/en/)
- [Rails](https://rubyonrails.org/)

### Author

- [Brian Ryb](https://github.com/C3real-kill3r)
