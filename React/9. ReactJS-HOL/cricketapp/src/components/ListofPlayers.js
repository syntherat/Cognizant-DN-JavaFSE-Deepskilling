import React from "react";

function ListofPlayers() {

    const players = [
        { name: "Virat", score: 95 },
        { name: "Rohit", score: 82 },
        { name: "Gill", score: 67 },
        { name: "Rahul", score: 45 },
        { name: "Pant", score: 88 },
        { name: "Hardik", score: 60 },
        { name: "Jadeja", score: 72 },
        { name: "Ashwin", score: 55 },
        { name: "Shami", score: 30 },
        { name: "Bumrah", score: 90 },
        { name: "Siraj", score: 40 }
    ];

    const lowScore = players.filter(player => player.score < 70);

    return (
        <div>

            <h2>List of Players</h2>

            <ul>
                {
                    players.map((player,index)=>(
                        <li key={index}>
                            {player.name} - {player.score}
                        </li>
                    ))
                }
            </ul>

            <h2>Players with Score Below 70</h2>

            <ul>
                {
                    lowScore.map((player,index)=>(
                        <li key={index}>
                            {player.name} - {player.score}
                        </li>
                    ))
                }
            </ul>

        </div>
    );

}

export default ListofPlayers;