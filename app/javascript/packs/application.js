// Automatically Compiled by Webpack together with Other Packs
// Actual Application Logic => app/javascript/*
// Default Rails Config 👇

import Rails from '@rails/ujs'
import Turbolinks from 'turbolinks'
import * as ActiveStorage from '@rails/activestorage'
import 'channels'

Rails.start()
Turbolinks.start()
ActiveStorage.start()


// Food-Fluent Original Config 👇

// External Imports
import 'bootstrap';

// Internal Imports
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
});
