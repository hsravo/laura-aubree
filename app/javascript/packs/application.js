// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

//= require popper
//= require turbolinks
//= require bootstrap
//= require activestorage

import Rails from "@rails/ujs"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import baguetteBox from 'baguettebox.js';

Rails.start()
ActiveStorage.start()

require("@rails/ujs")
require("trix")
require("@rails/actiontext")
require("custom/nav")
require("custom/home")
require("custom/baguette")