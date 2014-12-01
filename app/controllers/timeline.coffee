`import Ember from 'ember'`

TimelineController = Ember.ArrayController.extend Ember.SortableMixin,
  sortProperties: ['timestamp']
  sortAscending: false
  MAX_TWEETS_TO_DISPLAY: 8
  recentTweets: (->
    @get('arrangedContent').slice 0, @get('MAX_TWEETS_TO_DISPLAY')
  ).property 'arrangedContent.@each'

`export default TimelineController`
