import processing.sound.*;

AudioIn micro;
Amplitude amp;

void setup() {
  size(1280,720);
  noStroke();
  micro = new AudioIn(this, 0);
  micro.start();
  amp = new Amplitude(this);
  amp.input(micro);
}

void draw() {
  frameRate(2 + (amp.analyze() * 2550));
  background(0);
  fill(255);
  rect(0, random(-20,850), 128, 7 + (amp.analyze() * 2550));
  rect(128, random(-20,850), 128, 7 + (amp.analyze() * 2550));
  rect(256, random(-20,850), 128, 7 + (amp.analyze() * 2550));
  rect(384, random(-20,850), 128, 7 + (amp.analyze() * 2550));
  rect(512, random(-20,850), 128, 7 + (amp.analyze() * 2550));
  rect(640, random(-20,850), 128, 7 + (amp.analyze() * 2550));
  rect(768, random(-20,850), 128, 7 + (amp.analyze() * 2550));
  rect(896, random(-20,850), 128, 7 + (amp.analyze() * 2550));
  rect(1024, random(-20,850), 128, 7 + (amp.analyze() * 2550));
  rect(1152, random(-20,850), 128, 7 + (amp.analyze() * 2550));
}