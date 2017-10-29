import React from 'react';
import Select from './Select';

const TableLine = (props) => {

  return (
    <tr id="stat">
      <td>{props.name}</td>
      <td><Select
        name={props.name.toLowerCase()}
        className="col-sm-3"
        options={props.statValues}
        handlerFunction={props.handlerFunction}
        selectedOption={props.attribute.value}
      /></td>
      <td>{props.raceMod}</td>
      <td>{props.attribute.name + props.raceMod}</td>
    </tr>
  )
}

export default TableLine
