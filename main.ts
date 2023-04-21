import { enqueueSnackbar, setFavicon } from "cookies-ds";
import hljs from "highlight.js";
import Alpine from "alpinejs"

setFavicon();
globalThis.hljs = hljs; 
globalThis.enqueueSnackbar = enqueueSnackbar;
Alpine.start();
