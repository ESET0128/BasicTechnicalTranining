
import { createContext, useState } from "react";
import EventComponent from "./components/EventComponents";
import LoginComponenet from  "./components/LoginComponenet";
import LoginForm from "./components/LoginFrom";
import UseEffectComponent from "./components/UseEffectComponent";
import UseContextComponent from "./components/UseContextComponent";
import UseReducerComponent from "./components/UseReducerComponent";
import CallAnAPIComponent from "./components/CallAnAPIComponent";

const Context = createContext(null)
export{Context};

function App() {

  const [theme, setTheme] = useState('light');
  const [count, setCount] = useState(0);  

  const [counter, setCounter] = useState(0);

  const incremenetButtonHandler = () => {
    setCounter(counter + 1);
  }

  const decremenetButtonHandler = () => {
    setCounter(counter - 1);
  }



  console.log("Incremenet button clicked");
  return (
    <>
    <Context.Provider value={{
      theme:theme,
      setTheme:setTheme,
      count:count,
      setCount:setCount,
    }}>
    <div>
      <div>
        Counter = 
        {counter}
      </div>
      <button onClick={incremenetButtonHandler}>Incremenet</button>
      <button onClick={decremenetButtonHandler}>Decremenet</button>
    </div>

    <EventComponent/>
    <LoginComponenet/>
    <LoginForm/>
    <UseEffectComponent/>
    <UseContextComponent/>
    <UseReducerComponent/>
    <CallAnAPIComponent/>
    </Context.Provider>
    </>
  );
}

export default App;
