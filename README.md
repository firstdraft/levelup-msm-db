# README

Has an API that returns the records in a table.

For example:

visiting `/table/movies.json`

returns:

```json
[
  {
    "id": 1,
    "title": "The Shawshank Redemption",
    "year": 1994,
    "duration": 142,
    "description": "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.",
    "image": "http://ia.media-imdb.com/images/M/MV5BMTc3NjM4MTY3MV5BMl5BanBnXkFtZTcwODk4Mzg3OA@@._V1_SY317_CR4,0,214,317_.jpg",
    "director_id": 1,
    "created_at": "2023-01-24T21:43:48.123Z",
    "updated_at": "2023-01-24T21:43:48.123Z"
  },
  ...
]
```

You can exclude which columns are returned by adding a query string (exclude) with an Array of values:

Visiting `/table/movies.json?exclude[]=director_id&exclude[]=year`

Returns:

```json
[
  {
    "id": 1,
    "title": "The Shawshank Redemption",
    "duration": 142,
    "description": "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.",
    "image": "http://ia.media-imdb.com/images/M/MV5BMTc3NjM4MTY3MV5BMl5BanBnXkFtZTcwODk4Mzg3OA@@._V1_SY317_CR4,0,214,317_.jpg",
    "created_at": "2023-01-24T21:43:48.123Z",
    "updated_at": "2023-01-24T21:43:48.123Z"
  },
  ...
]
```
