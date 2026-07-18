import './App.css';
import CalculateScore from './Components/CalculateScore';

function App() {
  return (
    <div>
      <CalculateScore
        name="Ashutosh Nanda"
        school="VIT Bhopal University"
        total={450}
        goal={5}
      />
    </div>
  );
}

export default App;