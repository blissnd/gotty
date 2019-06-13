rm ./gotty
rm server/Asset.go

cp resources/index.html bindata/static/index.html
cp resources/favicon.png bindata/static/favicon.png
cp js/dist/gotty-bundle.js bindata/static/js/gotty-bundle.js
cp resources/index.css bindata/static/css/index.css
cp resources/xterm_customize.css bindata/static/css/xterm_customize.css
cp js/node_modules/xterm/dist/xterm.css bindata/static/css/xterm.css

go-bindata -prefix bindata -pkg server -ignore=\\.gitkeep -o server/Asset.go bindata/...
mv server/Asset.go server/asset.go

