%filename is::superMagicFunction.m

function Z = superMagic
    A = magic(3);
    B = rot90(A,1);
    C = rot90(A,2);
    D = rot90(A,3);
    E = fliplr(A);
    F = flipud(A);
    G = A';
    H = C';
    MM = [A B C D E F G H];
    num = randi(8);
    Z = [MM(:,3*num) MM(:,3*num-1) MM(:,3*num-2)];
end
    
    
    