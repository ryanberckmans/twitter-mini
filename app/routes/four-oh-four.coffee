`import Ember from 'ember'`

FourOhFourRoute = Ember.Route.extend
  beforeModel: ->
    Ember.Logger.warn '404, transitioning to index'
    @transitionTo 'index'

`export default FourOhFourRoute`
