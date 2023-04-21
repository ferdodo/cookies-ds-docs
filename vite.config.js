export default {
	root: "./public",
	resolve: {
		alias: {
			"/main.js": "../main.ts"
		}
	},
	build: {
		sourcemap: true
	}
};
