import React from 'react';
import ReactDOM from 'react-dom';
import ManagerApp from '../ManagerApp'

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <ManagerApp />,
    document.body.appendChild(document.createElement('div')),
  )
})
