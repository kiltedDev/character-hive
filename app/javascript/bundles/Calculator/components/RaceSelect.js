import React from 'react';
import Select from './Select';

class RaceSelect extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
    };
  }

  render() {
    let wildCardSlot = <p> </p>;

    let stats = [
      {name: "Strength",
      value: "strength"},
      {name: "Constitution",
      value: "constitution"},
      {name: "Dexterity",
      value: "dexterity"},
      {name: "Intelligence",
      value: "intelligence"},
      {name: "Wisdom",
      value: "wisdom"},
      {name: "Charisma",
      value: "charisma"}]

    if (this.props.selectedRace.wild) {
      wildCardSlot =
      <Select
        name='selectedStat'
        handlerFunction={this.props.handleRaceChange}
        options={stats}
        selectedOption={this.state.selectedStat}
        className="attribute"
      />
    }

    return (
      <table className="col-sm-12 col-md-6 race-select table-bordered">
        <thead>
          <tr>
            <th>Race</th>
            <th>Ability</th>
          </tr>
        </thead>
        <tbody>
        <tr>
          <td>
            <Select
              name='selectedRace'
              handlerFunction={this.props.raceSelect}
              options={this.props.raceStats}
              selectedOption={this.props.selectedRace.name}
              className="race"
            />
          </td>
          <td>
            {wildCardSlot}
          </td>
        </tr>
        </tbody>
      </table>
    );
  }
}

export default RaceSelect;
