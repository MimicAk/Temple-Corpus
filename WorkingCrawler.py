import requests
from bs4 import BeautifulSoup
import re
from urllib.parse import urljoin
from urllib.error import URLError
from urllib.robotparser import RobotFileParser

import mysql.connector
from geopy.geocoders import MapQuest

db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': '',
    'database': 'temple_corpus'
}

# Connection and cursor settings
connection = mysql.connector.connect(**db_config)

cursor = connection.cursor()
# end of connection settings

my_list_web = []
my_list = []
list_p = []
list_img = []
json_data1 = []
i=0

def is_crawling_allowed(url):
    try:
        rp = RobotFileParser()
        robots_url = f"{url.rstrip('/')}/robots.txt"
        rp.set_url(robots_url)
        rp.read()
        return rp.can_fetch("*", url)
    except URLError as e:
        print(f"Error while fetching robots.txt(robots.txt file doesnot exist for this website)")
        return True

def crawl(url, limit,li, deity_name):
    flag=0
    if limit <= 0:
        return
    if not is_crawling_allowed(url):
            print(f"Crawling not allowed for {url}")
            return

    # Send a GET request to the specified URL
    response = requests.get(url)

    # Parse the HTML content using BeautifulSoup
    soup = BeautifulSoup(response.content, 'html.parser')

    # Extract relevant information or perform desired actions
    # For example, you could print the page title
    #print("Title:", soup.title.string)

    # Extract and print all the text content within the <p> tags
    paragraphs = soup.find_all('p')
    for p in paragraphs:
        cleaned_text = p.text.strip()
        if not cleaned_text or cleaned_text.isspace():
            continue
        pattern = r'[\t]{2,}|@'
        match = re.search(pattern, cleaned_text)
        if match:
            continue
        else:  
            if cleaned_text not in list_p:
                list_p.append(cleaned_text)
                print(cleaned_text)

    # Extract and print the URLs of all the images within the <img> tags
    images = soup.find_all('img')
    for image in images:
        src = image.get('src')
        if src not in list_img:
            list_img.append(src)
            print("Image URL: ",src)

    # Find all the links on the page
    links = soup.find_all('a')

    # Process each link
    for link in links:
        href = link.get('href')
        
        # Check if the link is not None
        if href is not None:
            # Construct the absolute URL
            if href.startswith('https://'):
                if href not in my_list:
                    my_list.append(href)
                    crawl(href, limit - 1,li)
                    if flag%6 == 0:
                        print("Reference Links:", href)
                    flag = flag +1
                    
    # Customized code by Ashok
    # Data to MySQL
    temple_name = soup.title.string.strip()
    # deity_name
    description = "\n".join(list_p)
    image_url = list_img[5]
    location = get_location()
    # insert_temple_data(temple_name, deity_name, description, image_url, location, latitude, longitude, opening_hours,
    #                   related_festival, ways_to_book, websites, phone_official_site, email_official_site):
        
        
#getting google search results link
def get_google_search_links(query):
    url = f"https://www.google.com/search?q={query}"
    headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'}

    response = requests.get(url, headers=headers)

    if response.status_code == 200:
        soup = BeautifulSoup(response.text, 'html.parser')
        result_divs = soup.find_all('div', class_='tF2Cxc')  # Adjust the class based on the current structure

        links = []
        for result_div in result_divs:
            link_tag = result_div.find('a')
            if link_tag:
                href_value = link_tag.get('href')
                clean_url = href_value.split('&')[0]
                links.append(clean_url)

        return links
    else:
        print(f"Failed to fetch {url}. Status code: {response.status_code}")
        return []

# Start the crawler by providing a seed URL
q = input("Enter Topic name: ")
deity = input("Enter Deity name: ")
links = get_google_search_links(q)
for link in links[:3]:
    if link.startswith("ppp"):
        continue
    else:
        result_web = link
        if result_web not in my_list_web:
            my_list_web.append(result_web)
            print("\nWebsite Url: ",link,"\n")
            crawl(link, 1, link, deity)

#________________________________________________________________________________________________________________________________ 
# Insertion code for the db connection   
def insert_temple_data(temple_name, deity_name, description, image_url, location, latitude, longitude, opening_hours,
                      related_festival, ways_to_book, websites, phone_official_site, email_official_site):
    sql = """
    INSERT INTO temples (
        temple_name, deity_name, description, image_url, location, latitude, longitude, OpeningHours,
        related_festival, ways_to_book, websites, phone_official_site, email_official_site
    ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
    """
    values = (
        temple_name, deity_name, description, image_url, location, latitude, longitude, opening_hours,
        related_festival, ways_to_book, websites, phone_official_site, email_official_site
    )
    cursor.execute(sql, values)
    connection.commit()
# ________________________________________________________________________________________________________________________________

# Location getter functions
# Yet to be implemented? I'm working on it!
def get_location():
    geolocator = MapQuest(api_key="")
    location = geolocator.geocode(address)
    if location:
        return location