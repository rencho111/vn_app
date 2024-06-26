const List<double> Translate =[
  0, 0, 0, 0, 0,
  0, 0, 0, 0, 0,
  0, 0, 1, 0, 0,
  0, 0, 0, 1, 0,
];
const List<double> Identity =[
0.2126, 0.7152, 0.0722, 0, 0,
0.2126, 0.7152, 0.0722, 0, 0,
0.2126, 0.7152, 0.0722, 0, 0,
0,      0,      0,      1, 0,
];
const List<double> Grayscale =[
0.393, 0.769, 0.189, 0, 0,
0.349, 0.686, 0.168, 0, 0,
0.272, 0.534, 0.131, 0, 0,
0,     0,     0,     1, 0,
];
const List<double> Invert =[
-1,  0,  0, 0, 255,
0, -1,  0, 0, 255,
0,  0, -1, 0, 255,
0,  0,  0, 1,   0,
];
const List<double> Zero =[
1, 0, 0, 0, 0,
0, 0, 0, 0, 0,
0, 0, 0, 0, 0,
0, 0, 0, 1, 0,
];
const List<double> Scaling =[
0, 0, 0, 0, 0,
0, 1, 0, 0, 0,
0, 0, 0, 0, 0,
0, 0, 0, 1, 0,
];

const List<double> Shear =[
1, 0, 0, 0, 50,
0, 1, 0, 0, 50,
0, 0, 1, 0, 50,
0, 0, 0, 1, 0,
];
const List<double> Blur =[
1, 0, 0, 0, -50,
0, 1, 0, 0, -50,
0, 0, 1, 0, -50,
0, 0, 0, 1,   0,
];
const List<double> Edge =[
2, 0, 0, 0, -255,
0, 2, 0, 0, -255,
0, 0, 2, 0, -255,
0, 0, 0, 1,     0,
];
const List<double> Indigo =[
0.5, 0,   0,   0,   0,
0,   0.5, 0,   0,   0,
0,   0,   0.5, 0,   0,
0,   0,   0,   1,   0,
];
const List<double> Sterling =[
1.5, 0,   0,   0,   0,
0,   1.5, 0,   0,   0,
0,   0,   1.5, 0,   0,
0,   0,   0,   1,   0,
];
const List<double> Orion =[
0.5, 0,   0,   0,   0,
0,   0.5, 0,   0,   0,
0,   0,   0.5, 0,   0,
0,   0,   0,   1,   0,
];
const List<double> Griffin
=[
0.866, -0.866, 0, 0, 0,
0.5,    0.5,   0, 0, 0,
-0.866, -0.866, 1, 0, 0,
0,      0,     0, 1, 0,
];
const List<double> Jasper =[
0.0625, 0.125, 0.0625, 0, 0,
0.125,  0.25,  0.125,  0, 0,
0.0625, 0.125, 0.0625, 0, 0,
0,       0,     0,      1, 0,
];
const List<double> Sylvan =[
0, -1, 0, 0, 0,
-1, 5, -1, 0, 0,
0, -1, 0, 0, 0,
0, 0, 0, 1, 0,
];
const List<double> Rowan =[
-2, -1, 0, 0, 0,
-1,  1,  1, 0, 0,
0,   1,  2, 0, 0,
0,   0,  0, 1, 0,
];