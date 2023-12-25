import requests
from bs4 import BeautifulSoup
import re
from urllib.parse import urljoin
from urllib.error import URLError
from urllib.robotparser import RobotFileParser

import mysql.connector
from geopy.geocoders import Nominatim

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
i = 0

# ________________________________________________________________________________________________________________________________
# Insertion code for the db connection


def insert_temple_data(temple_name, deity_name, description, image_url, location, latitude, longitude, opening_hours,
                       related_festival, ways_to_book, websites, phone_official_site, email_official_site):
    # Check if the record already exists
    check_sql = "SELECT COUNT(*) FROM temples WHERE temple_name = %s"
    cursor.execute(check_sql, (temple_name,))
    count = cursor.fetchone()[0]

    if count == 0:
        # Record does not exist, perform the insertion
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
    else:
        print(f"Record for {temple_name} already exists. Skipping insertion.")

# ________________________________________________________________________________________________________________________________

# Location getter functions
# Yet to be implemented? I'm using my API_KEY!


def get_location_details(address):
    base_url = "https://maps.googleapis.com/maps/api/geocode/json"
    places_base_url = "https://maps.googleapis.com/maps/api/place/details/json"
    api_key = "AIzaSyDVVrTpVbd6OBebEdy6kE_V0RyQIPqDBhI"
    # Step 1: Get coordinates (latitude and longitude) using Geocoding API
    params = {'address': address, 'key': api_key}
    response = requests.get(base_url, params=params)

    if response.status_code == 200:
        data = response.json()

        # Check if the Geocoding API request was successful
        if data.get('status') == 'OK':
            result = data['results'][0]

            # Extract latitude, longitude, and address from the results
            location = result['geometry']['location']
            latitude = location['lat']
            longitude = location['lng']
            formatted_address = result['formatted_address']

            # Step 2: Get place details using Places API
            places_params = {
                'place_id': result['place_id'],
                'key': api_key,
                'fields': 'name,formatted_phone_number,international_phone_number,website,opening_hours'
            }

            # Send a GET request to the Google Places API
            places_response = requests.get(
                places_base_url, params=places_params)
            places_data = places_response.json()

            # Check if the Places API request was successful
            if places_response.status_code == 200 and places_data.get('status') == 'OK':
                result = places_data.get('result', {})
                phone_number = result.get(
                    'formatted_phone_number', 'Phone number not available')
                international_phone_number = result.get(
                    'international_phone_number', 'International phone number not available')
                website = result.get('website', 'Website not available')
                email = result.get('email', 'Email not available')
                opening_hours_info = result.get('opening_hours', {})
                if opening_hours_info and 'periods' in opening_hours_info:
                    # Extract opening hours from periods if available
                    periods = opening_hours_info['periods']
                    opening_hours = []

                    for period in periods:
                        day = period['open']['day']
                        open_time = period['open']['time']
                        close_time = period['close']['time']

                        day_name = [
                            'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'
                        ][day]

                        hours = f"{day_name}\n{open_time}–{close_time}"

                        opening_hours.append(hours)

                    opening_hours = '\n\n'.join(opening_hours)
                else:
                    opening_hours = 'Opening hours not available'
                    
                return {
                    'formatted_address': formatted_address,
                    'latitude': latitude,
                    'longitude': longitude,
                    'opening_hours': opening_hours,
                    'phone_number': phone_number +' ,'+international_phone_number,
                    'website': website,
                    'email': email
                }
            else:
                print("Error: Unable to fetch details from Google Places API.")
    else:
        print(
            f"Error: Unable to fetch data from Geocoding API. Status Code: {response.status_code}")

    return None


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


def crawl(url, limit, li, deity_name, address, festival, temple_name):
    flag = 0
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
    # print("Title:", soup.title.string)

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
            print("Image URL: ", src)

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
                    crawl(href, limit - 1, li, deity_name,
                          address, festival, temple_name)
                    if flag % 6 == 0:
                        print("Reference Links:", href)
                    flag = flag + 1

    # Customized code by Ashok
    # Data to MySQL
    temple_name = temple_name
    # deity_name
    description = "\n".join(list_p)
    image_url = list_img[5]
    locationResults = get_location_details(temple_name+' '+address)
    location = locationResults['formatted_address'] if locationResults and locationResults['formatted_address'] else "Empty address"
    latitude = locationResults['latitude'] if locationResults and locationResults['latitude'] else "Empty Latitude"
    longitude = locationResults['longitude'] if locationResults and locationResults['longitude'] else "Empty Longitude"
    opening_hours = locationResults['opening_hours'] if locationResults and locationResults['opening_hours'] else "Empty Hours"
    phone_official_site = locationResults['phone_number'] if locationResults and locationResults['phone_number'] else "Empty Phone"
    email_official_site = locationResults['email'] if locationResults and locationResults['email'] else "Empty Email"
    related_festival = festival
    ways_to_book = 'To Be Implemented'
    websites = li

    insert_temple_data(temple_name, deity_name, description, image_url, location, latitude, longitude, opening_hours,
                       related_festival, ways_to_book, websites, phone_official_site, email_official_site)


# getting google search results link
def get_google_search_links(query):
    url = f"https://www.google.com/search?q={query}"
    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'}

    response = requests.get(url, headers=headers)

    if response.status_code == 200:
        soup = BeautifulSoup(response.text, 'html.parser')
        # Adjust the class based on the current structure
        result_divs = soup.find_all('div', class_='tF2Cxc')

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
address = input("Enter Address: ")
festival = input("Enter Festival: ")
links = get_google_search_links(q)
for link in links[:3]:
    if link.startswith("ppp"):
        continue
    else:
        result_web = link
        if result_web not in my_list_web:
            my_list_web.append(result_web)
            print("\nWebsite Url: ", link, "\n")
            crawl(link, 1, link, deity, address, festival, q)
