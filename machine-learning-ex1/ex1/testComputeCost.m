%加载训练集
data = load('ex1data1.txt');
%构造结果
y = data(:,2);
%获取训练集长度
m = length(y);
%构造实例矩阵
X = [ones(m,1),data(:,1)];

%初始参数
theta = zeros(2,1);

iterations = 1500;
alpha = 0.01;

while(iterations > 0),
	%期望函数
	hypothesis = X * theta;
	%cost function
	j = sum ((hypothesis - y) .^ 2) / (2 * m);
	disp(sprintf('j is %0.6f',j));
	%更新theta
	temp1 = theta(1) - alpha * 1/m * (sum((hypothesis-y) .* X(:,1)));
	temp2 = theta(2) - alpha * 1/m * (sum((hypothesis-y) .* X(:,2)));
	theta(1) = temp1;
	theta(2) = temp2;	
	iterations = iterations -1;
end;