from string import Template

t = Template(open("template.html").read())
b = open("pgn.html").read()
print(t.substitute(body=b))
