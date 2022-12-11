import './UseState.css'
import {useState} from 'react';



const UseState = () => {
  // console.log(useState('light'))
  const [theme, setTheme] = useState('light');
  const [count, setCount] = useState(0);
  return (
    <div className={theme}>
      <h1>UseState Component</h1>
      <button onClick={ () => {
        // if (theme === 'light'){
        //   setTheme('dark')
        // }else{
        //   setTheme('light')
        // }
        theme === 'light'? setTheme('dark') : setTheme('light')
        
      }}>  
      </button>
      <button onClick= {
        () => {
          setCount(prevCount => prevCount + 1)
        }
      }> Increment </button>

<button onClick= {
        () => {
          setCount(prevCount => prevCount - 1)
        }
      }> Decrement </button>
      <h1>{count}</h1>
      {/* <button onClick={ () => {
        setTheme('light')
      }}>  
      </button> */}
    </div>
  );
};

export default UseState;