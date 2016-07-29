cd /home/davidweisss/auth0-react-sample/01-Login
git pull
npm install
mv dist dist_hold
sudo npm run build
sudo cp dnavid.crt dnavid.key server.js dist/
cd dist
## npm install express
sudo node server.js
