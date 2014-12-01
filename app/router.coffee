`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @resource 'user', path: '/:user_id', ->
  @route 'connect'
  @route 'discover'
  @route 'fourOhFour', { path: '*path' }

`export default Router`
