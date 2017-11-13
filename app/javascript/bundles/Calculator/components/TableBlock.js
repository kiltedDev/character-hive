import React from 'react';
import TableLine from './TableLine';

const TableBlock = (props) => {
// needed props
// stats={this.state.stats}
// handleStatChange={this.handleStatChange}
// selectedRace=this.state.selectedRace
// statValues={this.props.statValues}
// pointTotal={this.state.pointTotal}

  let stats=Object.keys(props.stats)
  let tableLines = stats.map((stat) => {
    return(
      <TableLine
      key={stat}
        name={stat}
        attribute={props.stats[stat]}
        handlerFunction={props.handleStatChange}
        raceMod={props.selectedRace[stat]}
        statValues={props.statValues}
      />
    )
  })

  return (
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
        <td>{props.pointTotal}</td>
        <td></td>
      </tr>
      </tfoot>
      <tbody>
        {tableLines}
      </tbody>
    </table>
  )
}

export default TableBlock
