# Developers Developers Developers Developers

This is the source code to http://developersdevelopersdevelopersdevelopers.org.

It is a Ruby on Rails app that uses:

* [@font-face](http://www.w3.org/TR/css3-fonts/#the-font-face-rule) for beautiful typography.
* [Postgres](http://www.postgresql.org/) for storing and retrieving data.
* [Sass](http://sass-lang.com/) to make CSS fun again.
* [Cucumber](https://github.com/thoughtbot/dddd/tree/master/features) for human-readable tests.

It is deployed to [Heroku](http://heroku.com).

## Registration

Registration is now closed as we're flirting with a fire code violation.

However, the source code contains some hints. Here are some more hints.

We're using [Rails routing conventions](http://guides.rubyonrails.org/routing.html).

Read [Section 9.5](http://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html#sec9.5), the section on POST requests, of the HTTP spec.

You might want to type this from a shell (Terminal.app on a Mac):

    man curl

The best way to figure it out is to play with it, hands-on. You can use our [staging site](http://dddd-staging.heroku.com/) to practice before you try it on production.

The tricky part is dealing with [Rails' security countermeasures](http://guides.rubyonrails.org/security.html#csrf-countermeasures) against cross-site forgery.
