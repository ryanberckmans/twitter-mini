`import Ember from 'ember'`
`import Tweet from '../../models/tweet'`

UserIndexController = Ember.ObjectController.extend
  actions:
    newTweet: (newTweetText) ->
      user = @get 'model'
      tweet = @store.createRecord 'tweet', { author: user, timestamp: new Date(), text: newTweetText }
      
      # In a production app, you'd want to check for save failures.
      # If this app had authentication, save failures could also arise from permissions errors.            
      tweet.save()
      user.save()
      @set 'newTweetText', null
      # TBD - "Composed" message
      # TBD - reset text in Compose box

`export default UserIndexController`
