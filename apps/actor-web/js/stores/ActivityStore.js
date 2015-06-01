'use strict';

var ActorAppDispatcher = require('../dispatcher/ActorAppDispatcher');
var ActorAppConstants = require('../constants/ActorAppConstants');
var ActorClient = require('../utils/ActorClient');
var ActionTypes = ActorAppConstants.ActionTypes;
var ActivityTypes = ActorAppConstants.ActivityTypes;

var EventEmitter = require('events').EventEmitter;
var assign = require('object-assign');

var CHANGE_EVENT = 'change';

var _activity = {
  type: 'default'
};

var ActivityStore = assign({}, EventEmitter.prototype, {
  getActivity: function() {
    return(_activity);
  },

  emitChange: function() {
    this.emit(CHANGE_EVENT);
  },

  addChangeListener: function(callback) {
    this.on(CHANGE_EVENT, callback)
  },

  removeChangeListener: function(callback) {
    this.removeListener(CHANGE_EVENT, callback)
  }
});

ActivityStore.dispatchToken = ActorAppDispatcher.register(function(action) {
  var data = null;

  switch(action.type) {
    case ActionTypes.CLICK_USER:
      data = ActorClient.getUser(action.userId);
      _activity = {
        type: ActivityTypes.USER_PROFILE,
        userId: action.userId,
        data: data
      };
      ActivityStore.emitChange();
      break;
    case ActionTypes.CLICK_GROUP:
      data = ActorClient.getGroup(action.groupId);
      _activity = {
        type: ActivityTypes.GROUP_PROFILE,
        groupId: action.groupId,
        data: data
      };
      ActivityStore.emitChange();
      break;
    default:
  }
});

module.exports = ActivityStore;