`import Ember from 'ember'`

GravatarImageComponent = Ember.Component.extend
  DEFAULT_GRAVATAR_SIZE: 200
  tagName: 'img'
  attributeBindings: ['src', 'alt']
  alt: 'Gravatar Pic'
  src: (->
    'http://www.gravatar.com/avatar/' + md5(@get('email').toLowerCase()) + '?s=' + @get('DEFAULT_GRAVATAR_SIZE')
  ).property 'email'

`export default GravatarImageComponent`
