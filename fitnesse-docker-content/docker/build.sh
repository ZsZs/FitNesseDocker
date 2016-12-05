rm -fr build
mkdir build
cp -r ../../../FitNesseConnect/pom.xml build
cp -r ../../../FitNesseConnect/fitnesse-connect-connect build
cp -r ../../../FitNesseConnect/fitnesse-connect-parent build
cp -r ../../../FitNesseConnect/fitnesse-connect-test build
docker build -t zsuffazs/fitnesse-docker-content .
docker run -d --name fitnesse-docker-content -v /fitnesse -p 21:21 -p 30000-30009:30000-30009 -e "PUBLICHOST=localhost" zsuffazs/fitnesse-docker-content