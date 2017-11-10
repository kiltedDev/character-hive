import PropTypes from 'prop-types';
import React from 'react';
import TableLine from './TableLine';
import RaceSelect from './RaceSelect';

export default class PBCalc extends React.Component {
  constructor(props) {
    super(props);
      this.state = {
        errors: [],
        stats: {
          strength: {text: "Strength", name: 10, value: 0},
          constitution: {text: "Constitution", name: 10, value: 0},
          dexterity: {text: "Dexterity", name: 10, value: 0},
          intelligence: {text: "Intelligence", name: 10, value: 0},
          wisdom: {text: "Wisdom", name: 10, value: 0},
          charisma: {text: "Charisma", name: 10, value: 0}
        },
        selectedRace: this.props.raceStats[0],
        selectedStat: '',
        pointTotal: 0
      }
      this.handleStatChange = this.handleStatChange.bind(this);
      this.handleRaceChange = this.handleRaceChange.bind(this);
      this.raceSelect = this.raceSelect.bind(this);
  }

  handleStatChange(event) {
    let eventName = event.target.name;
    let targetValue = parseInt(event.target.value)
    let newPointTotal = this.state.pointTotal;
    newPointTotal -= this.state.stats[eventName].value;
    newPointTotal += targetValue;
    let newStat = this.props.statValues.find((stat) =>
      (stat.value === targetValue)
    );
    let stats = this.state.stats
    stats[eventName].value = newStat.value
    stats[eventName].name = newStat.name
    this.setState({
      stats,
      pointTotal: newPointTotal
    });
  }

  handleRaceChange(event) {
    let selectedRace = this.state.selectedRace;
    stats = Object.keys(this.state.stats)
    stats.map((stat) => {
      return(selectedRace[stat] = 0);
    })
    selectedRace[event.target.value] = 2;
    this.setState({
      selectedRace: selectedRace,
      selectedStat: event.target.value.charAt(0).toUpperCase() + event.target.value.slice(1)
    })
  }

  raceSelect(event) {
    let newRace = this.props.raceStats.find((race) =>
      (race.name === event.target.value)
    );

    this.setState({
      selectedRace: newRace
    });
  }

  render() {
    let errorDiv;
    let errorItems;
    if (Object.keys(this.state.errors).length > 0) {
      errorItems = Object.values(this.state.errors).map(error => {
        return(<li key={error}>{error}</li>)
      })
      errorDiv = <div className="callout alert">{errorItems}</div>
    }

    let stats=Object.keys(this.state.stats)
    let tableLines = stats.map((stat) => {
      return(
        <TableLine
        key={stat}
          name={stat}
          attribute={this.state.stats[stat]}
          handlerFunction={this.handleStatChange}
          raceMod={this.state.selectedRace[stat]}
          statValues={this.props.statValues}
        />
      )
    })

    return (
      <form>
      <h3>Calculate Stats</h3>
        {errorDiv}
        <RaceSelect
          selectedRace={this.state.selectedRace}
          raceSelect={this.raceSelect}
          handlerFunction={this.handleRaceChange}
          raceStats={this.props.raceStats}
          selectedStat={this.state.selectedStat}
        />
        <br/>
        <table className="col-sm-12 col-md-6 table-bordered">
          <thead>
          <tr>
            <th>Ability</th>
            <th>Base</th>
            <th>Racial</th>
            <th>Total</th>
          </tr>
          </thead>
          <tfoot>
          <tr>
            <td></td>
            <td>Total:</td>
            <td>{this.state.pointTotal}</td>
            <td></td>
          </tr>
          </tfoot>
          <tbody>
            {tableLines}
          </tbody>
        </table>
      </form>
    );
  }
}
