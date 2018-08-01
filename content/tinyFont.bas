import "CustomFont.bas"

tinyFont = new(CustomFont)
charWidths = list(
	3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
	2, 2, 3, 3, 3, 3, 3, 1, 2, 2, 3, 3, 1, 3, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 2, 2, 3, 2, 3,
	3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 3, 2, 3, 3,
	2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 3
)
ligatures = dict(
	asc("F"), dict(
		asc("."), -1,
		asc("S"), -1,
		asc("s"), -1
	)
	asc("f"), dict(
		asc("."), -1,
		asc("S"), -1,
		asc("s"), -1
	)
	asc("L"), dict(
		asc("T"), -1,
		asc("t"), -1,
		asc("Y"), -1,
		asc("y"), -1,
		asc("Z"), -1,
		asc("z"), -1
	)
	asc("l"), dict(
		asc("T"), -1,
		asc("t"), -1,
		asc("Y"), -1,
		asc("y"), -1,
		asc("Z"), -1,
		asc("z"), -1
	)
	asc("R"), dict(
		asc("."), -2,
		asc("S"), -1,
		asc("s"), -1
	)
	asc("r"), dict(
		asc("."), -2,
		asc("S"), -1,
		asc("s"), -1
	)
	asc("S"), dict(
		asc("."), -1,
		asc("S"), -1,
		asc("s"), -1
	)
	asc("s"), dict(
		asc("."), -1,
		asc("S"), -1,
		asc("s"), -1
	)
	asc("T"), dict(
		asc("."), -1,
		asc("S"), -1,
		asc("s"), -1
	)
	asc("t"), dict(
		asc("."), -1,
		asc("S"), -1,
		asc("s"), -1
	)
	asc("Y"), dict(
		asc("."), -1,
		asc("S"), -1,
		asc("s"), -1
	)
	asc("y"), dict(
		asc("."), -1,
		asc("S"), -1,
		asc("s"), -1
	)
	asc("Z"), dict(
		asc("T"), -1,
		asc("t"), -1,
		asc("Y"), -1,
		asc("y"), -1,
		asc("Z"), -1,
		asc("z"), -1
	)
	asc("z"), dict(
		asc("T"), -1,
		asc("t"), -1,
		asc("Y"), -1,
		asc("y"), -1,
		asc("Z"), -1,
		asc("z"), -1
	)
)
tinyFont.setup(load_resource("tinyFont.quantized"), 128, 16, 4, 4, charWidths, 3, 1, ligatures)
charWidths = nil 'To conserve storage.
ligatures = nil  'To conserve storage.