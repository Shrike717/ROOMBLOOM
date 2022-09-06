// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"

// document.querySelector(".whole-page").addEventListener("click", (e) => {
//   console.log("Am I working")
// })


// export function restoreScrollPosition(context: any) {
//   let path = context.router.route.location.pathname;
//   let y = Number(sessionStorage.getItem("scrollPosition_" + path));
//   window.scrollTo(0, y);
// }

// document.querySelector('.color-picker').addEventListener('input', function(){
//   console.log("Am i workinng?")
//   const page = document.querySelector(".whole-page")
//   page.style.backgroundColor = this.value;
//   const b = document.querySelector('.cnew')
//   const c = document.createElement("input")
//   c.type = "text"
//   c.value = this.value
//   b.appendChild(c)
// })
