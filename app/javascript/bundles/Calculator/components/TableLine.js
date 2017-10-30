import React from 'react';
import Select from './Select';

const TableLine = (props) => {

  return (
    <tr id="stat">
      <td className="col-sm-3">{props.name}</td>
      <td className="col-sm-3"><Select
        name={props.name.toLowerCase()}
        className="col-sm-12"
        options={props.statValues}
        handlerFunction={props.handlerFunction}
        selectedOption={props.attribute.value}
      /></td>
      <td className="col-sm-3">{props.raceMod}</td>
      <td className="col-sm-3">{props.attribute.name + props.raceMod}</td>
    </tr>
  )
}

export default TableLine
