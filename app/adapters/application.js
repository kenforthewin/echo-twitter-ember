import DS from 'ember-data';

export default DS.RESTAdapter.extend({
  namespace: 'api/v1',
  host: 'https://echo-twitter-api.herokuapp.com'
});