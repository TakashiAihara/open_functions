get_chromedriver_latest_version(){
  curl -sS "chromedriver.storage.googleapis.com/LATEST_RELEASE"
}

get_chromedriver_latest(){
  curl https://chromedriver.storage.googleapis.com/$(get_chromedriver_latest_version)/chromedriver_linux64.zip -o /tmp/chromedriver.zip
  unzip /tmp/chromedriver.zip -d /usr/local/bin/
  chmod +x /usr/local/bin/chromedriver
  rm /tmp/chromedriver.zip
}

get_chromedriver_latest
