if global.screen_shot=1{exit}

//draw_sprite_texttext(x,y,texttext,left/cetner/right (0,1,2),color)

texttext=argument2
length=string_length(texttext)
texttextxx=0
texttextcolor=argument4
texttextscale=argument5
texttextsize=7
if argument3=1{texttextxx-=(((length+1)*(texttextsize*texttextscale))/2)}
if argument3=2 {texttextxx-=((length+1)*(texttextsize*texttextscale))}
si=1
ti=1
repeat(length)
{
img_t=26
c=string_char_at(texttext,si)

if (c="a")or(c="A"){img_t=0}
if (c="b")or(c="B"){img_t=1}
if (c="c")or(c="C"){img_t=2}
if (c="d")or(c="D"){img_t=3}
if (c="e")or(c="E"){img_t=4}
if (c="f")or(c="F"){img_t=5}
if (c="g")or(c="G"){img_t=6}
if (c="h")or(c="H"){img_t=7}
if (c="i")or(c="I"){img_t=8}
if (c="j")or(c="J"){img_t=9}
if (c="k")or(c="K"){img_t=10}
if (c="l")or(c="L"){img_t=11}
if (c="m")or(c="M"){img_t=12}
if (c="n")or(c="N"){img_t=13}
if (c="o")or(c="O"){img_t=14}
if (c="p")or(c="P"){img_t=15}
if (c="q")or(c="Q"){img_t=16}
if (c="r")or(c="R"){img_t=17}
if (c="s")or(c="S"){img_t=18}
if (c="t")or(c="T"){img_t=19}
if (c="u")or(c="U"){img_t=20}
if (c="v")or(c="V"){img_t=21}
if (c="w")or(c="W"){img_t=22}
if (c="x")or(c="X"){img_t=23}
if (c="y")or(c="Y"){img_t=24}
if (c="z")or(c="Z"){img_t=25}
if (c=" ")or(c=" "){img_t=26}
if (c="1")or(c="1"){img_t=27}
if (c="2")or(c="2"){img_t=28}
if (c="3")or(c="3"){img_t=29}
if (c="4")or(c="4"){img_t=30}
if (c="5")or(c="5"){img_t=31}
if (c="6")or(c="6"){img_t=32}
if (c="7")or(c="7"){img_t=33}
if (c="8")or(c="8"){img_t=34}
if (c="9")or(c="9"){img_t=35}
if (c="0")or(c="0"){img_t=36}
if c="."{img_t=37}
if c="/"{img_t=38}
if c="-"{img_t=39}
if c="!"{img_t=40}
if c="'"{img_t=41}
if c="$"{img_t=42}
if c="+"{img_t=43}
if c="%"{img_t=44}
if c=","{img_t=45}
if c="?"{img_t=46}
if c="_"{img_t=47}
draw_sprite_ext(spr_font,img_t,argument0+texttextxx+((texttextsize*texttextscale)*ti),argument1,texttextscale,texttextscale,0,texttextcolor,1)
si+=1
ti+=1
}
