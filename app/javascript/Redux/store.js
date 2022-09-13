import thunk from 'redux-thunk';
import { configureStore } from '@reduxjs/toolkit';
import { applyMiddleware } from 'redux';

export const greetingReducer = (state = 'Hi', action) => {
  switch (action.type) {
    case 'load':
      state = action.payload.attributes;
      return state;

    default:
      return state;
  }
};

export const fetchGreeting = () => async (dispatch) => {
  const response = await fetch('/api/v1/messages');
  const data = await response.json();
  dispatch({ type: 'load', payload: data.data });
};

export const store = configureStore({reducer: greetingReducer}, applyMiddleware(thunk));
