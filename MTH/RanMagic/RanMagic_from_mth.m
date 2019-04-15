
function Y = RanMagic_from_mth(n)
      A = magic(n);
      B = A';
      C = rot90(A);
      D = rot90(A,2);
      E = rot90(A,3);
      F = rot90(B);
      G = rot90(B,2);
      H = rot90(B,3);
      I=[A B C D E F G H];
      a=randi(8);
      Y=[I(:,3*a-2) I(:,3*a-1) I(:,3*a)];  
end

