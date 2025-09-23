import React from "react";
import { useContext } from "react";

import { Context } from "../App";

export default function UseContextComponent(){

    const { theme, setTheme} = useContext(Context) 

    return(
        <div>
            Use context components
            {theme}
        </div>
    )
}