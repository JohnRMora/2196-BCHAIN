import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
import Hello from './components/hello.jsx'
import Welcome from './components/welcome.jsx'
import TodoList from './components/TodoList.jsx'
import MovieList from './components/MovieList.jsx'
import BookList from './components/BookList.jsx'



function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <TodoList/>
      <MovieList/>
      <BookList/>
    </>
  )
}

export default App
