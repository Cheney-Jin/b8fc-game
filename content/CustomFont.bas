'[
	Base class for font objects.
	Create a font object with foo = new(CustomFont) followed by foo.setup(...)
	Render the font with foo.putc(...), foo.puts(...) and foo.putsr(...).
	
	Last updated: 6 July 2018.
']

class CustomFont

	'Sets up the font for use. Parameters:
	'SrcImage:      Quantized image containing the font.
	'               Must be in ASCII order. Palette index 0 is interpreted as blank.
	'SrcHeight:     Height of the source image.
	'srcWidth:      Width of the source image.
	'srcCharHeight: Height of the character fields in the source image.
	'srcCharWidth:  Width of the character fields in the source image.
	'charHeight:    Height of the characters.
	'charWidths:    List of 128 elements containg individual character widths (in ASCII order).
	'               This may also be set to a single integer, which will result in a monospaced font.			
	'hSpace:        Horizontal space between characters when printing.
	'ligatures:     Dictionary defining the ligatures. The structure is as follows:
	'				dict(code of first ligature char, dict(code of second ligature char, number of pixels the second character is shifted right, ...), ...)
	'               It may be helpful to look at the smallFont example. Note that adding many ligatures may impact performance.
	def setup(srcImg, srcWidth, srcHeight, srcCharWidth_, srcCharHeight_, charWidth_, charHeight_, hSpace_, ligatures_)
		fonts = list()
		for colIndex = 0 to 15
			i = load_blank("quantized", srcWidth, srcHeight))
			for x = 0 to srcWidth - 1
				for y = 0 to srcHeight - 1
					if iget srcImg, x, y then iset i, x, y, colIndex
				next
			next
			push(fonts, i)
		next
		
		srcCharHeight = srcCharHeight_
		srcCharWidth = srcCharWidth_
		srcLineLength = floor(srcWidth/srcCharWidth)
		charHeight = charHeight_
		hSpace = hSpace_
		li = ligatures_
		
		if charWidth_ is type("NUMBER") then 'Monospaced font.
			charWidth = list()
			for i = 0 to 127
				push(charWidth, charWidth_)
			next
		else 'Proportional font.
			charWidth = charWidth_
		endif
	enddef
	
	'Draws a character given as ASCII code on the screen.
	def putc(char, x, y, colIndex)
		simg fonts(colIndex), (char mod srcLineLength)*srcCharWidth, floor(char/srcLineLength)*srcCharHeight, charWidth(char), charHeight, x, y
	enddef
	
	'Draws a string on the screen.
	def puts(string, x, y, colIndex)
		liga = nil
		for i = 0 to len(string) - 1
			char = asc(mid(string, i, 1))
			if liga <> nil then if exists(liga, char) then x = x + liga(char)
			putc(char, x, y, colIndex)
			x = x + charWidth(char) + hSpace
			if exists(li, char) then
				liga = li(char)
			else
				liga = nil
			endif
		next
	enddef
	
	'Draws a string on the screen, aligned right.
	'Note that this function can be fairy CPU-heavy.
	def putsr(string, x, y, colIndex)
		liga = nil
		shiftedX = x + 1
		for i = 0 to len(string) - 1
			char = asc(mid(string, i, 1))
			shiftedX = shiftedX - hSpace - charWidth(char)
			if liga <> nil then if exists(liga, char) then shiftedX = shiftedX - liga(char)
			if exists(li, char) then
				liga = li(char)
			else
				liga = nil
			endif
		next
		me.puts(string, shiftedX, y, colIndex)
	enddef
	
	var fonts = nil
	var srcCharWidth = nil
	var srcCharHeight = nil
	var srcLineLength = nil
	var charWidth = nil
	var charHeight = nil
	var hSpace = nil
	var li = nil
	
endclass