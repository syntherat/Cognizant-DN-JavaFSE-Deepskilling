import './App.css';
import CohortDetails from './Components/CohortDetails';

function App() {

  return (

    <div>

      <CohortDetails
        title="React"
        startedOn="10-Jan-2026"
        status="ongoing"
        coach="John"
        trainer="David"
      />

      <CohortDetails
        title="Java"
        startedOn="05-Dec-2025"
        status="completed"
        coach="Peter"
        trainer="Steve"
      />

      <CohortDetails
        title="Spring Boot"
        startedOn="15-Feb-2026"
        status="ongoing"
        coach="Alex"
        trainer="Chris"
      />

    </div>

  );

}

export default App;