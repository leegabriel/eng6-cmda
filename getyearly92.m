function [yearlydata]=getyearly92(cell) %for those that start at 1992
i=147; j=158; % 12 month interval for any comod cell except those that start early
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
