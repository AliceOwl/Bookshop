// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")
require("jquery-ui-bundle")
require("bootstrap")
//require_tree (".")
require("chartkick")
require("chart.js")
require("Chart.bundle")
require ("map-custom")
require ("slick-custom")

import "bootstrap"
import "../stylesheets/application"
import '../src/javascripts/pagy.js.erb'


document.addEventListener("turbolinks:load", () => {
    $('[data-toggle="tooltip"]').tooltip()
    $('[data-toggle="popover"]').popover()
})

//require("packs/main")

require("custom/animsition")
require("custom/tooltip")
require("custom/countdowntime")
require("custom/map-custom")
require("custom/slick-custom")
require("custom/daterangepicker")
require("custom/moment")
require("custom/isotope.pkgd")
require("custom/main")
require("custom/jquery-ui")
require("custom/lightbox")
require("custom/lightbox-plus-jquery")
require("custom/jquery.magnific-popup")
require("custom/parallax100")
require("custom/perfect-scrollbar.min")
require("custom/select2")
require("custom/slick")
require("custom/sweetalert.min")
//require("pagy")


//import "../stylesheets/application"

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
