import "bootstrap";
import { geoFindMe } from 'packs/location';
import { scrollLastMessageIntoView } from 'packs/scroll';
import { fadeOutAlert } from 'packs/fadeOutAlert';
import { hideNavbarIcon } from 'packs/hideMatchingIconInNavbar';
import { add_recipe_toggle } from '../components/recipe_toggle';

if(document.querySelector('.search_query')){
  geoFindMe();
}

// scrollLastMessageIntoView();
if(document.getElementById('alert')){
  fadeOutAlert();
}

if (document.getElementById('target-hide-icon-navbar')){
  hideNavbarIcon();
}

add_recipe_toggle();

