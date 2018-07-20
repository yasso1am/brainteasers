import React, { Component } from 'react';
import NoMatch from './NoMatch';
import NavBar from './NavBar';
import Flash from './Flash';
import Home from './Home';
import { Switch, Route } from 'react-router-dom';
import { Segment } from 'semantic-ui-react';
import Episodes from './Episodes'
import Episode from './Episode'


class App extends Component {
  render() {
    return (
      <Segment basic>
        <NavBar />
        <Flash />
          <Switch>
            <Route exact path='/' component={Home} />
            <Route exact path='/episodes' component={Episodes} />
            <Route exact path='/episode/:id' component={Episode} episode />
            <Route component={NoMatch} />
          </Switch>
      </Segment>
    );
  }
}

export default App;
