clc;
clear;

% Budget Constraint
% The price of each sensor is C = $500
% The price of each monitor is C' = $3000
% The total available budget is P = $18000

CS = 500;
CM = 3000;
P = 18000;
ln = 5;      % Length of grid i.e 5x5 


% Population Data
Pop = [44252	74524	85060	66989	94922
       23631	50185	74016	80964	86887
       40666	69841	65646	29660	15504
       29549	21068	9487	2984	2260 
       4267	    2293	2042	2393	1711];

add = sum(sum(Pop)); 
Pop=Pop/add*100;    % Population Percentage

% Emission PM2.5 Data
e = [0.293849555	0.497287887	0.700726218	0.665801844	0.630877469
0.199782061	0.310923724	0.422065388	0.393195231	0.364325075
0.105714567	0.124559562	0.143404557	0.120588619	0.09777268
0.056276604	0.085150863	0.114025122	0.14243416	0.170843197
0.006838642	0.045742165	0.084645688	0.164279701	0.243913714
];

add1 = sum(sum(e)); 
e=e/add1*100;    % Emission PM2.5 Percentage


% The empty set of Grids of point of interest (V)
v=[0 0];  
t=size(Pop);

% The set of V Grids and their locations
for i=1:t(1)        
    for j = 1:t(2)
         v(end+1,:)=[i j];
         
    end
end
% This is to remove first row of v & s
v(1,:)=[];

% For A = empty set, d = infinite, g(d) =0

% This for loop is for averaging population and emission percentage
% for each grid 
m=zeros(25,1);
for i = 1:length(v)
    b=v(i,1:2);
    m(i,:) = m(i,:) + (Pop(b(1),b(2))+e(b(1),b(2)))/2;
end
m;
M =[4.6314 7.8192 10.0010 8.7974 9.9390
    2.8197 5.0719 7.1852 7.3060 7.3746
    2.9277 4.5674 4.5058 2.4869 1.5808
    1.9613 1.7624 1.4054 1.3036 1.4963
    0.2728 0.4867 0.7884 1.4500 2.0590]

% % Generate Random Solution
%          nVar = 50;
%          last = 25;
%          rnd_no1 = randi([0, 1], 1, nVar - last);
           rnd_no =[1	1	1	1	1	1	1	1	1 1	1	1	0	1	1	1	1	0 1	0	0	0	0	0	0	0	0 0	0	0	0	0	0	0	0	0 0	1	0	0	0	0	0	0	0 0	1	0	0	1];

%          w = zeros(1, last);
%          n = randi([0, 3]);         % 0, 1 
%          w(randperm(last, n)) = 1;  % Elements at n indices of 25 set o 1
         a = [rnd_no];
         A = reshape(a,25,2)
         b = A(:,1);
         c = A(:,2);
% Rearrange Array
         B = reshape(b,5,5).';
         C = reshape(c,5,5).';

% Evaluate Solution
         count=sum(B(B==1));
         count1=sum(C(C==1));

% Summation of B or C Array
         E = B|C

% To calculate g=e^(-d) & distance
k=1;
f=0;
D=[];
for i = 1:ln
    for j = 1:ln         
        for p = 1:ln
            for q = 1:ln
                if E(p,q)==1
                    l = [i j];
                    r = [p q];
                    D(1,end+1)=dist([i,j],[p,q]);                    
                end                
            end
        end
        d(i,j)=min(D);
        g(i,j) = exp(-d(i,j));         
        D=[];
        k=k+1;
    end    
end
d;
ga=g.';
G = reshape(ga,25,1);
Ma = reshape(m,25,1);

% To calculate objective function
for u = 1:size(Ma)
    f(1,:) = f(1,:) + Ma(u,:)*G(u,:);
end
fn = f;

% Budget Constraint
% The price of each sensor is C = $500
% The price of each monitor is C' = $3000
% The total available budget is P = $18000

% SensorCost = CS*count + CM*count1;
% O = P - SensorCost;
% if O < 0
%     fn = f + O;
% end

% Constraint 2
% The summation of sensors location >= 1
h = [E(1,1), E(1,5) , E(5,1), E(5,5)];

if ~any(h==1) 
    fn = fn - 1;
end
fn