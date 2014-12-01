`import Ember from 'ember'`

UserRoute = Ember.Route.extend
  setupController: (controller, model) ->
    controller.set 'model', model
    controller.set 'allTweets', @store.find('tweet')

  actions:
    error: (error) ->
      Ember.Logger.warn 'Error resolving the User route, most likely user not found, redirecting to index. Dumping the error: ' + error
      @transitionTo 'index'

`export default UserRoute`
