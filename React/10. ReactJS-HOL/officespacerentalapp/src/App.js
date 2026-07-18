import './App.css';
import officeImage from './office.jpg';

function App() {

  const office = {
    name: "Smart Office",
    rent: 55000,
    address: "Bangalore"
  };

  const officeList = [
    {
      name: "Smart Office",
      rent: 55000,
      address: "Bangalore"
    },
    {
      name: "Tech Park",
      rent: 75000,
      address: "Hyderabad"
    },
    {
      name: "Business Hub",
      rent: 45000,
      address: "Chennai"
    }
  ];

  return (

    <div className="App">

      <h1>Office Space Rental Application</h1>

      <img
        src={officeImage}
        alt="Office Space"
        width="500"
        height="300"
      />

      <h2>Featured Office</h2>

      <p><b>Name:</b> {office.name}</p>

      <p
        style={{
          color: office.rent < 60000 ? "red" : "green"
        }}
      >
        <b>Rent:</b> ₹{office.rent}
      </p>

      <p><b>Address:</b> {office.address}</p>

      <hr/>

      <h2>Available Office Spaces</h2>

      {
        officeList.map((item,index)=>(

          <div key={index} className="card">

            <h3>{item.name}</h3>

            <p
              style={{
                color:item.rent<60000?"red":"green"
              }}
            >
              <b>Rent:</b> ₹{item.rent}
            </p>

            <p><b>Address:</b> {item.address}</p>

          </div>

        ))
      }

    </div>

  );

}

export default App;