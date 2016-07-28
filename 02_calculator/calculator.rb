def add a, b
	a+b
end

def subtract a, b
	a-b
end


def multiply(*arr) 
	product = 1
	arr.each {|a| product*=a }
	product
end

def divide a,b
	a/b
end

def sum arr
	sum =0
	arr.each {|a| sum+=a }
	sum
end

def power base, exp
	base**exp
end

def factorial a
	if a==0
		1
	elsif a==1
		1
	else 
		a*factorial(a-1)
	end
end