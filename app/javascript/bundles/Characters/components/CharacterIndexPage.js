import React, {Component} from 'react';
import ListOfCharacters from './ListOfCharacters';

class CharacterIndexPage extends Component {
  render() {
    return (
      <div className="CharacterIndexPage">
        <table>
          <thead>
            <tr>
              <th>Name</th>
              <th>Details</th>
            </tr>
          </thead>
          <ListOfCharacters
          characters={this.props.characters}/>
        </table>
      </div>
    )
  }
}
export default CharacterIndexPage;
