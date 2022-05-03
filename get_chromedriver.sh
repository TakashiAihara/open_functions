get_chromedriver_latest(){
  curl -sS "chromedriver.storage.googleapis.com/LATEST_RELEASE"
}

get_chromedriver(){
  curl https://chromedriver.storage.googleapis.com/$(get_chromedriver_latest)/chromedriver_linux64.zip -o /tmp/chromedriver.zip
  unzip /tmp/chromedriver.zip -d /usr/local/bin/
  chmod +x /usr/local/bin/chromedriver
  rm /tmp/chromedriver
}

get_chromedriver
