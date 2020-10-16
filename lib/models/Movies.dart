class Movie {
  String ID, tittle;
  int year_release;
  List actors = [];
  List genre = [];

  Movie(this.ID, this.tittle, this.year_release, this.actors, this.genre);

  // Converting json to custom obj movie
  Movie.fromJson(Map<String, dynamic> json){
    tittle = json['tittle'];
    year_release = json['year_release'];
    actors = json['actors'];
    genre = json['genre'];
  }

  Map<String, dynamic> toJson() => {
    'ID': ID,
    'tittle': tittle,
    'year_relese': year_release,
    'actors': actors,
    'genre': genre
  };
}

var movieController = MovieController();

class MovieController {

  Future<List<Movie>> getall() async {

  }

  Future<Movie> getById() async {

  }

  Future<Movie> getByTittle() async {

  }

  Future<Movie> favorite(movie) async {

  }

  Future<Movie> remove(movie) async {

  }

}