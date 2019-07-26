import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

import { colorStatus } from '../components/user_dashboard.js';

import {toggleCollapsible} from '../components/collapsible.js'

import  {toggleDropdown} from '../components/user_dashboard_dropdown.js'

initMapbox();
colorStatus();
toggleCollapsible();
toggleDropdown();
