import "bootstrap";
import { geoFindMe } from 'packs/location';
import { scrollLastMessageIntoView } from 'packs/scroll';
import { fadeOutAlert } from 'packs/fadeOutAlert';
import { hideNavbarIcon } from 'packs/hideMatchingIconInNavbar';

geoFindMe();
// scrollLastMessageIntoView();
if(document.getElementById('alert')){
  fadeOutAlert();
}

if (document.getElementById('target-hide-icon-navbar')){
  hideNavbarIcon();
}

