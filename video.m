a = imread('face.jpg');
imshow(a);

detector = vision.CascadeObjectDetector('Mouth');
detector.MergeThreshold = 100;
bbox = step(detector,a);
out = insertObjectAnnotation(a,'rectangle',bbox, 'Mouth');
imshow(out);