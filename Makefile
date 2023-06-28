build:
	wasm-pack build --target bundler && jq -s add pkg/package.json package.template.json > pkg/package.tmp.json && mv pkg/package.tmp.json pkg/package.json
publish:
	cd pkg && yarn publish --access public
