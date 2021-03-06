part of 'atom.dart';

class ImageMovieBig extends StatelessWidget {
  final width;

  const ImageMovieBig(this.movie, {Key key, this.width}) : super(key: key);

  @required
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: 170,
      child: ClipRRect(
        borderRadius: new BorderRadius.all(Radius.circular(25)),
        child: new Image.network(
          (movie != null)
              ? "https://image.tmdb.org/t/p/w500/" + movie.backdropPath
              : AssetImage("assets/empty.png"),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
