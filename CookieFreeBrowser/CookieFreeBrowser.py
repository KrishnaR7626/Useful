#!/usr/bin/python3


from selenium import webdriver
from selenium.webdriver.chrome.service import Service
import os
path = "{}/geckodriver".format(os.getcwd())
serv = Service(path)
driver = webdriver.Firefox(service=serv)
