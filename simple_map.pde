


/*
unfoldingmaps first example
 stable in processing 2.2.1
 Code by 
 Dhamdhawach Horsuwan
 Bangkok , Thailand 
 11/5/2018
 
 */
import processing.core.PApplet;
import de.fhpotsdam.unfolding.mapdisplay.*;
import de.fhpotsdam.unfolding.utils.*;
import de.fhpotsdam.unfolding.marker.*;
import de.fhpotsdam.unfolding.tiles.*;
import de.fhpotsdam.unfolding.interactions.*;
import de.fhpotsdam.unfolding.ui.*;
import de.fhpotsdam.unfolding.*;
import de.fhpotsdam.unfolding.core.*;
import de.fhpotsdam.unfolding.mapdisplay.shaders.*;
import de.fhpotsdam.unfolding.data.*;
import de.fhpotsdam.unfolding.geo.*;
import de.fhpotsdam.unfolding.texture.*;
import de.fhpotsdam.unfolding.events.*;
import de.fhpotsdam.utils.*;
import de.fhpotsdam.unfolding.providers.*;

UnfoldingMap map1;
UnfoldingMap map2;
UnfoldingMap currentMap;
void setup() {
  size(800, 600);
  //map = new UnfoldingMap(this, new Google.GoogleMapProvider());
  map1 = new UnfoldingMap(this, new Microsoft.RoadProvider());
  map2 = new UnfoldingMap(this, new Microsoft.AerialProvider());
  MapUtils.createDefaultEventDispatcher(this, map1,map2);
  currentMap = map1;
}
void draw() {
  if (key == '1') {
    currentMap = map1;
  } else if (key == '2') {
    currentMap = map2;
  }
  currentMap.draw();
}

