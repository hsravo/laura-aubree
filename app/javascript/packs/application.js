// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

//= require jquery
//= require rails-ujs
//= require popper
//= require bootstrap
//= require activestorage

import Rails from "@rails/ujs"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
ActiveStorage.start()

require ("@rails/ujs").start()
require("trix")
require("@rails/actiontext")
require("./baguetteBox.min.js")
require("./nav.js")

console.log("custom js file loaded");