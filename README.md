# GOV.AU content guide

Content guidelines for GOV.AU projects.

This guide expands on the general APS Style Guide. It aims to give immediate advice on many aspects of writing good content for the web: concise, useful, and scannable.

It can be currently accessed at http://content-style-guide.apps.staging.digital.gov.au/

**Status:** the guide is in active development.

## Feedback

You can leave feedback to the guide in numerous ways:

1. via the email feedback buttons in the A-Z section
2. via GitHub issues.

## Editing the guide

The guide is setup to provide access directly to the content of the guide via [prose.io](http://prose.io).

To access and edit the guide go to [prose.io](http://prose.io) and sign in via your GitHub account.

To mark-up your content, write in Markdown. We use the 'kramdown' (default) markdown parser, which provides a couple of nifty features. For a reference on what's possible see the [kramdown quick reference](http://kramdown.gettalong.org/quickref.html).

We will document the `ui-core` and guides-specific styles available later.

Please save into the `content-editing` branch (right-hand sidebar within prose).

## Developer information

This guide is built with Jekyll.

### Development status

This guide includes currently three projects that have not yet been refactored into separate repositories:

1. `ui-core`: a series of `scss` files
2. `gov-au-guide-template`: a content-agnostic Jekyll theme for holding and building the gov.au guides
3. `gov-au-guide-content`: the gov.au content guide (data held in this repository; yet to be renamed)

### Setup

You would only *need* to do the following if you are a developer. If you are a content editor you can access and editing content for the guide via Prose.io. However, it can be nice having the guide locally to work and preview --- feel free to ask a developer if you would like to set up a local instance of the guide.

There is also a simpler guide in the [README of the service-handbook project](https://github.com/AusDTO/service-handbook/blob/gh-pages/README.md) which might be useful to incorporate here.

The Design Guide uses [Jekyll](http://jekyllrb.com/). We use [rbenv](https://github.com/rbenv/rbenv) to manage Ruby and RubyGems.

### Requirements

- Sass 3.3+
- Bourbon 4
- Neat 1.6+

Setup locally

```
git clone https://github.com/AusDTO/gov-au-content-guide.git
cd gov-au-content-guide
gem install bundler
bundle install
```

Launch locally

```
bundle exec jekyll serve
```

If you get gem errors, try

```
rbenv rehash
```

If you still have troubles contact a dev!

## Copyright & License

Copyright Digital Transformation Office. Licensed under the MIT license. See LICENSE file for more details.

## About the DTO

![](https://www.dto.gov.au/images/govt-crest.png "logo of the DTO")

The GOV.AU Content Guide is maintained and funded by the [Digital Transformation Office](https://www.dto.gov.au/).
