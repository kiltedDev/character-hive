import React from 'react';

const ListOfCharacters = props => {
  let listOfCharacters = props.characters.map(character => {
    return (
      <tr>
        <td><a href={"/characters/"+character.id}>{character.name}</a></td>
        <td>{character.race_name} {character.character_class} {character.level}</td>
      </tr>
    )
  })

  return (
    <tbody>
      {listOfCharacters}
    </tbody>
  );
}

export default ListOfCharacters;
