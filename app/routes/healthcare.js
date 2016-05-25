import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    return this.store.query('tweet',  {topic: 'healthcare' });
  },
	topic: 'healthcare'
});
