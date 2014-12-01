`import Ember from 'ember'`

UserRoute = Ember.Route.extend

  actions:
    error: (error) ->
      Ember.Logger.warn 'Error resolving the User route, most likely user not found, redirecting to index. Dumping the error: ' + error
      @transitionTo 'index'

`export default UserRoute`
