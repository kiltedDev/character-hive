import React from 'react';

const ErrorBlock = (props) => {
  let errorItems;
  if (Object.keys(props.errors).length > 0) {
    errorItems = Object.values(props.errors).map(error => {
      return(<li key={error}>{error}</li>)
    })
  }

  return (
    <div className="callout alert">{errorItems}</div>
  )
}

export default ErrorBlock
