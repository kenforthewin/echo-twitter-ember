import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.route('nasa');
  this.route('healthcare');
  this.route('open_source');
});

export default Router;
