import 'dart:async';
import 'dart:io';
// import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import '../button.dart';
// import 'package:peduly/main.dart';

class ClockIn extends StatefulWidget {
  const ClockIn({super.key});

  @override
  _ClockInState createState() => _ClockInState();
}

class _ClockInState extends State<ClockIn> {
  // final _key = GlobalKey<FormState>();
  Position? _position;
  String? _address;
  String jarak = "", catatan = "", waktu = "";
  bool titikKoma = true;
  Timer? timer;
  final _controllerCatatan = TextEditingController();
  double latkantor = -7.2572758, longkantor = 112.7364744;
  late double lat;
  late double long;
  final Set<Marker> _marker = {};
  void _getCurrentLocation() async {
    Position position = await _determinePosition();
    String address = await _getAddressFormLatLongOnline(position);
    setState(() {
      _position = position;
      lat = position.latitude;
      long = position.longitude;
      _address = address;
    });
  }

  Future<Position> _determinePosition() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    return await Geolocator.getCurrentPosition();
  }

  Future<String> _getAddressFormLatLongOnline(Position param) async {
    try {
      List<Placemark> placemarkList = await placemarkFromCoordinates(
        param.latitude,
        param.longitude,
        localeIdentifier: "id",
      );
      Placemark place = placemarkList[0];
      return _address =
          "${place.country} ${place.postalCode} ${place.administrativeArea} ${place.subAdministrativeArea} ${place.locality} ${place.subLocality} ${place.thoroughfare} ${place.subThoroughfare} ${place.name}";
    } catch (e) {
      return "Log error$e";
    }
  }

  void marker() async {
    Position pos = await Geolocator.getCurrentPosition();
    setState(() {
      _marker.add(
        Marker(
          markerId: const MarkerId("Lokasi saat ini"),
          position: LatLng(pos.latitude, pos.longitude),
          infoWindow: InfoWindow(
            title: "Posisi Anda Sekarang",
            snippet: _address,
          ),
        ),
      );
    });
    setState(() {
      jarak = Geolocator.distanceBetween(
              latkantor, longkantor, pos.latitude, pos.longitude)
          .floor()
          .toString();
    });
  }

  void cekJarak() {
    int.parse(jarak) < 99
        ? AlertDialog(
            title: const Text('Clock In gagal'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('Jarak anda dengan titik kordinat adalah $jarak meter'),
                  const Text('Anda berada diluar radius yang telah ditetapkan'),
                  const Text('Harap menuju ke lokasi yang telah ditetapkan!'),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Oke'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          )
        : null;
  }

  File? image;
  _getFromCamera() async {
    final ImagePicker picker = ImagePicker();
    final XFile? imagePicked =
        await picker.pickImage(source: ImageSource.camera);
    setState(() {
      image = File(imagePicked!.path);
    });
  }

  @override
  void initState() {
    _getCurrentLocation();
    marker();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        titikKoma = !titikKoma;
        titikKoma
            ? waktu =
                "${DateTime.now().hour.toString().padLeft(2, "0")}:${DateTime.now().minute.toString().padLeft(2, "0")}"
            : waktu =
                "${DateTime.now().hour.toString().padLeft(2, "0")} ${DateTime.now().minute.toString().padLeft(2, "0")}";
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final button = KButton(); //inisialisasi objek untuk kelas button
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios_new)),
        centerTitle: true,
        title: const Text(
          'Absensi',
          style: TextStyle(fontFamily: 'Inter'),
        ),
        actions: [
          IconButton(
              tooltip: 'Ambil Gambar',
              onPressed: () => _getFromCamera(),
              icon: const Icon(Icons.camera_alt_outlined))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.2,
            child: _position != null
                ? GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: LatLng(lat, long),
                      zoom: 15,
                    ),
                    markers: _marker,
                  )
                : null,
          ),
          Container(
            width: lebar,
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  color: Colors.transparent,
                  width: lebar,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: "Catatan",
                    ),
                    controller: _controllerCatatan,
                  ),
                ),
                const SizedBox(height: 10),
                Text("Jarak anda dengan kantor $jarak meter"),
                const SizedBox(height: 10),
                image != null
                    ? Container(
                        width: lebar,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Container(
                              color: Colors.transparent,
                              width: 100,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.file(image!)),
                            ),
                          ],
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15),
        child: button.kElevetedButton(
          "Clock In",
          () {
            cekJarak();
            setState(() {
              catatan = _controllerCatatan.text;
            });
          },
        ),
      ),

      // bottomSheet: Container(
      //   padding: const EdgeInsets.all(20),
      //   color: Colors.white60,
      //   width: lebar,
      //   height: 100,
      //   child: ElevatedButton(
      //     style: ElevatedButton.styleFrom(
      //         backgroundColor: KColorTheme.warnaUtama,
      //         foregroundColor: Colors.black,
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(15),
      //         )),
      //     onPressed: () {
      //       cekJarak();
      //       setState(() {
      //         catatan = _controllerCatatan.text;
      //       });
      //     },
      //     child: const Text(
      //       "Clock In",
      //       style: TextStyle(
      //           color: Colors.white, fontSize: 17, fontFamily: 'Inter'),
      //     ),
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   //todo 6 use function
      //   onPressed: () {
      //     _getFromCamera();
      //   },
      //   tooltip: 'Get Lokasi',
      //   child: const Icon(Icons.location_on_outlined),
      // ),
    );
  }
}
