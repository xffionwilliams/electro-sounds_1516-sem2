import codeanticode.syphon.SyphonServer; 

SyphonServer server; 
HashMap<String, IScene> scenes;
String scene = "squared";
boolean isRenderBuffer;


void settings() {
  size(1280,720, P3D);
  PJOGL.profile=1;
}


void setup() {
  server = new SyphonServer(this, "Processing Syphon");
  size(1280, 720, P3D);
  smooth();
  noCursor();



  initBuffer();

  scenes = new HashMap();
  scenes.put("squared", new Squared());
  scenes.put("triangle", new Triangle());
  scenes.put("scribble", new Scribble());
  scenes.put("swimmers", new Swimmers());
  scenes.put("lines", new Lines());
  scenes.put("bounce", new Bounce());

  for (IScene scene : scenes.values()) {
    scene.setup();
  }
}


void draw() {
  pushMatrix();
  scenes.get(scene).draw();
  popMatrix();
  if (isRenderBuffer) {
    renderBuffer();
  }

  {

    server.sendScreen();
  }
}

void keyPressed() {

  // general key pressed events to change scenes
  switch(key) {
    case('1'):
    scene = "squared";
    break;
    case('2'):
    scene = "triangle";
    break;
    case('3'):
    scene = "swimmers";
    break;
    case('4'):
    scene = "triangle";
    break;
    case('5'):
    scene = "scribble";
    break;
    case('b'):
    isRenderBuffer = !isRenderBuffer;
    break;
    case('6'):
    scene = "lines";
    break;
    case('7'):
    scene = "bounce";
    break;
  }

  // keep this line to forward key pressed events to a scene
  scenes.get(scene).keyPressed();
}
