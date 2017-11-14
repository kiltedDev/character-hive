import React from 'react';

const TableFoot = (props) => {

  return (
    <tfoot>
      <tr>
        <td></td>
        <td>Total:</td>
        <td>{props.pointTotal}</td>
        <td></td>
      </tr>
    </tfoot>
  )
}

export default TableFoot
