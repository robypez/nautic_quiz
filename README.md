Nautica
=======

2 tipi di patenti: standard e con integrazione

argument

  name
  icon




question

  type
  id
  section
  belong_to argument
  errors
  image
  has many answers

answer
  text
  belongs_to question
  solution: boolean default false



TODO

Quiz.create_section_quiz(quiz_type = 'base')
Quiz.create_quiz(quiz_type = 'base')
  params: type

Quiz has many questions / questions has many quiz



- add default to errors
- backend to manage answer
- import all 
- add toggle for base type



------


After you have cloned this repo, run this setup script to set up your machine
with the necessary dependencies to run and test this app:

    % ./bin/setup

It assumes you have a machine equipped with Ruby, Postgres, etc. If not, set up
your machine with [this script].

[this script]: https://github.com/thoughtbot/laptop

After setting up, you can run the application using [foreman]:

    % foreman start

If you don't have `foreman`, see [Foreman's install instructions][foreman]. It
is [purposefully excluded from the project's `Gemfile`][exclude].

[foreman]: https://github.com/ddollar/foreman
[exclude]: https://github.com/ddollar/foreman/pull/437#issuecomment-41110407

Guidelines
----------

Use the following guides for getting things done, programming well, and
programming in style.

* [Protocol](http://github.com/thoughtbot/guides/blob/master/protocol)
* [Best Practices](http://github.com/thoughtbot/guides/blob/master/best-practices)
* [Style](http://github.com/thoughtbot/guides/blob/master/style)
