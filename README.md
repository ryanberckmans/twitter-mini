# Twitter-mini

twitter-mini is a "mini twitter experience" using ember-cli and the twitter api.

# Dev Log

## twitter api or fake back-end?

I haven't used the twitter api since they disabled unauthenticated access, and spent a few hours investigating how to build a 'mini twitter' using the new api. To post tweets as a specific user, twitter only supports OAuth1.0a and not OAuth2. Most of the auth addons for ember are for OAuth2.0. I didn't find an out-of-the-box "sign in with twitter" solution for ember. Furthermore, twitter advises that your consumer secret api key should "never be human-readable in your application", and I wasn't sure how to guarantee this with an ember app.

So, instead of using the twitter api, I'm going to use Firebase with some seeded users and tweets. There will be no authentication. Thanks to the magic of Firebase, new tweets will be delivered in real-time to all clients.

Before abandoning the twitter api, I checked out these projects: [ember-simple-auth-oauth2](https://github.com/simplabs/ember-simple-auth/tree/master/packages/ember-simple-auth-oauth2), [ember-token-auth](https://github.com/amkirwan/ember-token-auth), [TwitterJSClient](https://github.com/BoyCook/TwitterJSClient) and [user-stream](https://github.com/aivis/user-stream).

# Features


* profile pics loaded from gravatar based on user email
* tweet timeline updates in real time; Emberfire receives push notifications from Firebase and updates the model, SortableMixin sorts tweets by timestamp, and recentTweets slices the most recent eight tweets for display.
* back end by Firebase
* icons by fontawesome
* time calculation by moment.js
* navbar by bootstrap

# Notes on url design and view hierarchy

* the url /ryan maps to the user 'ryan'; there's no /user/ryan, because I think twitter-mini.com/ryan is a better user experience than twitter-mini/user/ryan.
* to handle 404 correctly, both /file/not/found (a true 404) and /file-not-found (a failure to look-up a user named 'file-not-found') are redirected to the index.
* Nav bar rendered at the application level, for convenience, since twitter-mini has no authentication or real landing page.
* Dropped "Me" link on the nav bar, since it is rendered at the application level and "Me" is undefined outside of the user route.

# Notes on markup

* In some places I use `<table>` for layout; I know this is a bad practice; I'm learning to avoid `<table>`


# Default README generated by ember-cli.

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

