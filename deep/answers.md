# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.

## Random Partitioning
Q. Will the observations likely be evenly distributed across all boats, even if AquaByte most commonly collects observations between midnight and 1am? Why or why not?

A. The observations will be evenly distributed, because its random when an observation occurs they have equal chances of to any of the boats, with a small number of data there is probability of not being fully evenly distributed but with the growth of the data this probability will be reduce to basically zero.

Q. Suppose a researcher wants to query for all observations between midnight and 1am. On how many of the boats will they need to run the query?

A. On all of the boats, like we previously said the data is evenly distributed which means he needs to query all of the boats to make sure he gets the full data, also because it's randomly distributed the researcher doesn't know where the data between midnight and 1am went.

## Partitioning by Hour

Q. Will the observations likely be evenly distributed across all boats, even if AquaByte most commonly collects observations between midnight and 1am? Why or why not?

A. No, the data will be more concentrated on the boat that gets the data where most common hours observations are, so if most commonly collects observations are between midnight and 1am the boat in wich the hours range embrace those hours will get most of the data.

Q. Suppose a researcher wants to query for all observations between midnight and 1am. On how many of the boats will they need to run the query?

A. The researcher needs only to query one boat, the one that covers the hours between midnight and 1am. Because we partitioned the data between the boats by the hours we know for sure that the full data is in one and only one of the boats.

## Partitioning by Hash Value

Q. Will the observations likely be evenly distributed across all boats, even if AquaByte most commonly collects observations between midnight and 1am? Why or why not?

A. Just like the answer when we randomly partitioned the data. There is an equal chance of a single observation when assigned an hash value to be in range of one of the three boats, therefore the data will be evenly distributed.

Q. Suppose a researcher wants to query for all observations between midnight and 1am. On how many of the boats will they need to run the query?

A. Because the range of all observations in this specific query can be assigned to any of our range of hash values in the three boats, we can't query one single boat. Because we couldn't be sure that the full data for between midnight and 1am would be in only one boat.

Q. Suppose a researcher wants to query for a specific observation, which occurred at exactly 2023-11-01 00:00:01.020. On how many of the boats will they need to run the query?

A. In only one boat, because know we have the specific timestamp we can know convert it ourselfs to hash and know for on which boat the data would be in.
