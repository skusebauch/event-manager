// webpacker
import "core-js/stable";
import "regenerator-runtime/runtime";

require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");
require("require jquery3")
require("require popper")
require("bootstrap-sprocketsW);

// External imports
// import bootstrap

// internal imports
// import { initSomething } from "../plugins/init_something";

document.addEventListener("turbolinks:load", () => {
  // Call your functions here, e.g:
  // initSomething
});
