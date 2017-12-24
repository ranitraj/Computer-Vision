#Generate Gaussian Noise
noise = randn();
disp(noise);

#Gaussian Noise in Rows and Columns
noise_m = randn([1 5]);
disp(noise_m);

#n in randn is a Probability Distribution in which most of the randomly generated values are close to 0.

#Proof
noise_proof = randn([1 100]);
#using Histogram 
#n is count of the values and x is the hist centres
#hist takes 2 parameters, input value and bin centers(optional)
[n,x] = hist(noise_proof,[-3 -2 -1 0 1 2 3]);
disp([x,n]);
#plot hist centres on x-axis and count of values on y-axis
plot(x,n);


#To generate uniformly distributed noise
noise_r = rand([1 100]);
[n,x] = hist(noise_r,linespace(-3,3,7);
disp([x,n]);
plot(x,n);

#To generate integer noise
noise_i = randi([1 100]);
[n,x] = hist(noise_i,linespace(-3,3,7);
disp([x,n]);
plot(x,n);