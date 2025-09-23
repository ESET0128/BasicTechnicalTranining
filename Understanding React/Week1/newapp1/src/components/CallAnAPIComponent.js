import React from 'react'

export default function CallAnAPIComponent() {

const getData = () => {
    fetch("https://jsonplaceholder.typicode.com/posts")
    .then((data)=>data.json())
    .then((jsondata)=>console.log(jsondata))
    }

  return (
    <>
    <div>
      <button onClick={()=>{getData()}}>load Data</button>
      {/* {
        data.map((element)=><div key={element.id}>{element.id}.{element.title}</div>);
      } */}
    </div>
    </>
  )
}

