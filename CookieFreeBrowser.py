#!/usr/bin/python3

from selenium import webdriver
from selenium.webdriver.chrome.service import Service
serv = Service(r"/home/rsudo/Downloads/geckodriver")
driver = webdriver.Firefox(service=serv)

