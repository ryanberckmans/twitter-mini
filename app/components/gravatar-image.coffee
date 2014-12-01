`import Ember from 'ember'`

GravatarImageComponent = Ember.Component.extend
  DEFAULT_GRAVATAR_SIZE: 200
  tagName: 'img'
  attributeBindings: ['src', 'alt']
  alt: 'Gravatar Pic'
  src: (->
    email = @get 'email'
    email = 'none' unless email
    size  = @get 'size'
    size  = @get 'DEFAULT_GRAVATAR_SIZE' unless size

    'https://www.gravatar.com/avatar/' + md5(email.toLowerCase()) + '?d=mm&s=' + size
  ).property 'email'

`export default GravatarImageComponent`
