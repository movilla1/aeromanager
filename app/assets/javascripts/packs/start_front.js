import React from 'react';
import ReactDOM from 'react-dom';
import ManagerApp from './manager_app'

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <ManagerApp />,
    document.body.appendChild(document.createElement('div')),
  )
})
