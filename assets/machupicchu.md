# What is Machu Picchu?
Machu Picchu is a set of software building bricks that can be used by humanitarian organizations to assemble their own support software in their mission to help the persons-in-need.

Machu Picchu is different from existing software because its architecture is fundamentally decentralized. The data is managed directly by each person-in-need instead of being stored in centralized database. This is achieved by using the blockchain technology.

## What are the pains that Machu Picchu addresses?
The world population is 7.9 billion (October 2021) according to the most recent United Nations estimates elaborated by Worldometer. Also from the UN statistics, the extreme poverty rate is 9.5% in 2020, which means 750 million persons living on less than $1.90 per day.

The helper organisations do a wonderful job, but they are all hampered by the 2 following pains:
* **Lack of reliable data about the target population**: data are proprietary, centralised, organised in silos and mostly inaccurate
* **Excessive financial and prudential overhead**: regulations focus more on anti-money laundering & combating the financing of terrorism than on facilitating assistance to the poor. By consequence the financial overhead cost is very high.

## What is the solution?
The current technologies allow affordable networking, affordable computing and affordable storage. This is bringing progressively the society to decentralised solutions, using cryptography to secure the ownership and the integrity of the data.

The solution proposed by Machu Picchu is as follows:
> _Machu Picchu is a decentralised and trusted social network, where the persons-in-need post their profiles, their activities, their needs, while keeping ownership of their data. The mission of Machu Picchu is that all services to the persons-in-need can use this trusted social network to provide assistance to the persons-in-need via decentralised protocols and smart contracts._
### Illustrative examples:
* The persons-in-need post and maintain their data using SMS on a simple cellular phone, in conjunction with a “sponsor person” who has a smartphone and a tablet and can access the blockchain. The data is secured by use of multi-signature involving the cryptographic keys of the person-in-need and of the sponsor person. This sponsor person can be their chief of village, their trusted NGO field staff, or any trusted person who has a smartphone or a tablet that can do blockchain transactions.
* The credentials of the person (name, signature, location, owned money etc.) are stored on the blockchain. The data are stored on IPFS (a decentralised storage that is backed-up on several “nodes”). The cryptographic digests (the “hash”) of the data are stored on the blockchain, as well as a list of entities allowed to read the data. This keeps the data under ownership of the person-in-need and complies with the GDPR data protection regulation.
* A helper NGO agrees with a person-in-need and the sponsor person to have read access to the data of this person-in-need against a promise of payment of some Cash & Voucher assistance. This promise is materialised as a blockchain token. The higher the quality of the data (accuracy, age of data, match with the purpose) the higher the promised payment. This incentivises the person-in-need and the sponsor person to maintain the data up to date timely.
* In addition to the NGO assistance purpose, among many others, one can consider financial services such as
    * fidelity rewards from agri-food international companies. Nestlé, Lipton, Mars and Pepsi do this to motivate their providers to follow their recommended culture practices;
    * fidelity rewards from international input providers (seeds, fertilisers, pesticides etc.);
    * incentives from governmental agencies: child education, gender equality, health practices, carbon practices etc.;
    * mutual protection against crop loss or international price variations (this is NOT insurance, but a self-help community);
    * informal credit rating data.
    
* The promises of payment are materialised as blockchain tokens to secure their ownership and usage. Therefore, the reporting to donors of the use of the funds is immediate, using the many existing “blockchain explorers”.
* These tokens can be redeemed at the NGOs as cash, as mobile money, or as digital currency once the country has deployed CBDC (Central Bank Digital Currency). They can also be exchanged at a DEX (decentralised exchange) against reputable NGO tokens that the local bank can accept.

Important points such quality of the data, reputation of the sponsor persons and of the village, incentive to operate a data storage node, values of the tokens etc. have technical solutions that have been implemented as commercial blockchain protocols such as Ocean Protocol (data quality), Filecoin (storage incentive) etc. They are not explained further in this White Paper.
## What is the business model of Machu Picchu?
Machu Picchu has a B2B2C business model. It offers services to all organisations that are in direct contact with the persons-in-need world-wide. By adhering to the Machu Picchu community, these organisations have access to quality data to accomplish their missions.

We can compare Machu Picchu with the USA highway Route 66. It is a public service. It has given birth around it to a successful economy composed of hotels, restaurants, garages, industries, doctors, in all cities along Route 66. Nobody owns Route 66; nobody owns Machu Picchu either. With Machu Picchu, “_data is a public service_”.

Machu Picchu’s business model is composed of:
1. a community of operations composed of all organisations providing services to the persons-in-need,
2. a community of software developers for good, that is open source and collaborative (as cooperative as Linux, Wikipedia, Open Street Map etc.),
3. a commercial company that provides specific training, consultancy, and development services to the operations community.

Software-wise, Machu Picchu is a LEGO box of software components. Each organisation picks what suits best their field needs and develop the complements. They are strongly advised (but not obliged) to share in open source their developments. It’s the MIT standard license.

## Where is Machu Picchu in February 2022?
In February 2022, only the community of software developers exists. These developers gather for a hackathon with the promise of winning eventually a prize. Together they implement a Proof of Concept (PoC) of one specific function in Machu Picchu and leave when the hackathon is done, while staying in touch. One permanent developer is the author of this White Paper. The following PoC’s have been implemented, February 2022:
![Machu Picchu Architecture](resource:assets/images/architecture.png)
### Existing Machu Picchu Proof-of-Concepts
* the PoC to create and read on the blockchain the data of a person-in-need (project Pepito),
* the PoC to store on an IPFS node the data, but this is not integrated with the above,
* the PoC of a low cost IPFS node, on Raspberry Pi,
* the PoC to monitor crop vegetation status by satellite at a low (zero) cost (this app),
* the PoC to combine the use of SMS and desktop app to do multi-signature writing on the blockchain.

## What is Machu Picchu roadmap and team?
Because Machu Picchu integrates many existing and proven technologies, but loosely linked, it is necessary to make distinct PoCs while keeping in mind their use in the final Machu Picchu system.

Because Machu Picchu has no funding at this moment, each PoC is done in a hackathon, where it is possible to find contributors who are interesting in competing to win a prize. The others are done on a volunteering basis, when possible. Machu Picchu has won several prizes in the 2 hackathons it participated until now in 2020 and 2021.

The plan is to make a field prototype when Machu Picchu interests one helper organisation with a significant number of persons-in-need to assist and with funding to develop, deploy and operate. Then we can build a project team from the developers of past hackathons. They know Machu Picchu. We’ll keep metrics of the development, of the deployment and of the lessons learned in field operations.

## Miscellaneous: why the name Machu Picchu?
Machu Picchu was a 15th century citadel of the Inca empire.

Remember how centralised was the Inca empire? — _it was very centralised_

Remember what happened to it? — _it was conquered by only 168 men, 27 horses and one cannon_.

Our Machu Picchu of the 21st century is the exact opposite. It lets the people take care of themselves, in community. **Join Machu Picchu**.