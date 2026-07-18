import React, { Component } from "react";
import GuestPage from "./GuestPage";
import UserPage from "./UserPage";

class LoginControl extends Component {

    constructor() {

        super();

        this.state = {

            isLoggedIn: false

        };

    }

    handleLogin = () => {

        this.setState({

            isLoggedIn: true

        });

    }

    handleLogout = () => {

        this.setState({

            isLoggedIn: false

        });

    }

    render() {

        let button;
        let page;

        if (this.state.isLoggedIn) {

            button =

                <button onClick={this.handleLogout}>
                    Logout
                </button>;

            page = <UserPage />;

        }

        else {

            button =

                <button onClick={this.handleLogin}>
                    Login
                </button>;

            page = <GuestPage />;

        }

        return (

            <div>

                {button}

                <hr />

                {page}

            </div>

        );

    }

}

export default LoginControl;