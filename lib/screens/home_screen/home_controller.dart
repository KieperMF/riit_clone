import 'package:get/get.dart';

class HomeController extends GetxController {
  List<String> modalities = <String>[
    'Todos',
    'Radicais e Aventura',
    'Danças',
    'Esportes de Praia',
    'Esporte individual',
    'Esporte coletivo',
    'Treinos Funcionais',
    'Artes marciais',
    'Futebol'
  ].obs;


  List sports = [
  {
    "name": "Boxe",
    "type1": "Esporte individual",
    "type2": "Todos",
    "image": "lib/assets/boxe.jpg"
  },
  {
    "name": "Frescobol",
    "type1": "Esportes de Praia",
    "type2": "Todos",
    "image": "lib/assets/frescobol.jpg"
  },
  {
    "name": "Musculação",
    "type1": "Esporte individual",
    "type2": "Todos",
    "image": "lib/assets/musculacao.jpg"
  },
  {
    "name": "Pilates",
    "type1": "Treinos Funcionais",
    "type2": "Todos",
    "image": "lib/assets/pilates.jpg"
  },
].obs;
}
