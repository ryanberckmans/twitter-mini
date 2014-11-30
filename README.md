# Twitter-mini

twitter-mini is a "mini twitter experience" using ember-cli and the twitter api.

# Dev Log

## Choosing a twitter api client

I haven't used the twitter api since they disabled unauthenticated access. I've also never used twitter from the node/bower/ember stack. Once my twitter api client is up and running, I'll be working fully in ember, which is a happy place to be. So I'm doing the api client first.

All planned features are read-only, except composing a tweet for the currently authenticated user. So I'll need (1) an authenticated user to compose a tweet for themselves; and, (2) and authenticated user to read data from the twitter api, since they disallow unauthenticated access.

For authentication, I will use OAuth2 with [ember-simple-auth-oauth2](https://github.com/simplabs/ember-simple-auth/tree/master/packages/ember-simple-auth-oauth2), by simplabs. I'm familiar with ember-simple-auth, so this was an easy win. I also checked out [ember-token-auth](https://github.com/amkirwan/ember-token-auth).

Once authenticated, I'll need to use my OAuth2 token with a twitter api client. I checked out Twitter's official list of api clients and ran a [bower.io](http://bower.io/) search for 'twitter'.

At this point, I think I'll need two clients, [TwitterJSClient](https://github.com/BoyCook/TwitterJSClient) and [user-stream](https://github.com/aivis/user-stream) (really, who makes a twitter client without 'twitter' in the name.) TwitterJSClient supports getting data and composing new tweets, but these are one-off api calls, good for ember actions or route transitions. user-stream will trigger a callback when new data is pushed from twitter, good for real-time updates.

# ember-cli Readme

## Prerequisites

You will need the following things properly installed on your computer.

* [Git](http://git-scm.com/)
* [Node.js](http://nodejs.org/) (with NPM) and [Bower](http://bower.io/)

## Installation

* `git clone <repository-url>` this repository
* change into the new directory
* `npm install`
* `bower install`

## Running / Development

* `ember server`
* Visit your app at [http://localhost:4200](http://localhost:4200).

### Code Generators

Make use of the many generators for code, try `ember help generate` for more details

### Running Tests

* `ember test`
* `ember test --server`

### Building

* `ember build` (development)
* `ember build --environment production` (production)

### Deploying

Specify what it takes to deploy your app.

## Further Reading / Useful Links

* [ember.js](http://emberjs.com/)
* [ember-cli](http://www.ember-cli.com/)
* Development Browser Extensions
  * [ember inspector for chrome](https://chrome.google.com/webstore/detail/ember-inspector/bmdblncegkenkacieihfhpjfppoconhi)
  * [ember inspector for firefox](https://addons.mozilla.org/en-US/firefox/addon/ember-inspector/)

