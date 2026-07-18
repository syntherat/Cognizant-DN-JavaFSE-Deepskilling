import React, { Component } from "react";

class EventExamples extends Component {

    constructor() {
        super();

        this.state = {
            counter: 0
        };
    }

    increment = () => {
        this.setState({
            counter: this.state.counter + 1
        });
    }

    decrement = () => {
        this.setState({
            counter: this.state.counter - 1
        });
    }

    sayHello = () => {
        alert("Hello! Have a nice day.");
    }

    increase = () => {
        this.increment();
        this.sayHello();
    }

    sayWelcome = (message) => {
        alert(message);
    }

    onPress = () => {
        alert("I was clicked");
    }

    render() {

        return (

            <div>

                <h2>Counter : {this.state.counter}</h2>

                <button onClick={this.increase}>
                    Increment
                </button>

                <button onClick={this.decrement}>
                    Decrement
                </button>

                <br/><br/>

                <button
                    onClick={() => this.sayWelcome("Welcome")}
                >
                    Say Welcome
                </button>

                <br/><br/>

                <button onClick={this.onPress}>
                    Synthetic Event
                </button>

            </div>

        );

    }

}

export default EventExamples;