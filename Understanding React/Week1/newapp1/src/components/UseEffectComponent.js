import React, { useEffect, useState} from "react";

const suggestionMaster=[
    "youtube",
    "mobile",
    "laptop"
];
export default function UseEffectComponent(){

    const [recommendation, setRecommendation]=useState([suggestionMaster])

    const [search, setSearch]=useState("");

    useEffect(()=>{
        console.log("Inside useEffect")
        setRecommendation(suggestionMaster.filter((elem)=>elem.includes(search)));
    },[search]);


    return(
        <div>
            <br/>
            Search Bar Example
            <br/>
            <input value={search} onChange={(e)=>setSearch(e.target.value)}/>
            <br/>
            {
                recommendation.map((element)=><div>{element}</div>)
            }
        </div>
    )
}