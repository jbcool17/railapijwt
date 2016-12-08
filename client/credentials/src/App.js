import React from 'react';
import logo from './logo.svg';
import './App.css';
import SignUpView from './SignUpView';
import LoginView from './LoginView';
import BeerView from './BeerView';

// var url = 'http://localhost:3000/v1';

var App = React.createClass({
  render: function() {
    return (
      <div className="App">
        <div className="App-header">
          <h1>Testing API</h1>
          <img src={logo} className="App-logo" alt="logo" />
        </div>
        <SignUpView />
        <hr/>
        <LoginView />
        <hr/>
        <BeerView />
      </div>
    );
  }
})

export default App;