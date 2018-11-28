// Written and deployed by Wyatt Phillips
// Email: phillipsw1@wit.edu

function solveEuler(equ, x0, y0, x1, steps) {
  // Create equation parser
  const parse = math.parse(equ);
  const make = parse.compile();

  // Get step size h
  var h = (x1-x0) / steps;

  // Calculate and run Euler's Method
  var y1 = y0;
  for (var i = 0; i < steps; i++) {
    let scope = {
      x: x0+(h*i),
      y: y1
    }
    y1 = y1 + (h * make.eval(scope));
  }

  // Print Result
  document.getElementById('solution').value = y1;
}
