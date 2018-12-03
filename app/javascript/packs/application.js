import "bootstrap";
import { geoFindMe } from 'packs/location';
import { scrollLastMessageIntoView } from 'packs/scroll';
import { fadeOutAlert } from 'packs/fadeOutAlert';
geoFindMe();
// scrollLastMessageIntoView();
if(document.getElementById('alert')){
  fadeOutAlert();
}

