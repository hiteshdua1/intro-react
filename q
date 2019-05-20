[1mdiff --git a/src/App.css b/src/App.css[m
[1mindex 15adfdc..32296df 100644[m
[1m--- a/src/App.css[m
[1m+++ b/src/App.css[m
[36m@@ -1,24 +1,29 @@[m
[31m-.App {[m
[31m-  text-align: center;[m
[32m+[m[32m.github-profile {[m
[32m+[m	[32mmargin: 1rem;[m
[32m+[m[32m  img {[m
[32m+[m[32m    width: 75px;[m
[32m+[m[32m  }[m
[32m+[m[32m  .info {[m
[32m+[m[32m    display: inline-block;[m
[32m+[m[32m    margin-left: 12px;[m
[32m+[m		[32m.name {[m
[32m+[m[41m    [m	[32mfont-size: 1.25rem;[m
[32m+[m[32m      font-weight: bold;[m
[32m+[m[32m    }[m
[32m+[m[32m  }[m
 }[m
 [m
[31m-.App-logo {[m
[31m-  animation: App-logo-spin infinite 20s linear;[m
[31m-  height: 80px;[m
[32m+[m[32mform {[m
[32m+[m	[32mborder: thin solid #ddd;[m
[32m+[m[32m  background-color: #fbfbfb;[m
[32m+[m[32m  padding: 2rem;[m
[32m+[m[32m  margin-bottom: 2rem;[m
[32m+[m[32m  display: flex;[m
[32m+[m[32m  justify-content: center;[m
 }[m
 [m
[31m-.App-header {[m
[31m-  background-color: #222;[m
[31m-  height: 150px;[m
[31m-  padding: 20px;[m
[31m-  color: white;[m
[31m-}[m
[31m-[m
[31m-.App-intro {[m
[31m-  font-size: large;[m
[31m-}[m
[31m-[m
[31m-@keyframes App-logo-spin {[m
[31m-  from { transform: rotate(0deg); }[m
[31m-  to { transform: rotate(360deg); }[m
[31m-}[m
[32m+[m[32m.header {[m
[32m+[m	[32mtext-align: center;[m
[32m+[m[32m  font-size: 1.5rem;[m
[32m+[m[32m  margin-bottom: 1rem;[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/src/App.js b/src/App.js[m
[1mindex d7d52a7..7677c81 100644[m
[1m--- a/src/App.js[m
[1m+++ b/src/App.js[m
[36m@@ -5,17 +5,26 @@[m [mimport './App.css';[m
 class App extends Component {[m
   render() {[m
     return ([m
[31m-      <div className="App">[m
[31m-        <div className="App-header">[m
[31m-          <img src={logo} className="App-logo" alt="logo" />[m
[31m-          <h2>Welcome to React</h2>[m
[31m-        </div>[m
[31m-        <p className="App-intro">[m
[31m-          To get started, edit <code>src/App.js</code> and save to reload.[m
[31m-        </p>[m
[32m+[m[32m      <div>[m
[32m+[m[32m      <h1>{this.props.title}</h1>[m
[32m+[m[32m      <Card />[m
       </div>[m
     );[m
   }[m
 }[m
 [m
[32m+[m[32mclass Card extends Component {[m
[32m+[m	[32mrender() {[m
[32m+[m[41m  [m	[32mreturn ([m
[32m+[m[41m    [m	[32m<div className="github-profile">[m
[32m+[m[41m    [m	[32m  <img src="https://placehold.it/75" />[m
[32m+[m[32m        <div className="info">[m
[32m+[m[32m          <div className="name">Name here...</div>[m
[32m+[m[32m          <div className="company">Company here...</div>[m
[32m+[m[32m        </div>[m
[32m+[m[41m    [m	[32m</div>[m
[32m+[m[32m    );[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
[32m+[m
 export default App;[m
[1mdiff --git a/src/index.js b/src/index.js[m
[1mindex 54c5ef1..7043c37 100644[m
[1m--- a/src/index.js[m
[1m+++ b/src/index.js[m
[36m@@ -4,6 +4,6 @@[m [mimport App from './App';[m
 import './index.css';[m
 [m
 ReactDOM.render([m
[31m-  <App />,[m
[32m+[m[32m  <App title="The awesome Project portfolio"/>,[m
   document.getElementById('root')[m
 );[m
