// ignore_for_file: prefer_const_constructors

import 'package:audioplayers/audioplayers.dart';

/// SCORE Variables calculated in function [startGame] in [GamePage]
int score = 0;
int topScore = 0;

/// [Bird] Variables
double yAxis = 0;
double birdWidth = 0.183;
double birdHeight = 0.183;

/// Variables to calculate bird movements function [startGame] in [GamePage]
double time = 0;
double height = 0;
double gravity = -3.9; // How strong the Gravity
double velocity = 2.5; // How strong the jump
double initialHeight = yAxis;
bool gameHasStarted = false;

/// [Barrier] Variables
List<double> barrierX = [2, 3.4];
double barrierWidth = 0.5;
List<List<double>> barrierHeight = [
  // TODO: list of Lists to make different height for the barrier [topHeight,bottomHeight]
  [0.6, 0.4],
  [0.4, 0.6],
];
double barrierMovement = 0.05;

/// Screen Boundary
double screenEnd = -1.9;
double screenStart = 3.5;
/// audio
final player = AudioPlayer();
bool play = true;

const List<String> backgroundAudios = [
  "audio/em_muon_lam_co_giao.mp3",
  "audio/bac_kim_thang.mp3",
  "audio/ba_oi_ba.mp3",
  "audio/vong_tay_ba_me.wav",
  "audio/mot_vong_viet_nam.mp3",
];
Map<int, String> characterImages = {
  1: "assets/pics/pando_4.jpeg",
  2: "assets/pics/papy_mamy.jpeg",
  3: "assets/pics/sunshine_2.jpeg",
  4: "assets/pics/family.jpeg",
  5: "assets/pics/sunshine.jpeg",
  6: "assets/pics/pando_3.jpeg",
  7: "assets/pics/pando_sunshine.jpeg",
  8: "assets/pics/mamy_sunshine.jpeg",
  9: "assets/pics/pando_2.jpeg",
  10: "assets/pics/papy_pando.jpeg",
};
