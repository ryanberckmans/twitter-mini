`import Ember from 'ember'`

displayTimeSince = (timestamp) ->
  moment(timestamp).fromNow(true)

DisplayTimeSinceHelper = Ember.Handlebars.makeBoundHelper displayTimeSince

`export default DisplayTimeSinceHelper`
