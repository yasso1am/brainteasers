import React from 'react'
import axios from 'axios'
import {setFlash} from '../actions/flash'
import {connect} from 'react-redux'
import { Link } from "react-router-dom";

class Episodes extends React.Component {
  state = {
    episodes: []
  }

componentDidMount(){
  axios.get('https://api.got.show/api/episodes/')
  .then( res => {
    this.setState({episodes: res.data})
  })
  .catch(err => {
    this.props.dispatch(setFlash("something went wrong", 'red'))
});
}

showEpisodes = () => {
  return this.state.episodes.map( (episode, i) => (
    <div key={i}>
      <Link to={{ 
        pathname: `/episode/${episode._id}`, 
        state: { episode: episode }
      }}> 
        {i + 1 }. {episode.name}
      </Link>
    </div>
    )
  )
}

  render(){
    return(
      
      <div>
        {this.showEpisodes()}

      </div>
    )
  }
}

export default connect()(Episodes)