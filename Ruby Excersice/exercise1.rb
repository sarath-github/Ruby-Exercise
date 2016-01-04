class Polynomial
	def initialize(num)
		s=num.size
		s-=1
		i=0
		num.each do |x|
			if x!=0
				if x>0 && i!=0
					print "+"
				end
				if s>1
					if x==1 
						print "x^#{s}"
					elsif x==-1
						print "-x^#{s}"
					else
						print "#{x}x^#{s}"
					end
				elsif s==1 
					if x==1 
						print "x"
					elsif x==-1
						print "-x"
					elsif x!=0
						print "#{x}x"
					end
				elsif s==0 
					print "#{x}"
				end
			end
			s-=1
			i+=1
		end	 	 
	end
end


obj = Polynomial.new([-1,3])    #test case 1
Polynomial.new([-3,-4,1,0,6])	#test case 2