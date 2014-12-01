`import DS from 'ember-data'`

User = DS.Model.extend
  firstName: DS.attr 'string'
  lastName: DS.attr 'string'
  email: DS.attr 'string'
  tweets: DS.hasMany 'tweet', { async: true }

`export default User`
