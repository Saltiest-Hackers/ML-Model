# Reference for using Hacker News API
--------------------------------------
## Links
---------
#### API repository can be found on Github here: https://github.com/HackerNews/API

#### RAML file can be downloaded from here: https://api.stoplight.io/v1/versions/DaBbQv9WoET786zHn/export/raml.yaml

## Basics
---------

While the official repository for the api does contain complete documentation for the conveinience of those viewing
we have chosen to include a brief eli5 overview of what to expect when using it.

The API itself is pretty straight-forward and responsive the base URL to access it is:
```https://hacker-news.firebaseio.com/v0/```

It is possible to access the entire history of the site from here, and it is also worth noting the API is update in near
real-time.

## Brief Explanation of Calls We Used in the Project
----------------------------------------------------

**Items**: 
```/item/<id>```
All posts, this includes comments, are considered items, a type field
is returned to denote which kind of post a specific return happens to be. Items
behave like a primary key and are incremented.

**Users**: 
```/user/<id>```
ID is Username

**Most Recent Post ID**:
```/maxitem```

More information about other calls can be found at the official repo linked at the beginning of this file.
