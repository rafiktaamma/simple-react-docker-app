import logo from './logo.svg';
import './App.css';

function App() {
  return (
    <div className="App">
      <div style={{marginBottom : 20}}>
      <p>{process.env.REACT_APP_MY_APP_SLOT}</p>//printing it to screen
      </div>
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
}

export default App;
