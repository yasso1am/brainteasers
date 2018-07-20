import React, { Component } from 'react';
import { Header } from 'semantic-ui-react';
import Episodes from './Episodes'

class Home extends Component {
  render() {
    return (
      <div>
      <Header as='h1' textAlign='center'>Game of Thrones : Sci-fi Medival HBO Nakedness</Header>
      <Episodes />
      </div>
    );
  }
}

export default Home;
