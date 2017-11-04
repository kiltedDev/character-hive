import React, {Component} from 'react';

class CharacterIndexPage extends Component {
  render() {

    let listOfCharacters = this.props.characters.map(character => {
      return (
        <tr>
          <td><a href={"/characters/"+character.id}>{character.name}</a></td>
          <td>{character.race} {character.character_class} {character.level}</td>
        </tr>
      )
    })

debugger;

  return (
    <div className="CharacterIndexPage">
      <table>
        <thead>
          <tr>
            <th>Name</th>
            <th>Details</th>
          </tr>
        </thead>

        <tbody>
          {listOfCharacters}
        </tbody>
      </table>
    </div>
  )
  }
}
export default CharacterIndexPage;
