# Download and unzip the swfobject.
rm -rf swfobject
rm -rf swfobject_2_2.zip
wget https://swfobject.googlecode.com/files/swfobject_2_2.zip
unzip swfobject_2_2.zip

# Clean up the downloaded assets.
mv -f swfobject/swfobject.js index.js
mv -f swfobject/expressInstall.swf expressInstall.swf
rm -rf swfobject
rm -rf swfobject_2_2.zip

# Transform the source to make it browserify compatible.
echo "module.exports=swfobject;" >> index.js

# Patch the swfobject against blue coat's ActiveXObject blocking.
node patch.js
