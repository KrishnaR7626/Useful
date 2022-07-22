#!/usr/bin/python3

from selenium import webdriver
from selenium.webdriver.chrome.service import Service
serv = Service(r"PathToGeckoDriver")
driver = webdriver.Firefox(service=serv)
