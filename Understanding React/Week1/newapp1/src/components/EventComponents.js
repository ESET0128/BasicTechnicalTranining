function EventComponent(){

    const onChangeHandler=(e)=>{
        console.log("Handler Called")
    }

    return(
        <>
        <br/>
        Welcome
        <br/>
        <button onClick={()=>{console.log("Button Clicked");}}>
            Click Me
        </button>
        <br/>
        <div style={{background: '#4396d9',padding:'50px'}} onMouseEnter={()=>{console.log("Button Clicked");}}>
            this is new div
        </div>
        <br/>
        <input type="text" onChange={onChangeHandler} placeholder="Enter Text"/>
        <input type="number" min={1} max={10} placeholder="Enter Number"/>
        </>
    );
}
export default EventComponent;