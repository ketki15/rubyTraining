class Volume
 CONST_PI = 3.14
 @@rad = 10

 def initialize(height)
  @h = height
 end
 
 def volume()
  vol = CONST_PI* @@rad* 2* @h
  return vol
 end
end
 
 classobj = Volume.new(6)
 classobj.volume()  

