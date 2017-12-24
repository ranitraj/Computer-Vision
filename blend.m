% Blend two images
function output = blend(a, b, x)
    % TODO: Your code here; finally assign: output = <something>;
    output= x * a + (1 - x) * b;
endfunction

% Test code:
car = imread('car.jpg');
water = imread('water.jpg');

result = blend(car, water, 0.75);
imshow(result); % note: will result in an error if blend() returns empty or incorrect value
