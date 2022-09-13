import React from 'react';
import { BrowserRouter, Route, Routes } from 'react-router-dom';
import Greeting from './Greeting';
import { Provider } from 'react-redux';
import { store } from '../Redux/store';

const App = () => {
  return (
    <Provider store={store}>
      <BrowserRouter>
        <Routes>
          <Route exact path="/" element={<Greeting />} />
        </Routes>
      </BrowserRouter>
    </Provider>
  );
};

export default App;
