const loginBtn = document.getElementById("login");
const registerBtn = document.getElementById("register");
const registerForm = document.getElementById("registerForm");
const loginForm = document.getElementById("loginForm");
const container = document.querySelector(".container");

loginBtn.addEventListener("click", () => {
    container.classList.remove("right-panel-active")
})

registerBtn.addEventListener("click", () => {
    container.classList.add("right-panel-active")
})
/**
 * 需要使用servlet时可以注释掉或删除
 */
// registerForm.addEventListener("submit",(e)=>e.preventDefault())
// loginForm.addEventListener("submit",(e)=>e.preventDefault())