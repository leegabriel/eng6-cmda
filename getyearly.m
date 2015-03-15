function [yearlydata]=getyearly(cell)
i=3; j=14; % 12 month interval for any comod cell except those that start early
arr = []; % empty array
while (i<=411 && j<=422) %max interval at the interval of 12months for 2014
 thisYearAvg=getavg(cell(i:j,2)); % plugs in intervals, used funciton to get averages of each interval
    arr = [arr, thisYearAvg]; % puts data in array
    i=i+12; % increase these by 12 to start at the next year interval
    j=j+12;
end
arr2=getavg(cell(423:424,2)); % these are the only two months in 2015
arr=[arr,arr2]; % took the average of 2015 and added it to the main array
yearlydata=arr; % now we have averages for all years in a commodity in a 1x35 array (35 yrs)


% yearlydata=[a1,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14]

