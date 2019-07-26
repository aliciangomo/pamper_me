import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { Application } from "stimulus";
import { definitionsFromContext } from "stimulus/webpack-helpers";

import { initMapbox } from '../plugins/init_mapbox';

import { colorStatus } from '../components/user_dashboard.js';

import {toggleCollapsible} from '../components/collapsible.js'

import {toggleDropdown} from '../components/user_dashboard_dropdown.js'

import {renderMap} from '../components/search_map.js'

import {mapsSelector} from '../components/maplink.js'
window.mapsSelector = mapsSelector

const application = Application.start()
const context = require.context("./controllers", true, /\.js$/)
application.load(definitionsFromContext(context))

renderMap();
initMapbox();
colorStatus();
toggleCollapsible();
toggleDropdown();
