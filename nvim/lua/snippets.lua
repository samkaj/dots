local ls = require("luasnip")

ls.add_snippets({
		ls.parser.parse_snippet(
			"html",
			[[
<!DOCTYPE html>
<html lang="${1:en}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${2:Document}</title>
</head>
<body>
    $0
</body>
</html>
]]
		),
})
