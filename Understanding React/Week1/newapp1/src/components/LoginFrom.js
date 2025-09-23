import React from "react";
import { useState } from "react";

export default function LoginForm(){
    const [loginState, setLoginState]=useState({
        username:"",
        password:""
    
    });
    const onUsernameChangeHandler=(event)=>{
        setLoginState({
            ...loginState,
            username:event.target.value
        });
    }
    const onPasswordChangeHandler=(event)=>{
        setLoginState({
            ...loginState,
            password:event.target.value
        });
    }
     const loginHandler=(event)=>{
        console.log(event)
    }
    return(
        <div>
            <br/>
            Welcome to Login page
            <form onSubmit={loginHandler}>
                <br/>
                <input type='text' value={loginState.username} onChange={onUsernameChangeHandler}/>
                <br/>
                <input type='password' value={loginState.password} onChange={onPasswordChangeHandler}/>
                <br/>
                <button type='submit' >Login</button>
                <br/>
            </form>
        </div>
    )
}