import React, { Component } from 'react';
import { ApolloProvider } from 'react-apollo';
import { ApolloClient, createNetworkInterface } from 'react-apollo';
import logo from './logo.svg';
import './App.css';

const client = new ApolloClient({
  networkInterface: createNetworkInterface({
    uri: process.env.REACT_APP_GRAPHQL_URL || "http://localhost:4000/graphql"
  }),
});

class App extends Component {
  render() {
    return (
      <ApolloProvider client={client}>
        <div className="App">
          <div className="App-header">
            <img src={logo} className="App-logo" alt="logo" />
            <h2>Welcome to React</h2>
          </div>
          <p className="App-intro">
            To get started, edit <code>src/App.js</code> and save to reload.
          </p>
        </div>
      </ApolloProvider>
    );
  }
}

export default App;
