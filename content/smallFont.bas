import "CustomFont.bas"

smallFont = new(CustomFont)
charWidths = list(
	5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 3, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5
	2, 1, 3, 5, 5, 5, 5, 1, 2, 2, 3, 3, 2, 3, 1, 5, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 2, 3, 3, 3, 3,
	5, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 4, 3, 5, 4, 4, 4, 4, 4, 4, 3, 4, 5, 5, 5, 5, 4, 2, 5, 2, 3, 5,
	2, 3, 3, 3, 3, 3, 3, 3, 3, 1, 2, 3, 1, 5, 3, 3, 3, 3, 3, 3, 3, 3, 3, 5, 3, 3, 3, 3, 1, 3, 4, 3
)
'Many of these do not really appear very often. They can be removed if performance is an issue.
ligatures = dict(
	asc("E"), dict(
		asc("q"), -1
	)
	asc("F"), dict(
		asc(","), -2,
		asc("."), -2,
		asc("a"), -1,
		asc("c"), -1,
		asc("d"), -1,
		asc("e"), -1,
		asc("o"), -1,
		asc("s"), -1,
		asc("j"), -2,
		asc("q"), -1
	)
	asc("I"), dict(
		asc("q"), -2
	)
	asc("L"), dict(
		asc("T"), -1,
		asc("Y"), -2
	)
	asc("P"), dict(
		asc(","), -2,
		asc("."), -2,
		asc("j"), -1
	)
	asc("T"), dict(
		asc(","), -1,
		asc("."), -1,
		asc("J"), -1,
		asc("a"), -1,
		asc("c"), -1,
		asc("d"), -1,
		asc("e"), -1,
		asc("j"), -1,
		asc("o"), -1,
		asc("s"), -1
	)
	asc("V"), dict(
		asc(","), -1
		asc("."), -1
		asc("j"), -1
	)
	asc("Y"), dict(
		asc(","), -2,
		asc("."), -2,
		asc("J"), -1,
		asc("a"), -1,
		asc("c"), -1,
		asc("d"), -1,
		asc("e"), -1,
		asc("o"), -1,
		asc("s"), -1,
		asc("j"), -1
	)
	asc("f"), dict(
		asc(","), -2
		asc("."), -2
		asc("a"), -1,
		asc("c"), -1,
		asc("d"), -1,
		asc("e"), -1,
		asc("f"), -1, 'Touch.
		asc("g"), -1, 'Touch.
		asc("i"), -1, 'Touch, Classic.
		asc("j"), -2, 'Touch.
		asc("o"), -1,
		asc("t"), -1, 'Touch.
		asc("l"), -1, 'Touch.
		asc("s"), -1,
	)
	asc("p"), dict(
		asc(","), -1
		asc("."), -1
		asc("j"), -1
	)
	asc("r"), dict(
		asc(","), -2
		asc("."), -2
		asc("j"), -1
	)
	asc("y"), dict(
		asc(","), -1
		asc("."), -1
		asc("j"), -1
	)
)
smallFont.setup(load_resource("smallFont.quantized"), 192, 24, 6, 6, charWidths, 5, 1, ligatures)
charWidths = nil 'To conserve storage.
ligatures = nil  'To conserve storage.