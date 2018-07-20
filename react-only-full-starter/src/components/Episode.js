import React from 'react'
import {
  Header,
} from 'semantic-ui-react'
import axios from 'axios'

class Episode extends React.Component {
  state = { episode: {} }

  componentDidMount = async () => {
    await axios.get(`https://api.got.show/api/episodes/byId/${this.props.match.params.id}`)
    .then(res => {
    this.setState({episode: res.data.data})
    })
  }

  characters = () => {
    const episode = this.state.episode
    return episode.characters.map( (char, i ) => (
      <li key={i}>
        {char}
      </li>
      )
    )
  }
  
 

  render(){
    const e = this.state.episode
    return(
      <div>
        <Header as="h1">
          {e.name}
        </Header>
        <Header as ="h2">
          Characters
        </Header>
      <ul>
        {this.characters()}
      </ul>
      </div>
    )
  }

}

export default Episode