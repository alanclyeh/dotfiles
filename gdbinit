

define clr 
shell clear
end
document clr
Clear the screen.
end


define ct
file a.out
target remote 192.168.20.65:2331
load a.out
directory /home/alan/works/ecos/sq-ecos.git/sdk/HDMAlib-new/SRC/
c
end
document ct
Load file and connnet to remote target board.
end





