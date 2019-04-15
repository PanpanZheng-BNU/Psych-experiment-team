% filename is: ranMagic.m

% create a function
function a = ranMagic(n)
% gathering up all the possibilities
a1 = magic(n);
a2 = rot90(a1,1);
a3 = rot90(a1,2);
a4 = rot90(a1,3);
a5 = flipud(a1);
a6 = fliplr(a1);
a7 = flipud(a2);
a8 = fliplr(a2);

% put these matrixes into a variable
b = {a1,a2,a3,a4,a5,a6,a7,a8};

% use randperm to get a random digit between 1 and 8 to extract the element from b
a = b(randperm(8,1));







