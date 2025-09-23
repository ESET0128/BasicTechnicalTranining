
import { useState } from "react";

function LoginComponenet() {

    const [username, setUsername] = useState("")
    const [password, setPassword] = useState("")

    const onLogicHandler = () => {
        if (username !== "username") {
            alert("invalid username")
            return
        }
        if (password !== "password") {
            alert("invalid password")
            return
        }
        alert("Login button clicked")
    }

    return (
        <>
        <br/>
            <form onSubmit={onLogicHandler}>
                <br/>
                <input type='text' value={username} onChange={(e) => { setUsername(e.target.value) }} placeholder="enter user name" />
                <br/>
                <input type='password' value={password} onChange={(e) => { setPassword(e.target.value) }} placeholder="enter password" />
                <br/>
                <button type="submit"> login </button>
                <button type="reset"> reset </button>
            </form>

        </>
    );
}
export default LoginComponenet;