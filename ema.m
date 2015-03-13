load Project2Data

crudeOilData = project2Data(:,11);
copperData = project2Data(:,21);
aluminumData = project2Data(:,12);
cottonData = project2Data(:,22);
cocoaData = project2Data(:,17);

N = 10;
k = 2 / (N + 1);
cottonEnd = length(cottonData); % just for example...

simpleAvg = sum(cottonData(1:N))/N;

emaVector = zeros(1,cottonEnd-N);

start = N+1;
emaVector(1) = simpleAvg;
for i = start:cottonEnd
    prev = emaVector(i-N); % previous average
    emaCurrent = ((cottonData(i) - prev) .* k) + prev;
    emaVector(i-N+1) = emaCurrent; 
end

x = 1:length(emaVector);
coeffs = polyfit(x, emaVector, 10);
p = polyval(coeffs, x);
%yDesire = polyval();

figure(1);
plot(x, p, 'r', 1:length(cottonData), cottonData, 'b');
xlabel('month');
ylabel('prices');
title('Cotton Data and EMA');
legend( 'EMA', 'Cotton Data' );
% x = N:length(cottonData);
% length(x);
% length(emaVector);
