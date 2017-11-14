import PropTypes from 'prop-types';
import React from 'react';
import ErrorBlock from './ErrorBlock';
import TableLine from './TableLine';
import TableBlock from './TableBlock';
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
    let stats = Object.keys(this.state.stats)
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
    return (
      <form>
      <h3>Calculate Stats</h3>
        <ErrorBlock
          errors={this.state.errors}
        />
        <RaceSelect
          selectedRace={this.state.selectedRace}
          raceSelect={this.raceSelect}
          handleRaceChange={this.handleRaceChange}
          raceStats={this.props.raceStats}
          selectedStat={this.state.selectedStat}
        />
        <br/>
        <TableBlock
          stats={this.state.stats}
          handleStatChange={this.handleStatChange}
          selectedRace={this.state.selectedRace}
          statValues={this.props.statValues}
          pointTotal={this.state.pointTotal}
        />
      </form>
    );
  }
}
