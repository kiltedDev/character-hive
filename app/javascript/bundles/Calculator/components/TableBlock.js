import React from 'react';
import TableLine from './TableLine';
import TableHead from './TableHead';
import TableFoot from './TableFoot';

const TableBlock = (props) => {

  let statKeys=Object.keys(props.stats)
  let tableLines = statKeys.map((stat) => {
    return(
      <TableLine
      key={stat}
        name={props.stats[stat].text}
        attribute={props.stats[stat]}
        handlerFunction={props.handleStatChange}
        raceMod={props.selectedRace[stat]}
        statValues={props.statValues}
      />
    )
  })

  return (
    <table className="col-sm-12 col-md-6 table-bordered">
      <TableHead/>
      <TableFoot
      pointTotal={props.pointTotal}/>
      <tbody>
        {tableLines}
      </tbody>
    </table>
  )
}

export default TableBlock
