/* Jimmy McGuigan
 * Traveling Salesman
 */
int numCities = 10;
PVector[] cities = new PVector[numCities];
PVector[] bestRoute;
float bestDistance = Float.MAX_VALUE;

float moveSpeed = 0.02; 
float t = 0; 
int currentIndex = 0; 

void setup() {
  size(800, 800);
  noLoop();
  for (int i = 0; i < numCities; i++) {
    cities[i] = new PVector(random(width), random(height));
  }
  bestRoute = new PVector[numCities];
  findBestRoute();
  
  loop();
}

void draw() {
  background(255);
  stroke(0);
  fill(0);
  for (PVector city : cities) {
    ellipse(city.x, city.y, 10, 10);
  }
  
  if (bestRoute != null) {
    stroke(255, 0, 0);
    noFill();
    beginShape();
    for (PVector city : bestRoute) {
      vertex(city.x, city.y);
    }
    endShape(CLOSE);

    if (t < 1) {
      PVector currentCity = bestRoute[currentIndex];
      PVector nextCity = bestRoute[(currentIndex + 1) % bestRoute.length];
      PVector position = PVector.lerp(currentCity, nextCity, t);
      fill(0, 0, 255);
      ellipse(position.x, position.y, 15, 15);
      t += moveSpeed;


      if (t >= 1) {
        t = 0;
        currentIndex = (currentIndex + 1) % bestRoute.length;
      }
    }
  }
}

void findBestRoute() {
  ArrayList<PVector[]> routes = new ArrayList<PVector[]>();
  permute(cities, 0, routes);
  for (PVector[] route : routes) {
    float distance = calculateDistance(route);
    if (distance < bestDistance) {
      bestDistance = distance;
      bestRoute = route;
    }
  }
}

void permute(PVector[] arr, int l, ArrayList<PVector[]> routes) {
  if (l == arr.length - 1) {
    routes.add(arr.clone());
  } else {
    for (int i = l; i < arr.length; i++) {
      swap(arr, l, i);
      permute(arr, l + 1, routes);
      swap(arr, l, i);
    }
  }
}

void swap(PVector[] arr, int i, int j) {
  PVector temp = arr[i];
  arr[i] = arr[j];
  arr[j] = temp;
}

float calculateDistance(PVector[] route) {
  float totalDistance = 0;
  for (int i = 0; i < route.length; i++) {
    PVector from = route[i];
    PVector to = route[(i + 1) % route.length];
    totalDistance += PVector.dist(from, to);
  }
  return totalDistance;
}
