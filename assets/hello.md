# How to use Steve Observer
## Introduction
### The power of live experience
In 1991 I met a group of Amish people. The head of the group was a man who could forecast quite accurately the weather a few days ahead, although he had no meteo academic background, simply a long observation experience as a farmer. His friends even say that he could predict pretty well the yield of the coming season.

This example convinced me deeply that if farmers were given simple tools to observe satellite images, they can build progressively their own knowledge. And if they can share this knowledge among them, together they can anticipate on potential weather changes to better protect their families.
### The resources of 21th century technologies
* **Google Earth Engine** and **EO-Browser** bring free and up-to-date satellite images as well as powerful image processing tools.
* **Flutter** and **React Native** support making mobile apps for Android and iOS.
* **Blockchain** tools can be used to share in a decentralised and trusted manner everyone's analysis, and build up individual reputation, as in the Amish community I knew.

### Introducing the free _Steve Observer_ mobile app
With this **free** mobile app _Steve Observer_, anyone can observe by satellite the health of vegetation everywhere in the world. No registration required, no advertisement, nothing to pay: a tribute to _EO-Browser_ and _Earth Engine_ of which this app is a mere wrapper. 

This app is named in the honor of *Steve Birky*, my brother-in-law, who spent his life helping the people in need.
### How to use this app
This app is meant to be used as you'd use any weather app: open it when you wake up, check the area around you, and forget it for the rest of the day. Progressively you'll build your own expertise in assessing vegetation health and forecast its biomass production.
## This is an example on an iPad mini: 
![screenshot on ipad mini](resource:assets/images/iPad_mini_6.jpg)

## What makes this app special?
* This app is focused on easy **observation of vegetation**, disregarding any other uses (land survey, statistics, real-time monitoring) in other domains (geology, urbanism, bathymetry etc.).
* The analysis is done by the user, not by the machine.
* This beta mobile app is simply a wrapper around 2 major Earth Observation tools that are free on Internet: **EO Browser** and **Earth Engine**.
* The _About_ section will be split into several pages in the future, instead of being monolithic as it is now.

## Observing vegetation
When observing weather we used to consider factors such as temperature, wind direction, wind speed, clouds, rainfall, sunset colors etc. When observing vegetation by satellite we can view the following parameters:
* the chlorophyll content of the leaves, in jargon the _NDVI_
* the moisture content of the leaves, in the jargon the _NDMI_, or _Gao-NDWI_
* the infrared color range, in jargon the _agriculture bands_
* the physical properties of the plants (biomass and height), in jargon the _SAR C-band VV-VH backscatter_

The first 3 factors are displayed in **EO Browser**. Using **Earth Engine** we'll calculate and display their variation from the average values of the past 4 years (the "_anomalies_").
## Navigation buttons
At the bottom of the app screen, in the dark green bar, there are 4 tabs:
* _About_: introduction (this text) and a quick training on vegetation observation by satellite,
* _EO Browser_: day-by-day observation,
* _Earth Engine_: observation of the variation from the 4-year average (the anomaly),
* _Machu Picchu_: the big picture about why this app exists.

A fifth tab will be added later, for SAR radar observation.

## Tab _EO Browser_
This tab is a wrapper aound _EO Browser_ that is a free web application _from a wonderful Slovenian team named Sinergise_. It is very rich in features: vegetation, geology, urban planning, bathymetry, floods, rain etc. Here we focus on only observing vegetation at a given moment.

Later, this tab will have a dropdown to select directly viewing chlorophyll in the leaves, leaves moisture or agricultural bands. In this beta version, you need to select them using the interface of the web app, which is not very difficult.

## Tab _Earth Engine_
This tab is a wrapper around a web app that uses the free _Earth Engine_ libraries, data and computing power provided by _Google Cloud_. The current version is still a crude placeholder for a version to come.
* By default the current app shows the Mekong delta in Vietnam. In a future version it will show by default the area around your present position.
* Click on "Search places" and type a location name. The app will move there, wherever in the world.
* Click the image and drag to move the area that is displayed.
* The image is divided into 2 panes; click and drag the icon "< >" to change how the screen estate is shared between the 2:
    * The left pane shows the satellite agriculture image on a desired date.
    * The right pane shows the vegetation health compared to the 4-year average (the anomaly).
* On top left you have the zoom button. Click on "+" to zoom in. Click on "-" to zoom out.

## Tab _SAR Radar_
To be done later.

## Tab _Machu Picchu_
The current version only contains a text explanation. 

In a later version, it will host a blockchain app allowing any head of a community to publish the profiles of persons of this community, a kind of LinkedIn profiles 🙂.
* Humanitarian organizations can reach the data to fine-tune their assistance programs to the persons-in-need, based on their profiles.
* The blockchain app can later support self-help groups in full transparency and at a low operating cost.
* The persons-in-need can mutually support one another by means of proven Decentralized Finance (DeFi) protocols

## Feedback
Your feedback is welcome on LinkedIn. My profile page is [kvutien](https://www.linkedin.com/in/kvutien/)