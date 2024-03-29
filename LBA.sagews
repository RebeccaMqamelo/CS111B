︠e28c10a8-35a5-4560-923b-b402721320e5s︠
A = matrix(5,5,[[3,3,0,0,0],[6,5,13,0,3],[0,11,5,18,0],[0,0,12,0,1],[0,5,0,6,2]])
M = matrix(5,5,[[1/3,1/8,0,0,0],[2/3,5/24,13/30,0,1/2],[0,11/24,1/6,3/4,0],[0,0,2/5,0,1/6],[0,5/24,0,1/4,1/3]])

for j in range(A.ncols()):
    v = A.column(j)
    for i in v:
        print(i/sum(v))
    print('')

show(A)
show(M)
︡3e577381-ec6b-49c6-b7f8-c7aa84574b77︡{"stdout":"1/3\n2/3\n0\n0\n0\n\n1/8\n5/24\n11/24\n0\n5/24\n\n0\n13/30\n1/6\n2/5\n0\n\n0\n0\n3/4\n0\n1/4\n\n0\n1/2\n0\n1/6\n1/3\n\n"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrrr}\n3 &amp; 3 &amp; 0 &amp; 0 &amp; 0 \\\\\n6 &amp; 5 &amp; 13 &amp; 0 &amp; 3 \\\\\n0 &amp; 11 &amp; 5 &amp; 18 &amp; 0 \\\\\n0 &amp; 0 &amp; 12 &amp; 0 &amp; 1 \\\\\n0 &amp; 5 &amp; 0 &amp; 6 &amp; 2\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrrr}\n\\frac{1}{3} &amp; \\frac{1}{8} &amp; 0 &amp; 0 &amp; 0 \\\\\n\\frac{2}{3} &amp; \\frac{5}{24} &amp; \\frac{13}{30} &amp; 0 &amp; \\frac{1}{2} \\\\\n0 &amp; \\frac{11}{24} &amp; \\frac{1}{6} &amp; \\frac{3}{4} &amp; 0 \\\\\n0 &amp; 0 &amp; \\frac{2}{5} &amp; 0 &amp; \\frac{1}{6} \\\\\n0 &amp; \\frac{5}{24} &amp; 0 &amp; \\frac{1}{4} &amp; \\frac{1}{3}\n\\end{array}\\right)$</div>"}︡{"done":true}
︠c011ea11-2177-4bec-960a-fe813c6b7a01s︠
show(M.eigenvectors_right())

eigenvectors = M.eigenvectors_right()
for eigenvector in eigenvectors:
    print(eigenvector[1])
    print('')
︡7c89de12-7bb1-4853-8d67-5aaa100f5647︡{"html":"<div align='center'>[($\\displaystyle 1$, [$\\displaystyle \\left(1,\\,\\frac{16}{3},\\,\\frac{400}{77},\\,\\frac{5224}{2079},\\,\\frac{1808}{693}\\right)$], $\\displaystyle 1$), ($\\displaystyle -0.6755481037798849?$, [$\\displaystyle \\left(1,\\,-8.07105149690575?,\\,10.90886698829893?,\\,-7.317835960400462?,\\,3.480020469007279?\\right)$], $\\displaystyle 1$), ($\\displaystyle -0.03513781391691070?$, [$\\displaystyle \\left(1,\\,-2.947769178001952?,\\,-0.326320557450615?,\\,1.889218431801280?,\\,0.3848713036512874?\\right)$], $\\displaystyle 1$), ($\\displaystyle 0.3115960272136874?$, [$\\displaystyle \\left(1,\\,-0.173898448957168?,\\,1.337758011801680?,\\,0.3647784919854751?,\\,-2.528638054829987?\\right)$], $\\displaystyle 1$), ($\\displaystyle 0.4407565571497749?$, [$\\displaystyle \\left(1,\\,0.859385790531533?,\\,-0.802657383826464?,\\,-0.8185139045627636?,\\,-0.2382145021423047?\\right)$], $\\displaystyle 1$)]</div>"}︡{"stdout":"[\n(1, 16/3, 400/77, 5224/2079, 1808/693)\n]\n\n[(1, -8.07105149690575?, 10.90886698829893?, -7.317835960400462?, 3.480020469007279?)]\n\n[(1, -2.947769178001952?, -0.326320557450615?, 1.889218431801280?, 0.3848713036512874?)]\n\n[(1, -0.173898448957168?, 1.337758011801680?, 0.3647784919854751?, -2.528638054829987?)]\n\n[(1, 0.859385790531533?, -0.802657383826464?, -0.8185139045627636?, -0.2382145021423047?)]\n\n"}︡{"done":true}
︠03f9bc77-4e35-43e7-ad95-68d678fb5e5fs︠
c1 = vector([0.4, 0.05, 0.1, 0.05, 0.4])
c2 = vector([0.5, 0.2, 0.1, 0.1, 0.1])
c3 = vector([0.2, 0.4, 0.075, 0.025, 0.3])

show(M^20*c1)
print('')
show(M^20*c2)
print('')
show(M^20*c3)
︡0cc3c8b7-cdca-43eb-9f7d-1509eb4b6920︡{"html":"<div align='center'>$\\displaystyle \\left(0.0600663699133213,\\,0.320277718494543,\\,0.312065432561874,\\,0.150875636622533,\\,0.156714842407729\\right)$</div>"}︡{"stdout":"\n"}︡{"html":"<div align='center'>$\\displaystyle \\left(0.0600623094685029,\\,0.320310511872500,\\,0.312021109757462,\\,0.150905365821005,\\,0.156700703080530\\right)$</div>"}︡{"stdout":"\n"}︡{"html":"<div align='center'>$\\displaystyle \\left(0.0600609724413616,\\,0.320321219785533,\\,0.312006633544671,\\,0.150915089329161,\\,0.156696084899274\\right)$</div>"}︡{"done":true}
︠ff536027-fa86-4e4d-a9ba-a83dceefdb25s︠
# Scale the eigenvectors
e1 = vector([1,16/3,400/77,5224/2079,1808/693])
e2 = vector([1,-8.07105149690575,10.90886698829893,-7.317835960400462,3.480020469007279])
e3 = vector([1,-2.947769178001952,-0.326320557450615,1.889218431801280,0.3848713036512874])
e4 = vector([1,-0.173898448957168,1.337758011801680,0.3647784919854751,-2.528638054829987])
e5 = vector([1,0.859385790531533,-0.802657383826464,-0.8185139045627636,-0.2382145021423047])

show(e1.normalized())
show(e2.normalized())
show(e3.normalized())
show(e4.normalized())
show(e5.normalized())
︡cf33e40b-8495-4499-ad8a-22ca7f0d2425︡{"html":"<div align='center'>$\\displaystyle \\left(\\frac{2079}{300615937} \\, \\sqrt{300615937},\\,\\frac{11088}{300615937} \\, \\sqrt{300615937},\\,\\frac{10800}{300615937} \\, \\sqrt{300615937},\\,\\frac{5224}{300615937} \\, \\sqrt{300615937},\\,\\frac{5424}{300615937} \\, \\sqrt{300615937}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(0.0631437821697349,\\,-0.509636717601330,\\,0.688827120827760,\\,-0.462075839837380,\\,0.219741654441214\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(0.272033567927347,\\,-0.801892166918135,\\,-0.0887701455313317,\\,0.513930830597010,\\,0.104697913925109\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(0.327089006691094,\\,-0.0568802709345221,\\,0.437565939273265,\\,0.119315034605804,\\,-0.827089709635642\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(0.567092291029907,\\,0.487351056831074,\\,-0.455180814706221,\\,-0.464172925378332,\\,-0.135089607776428\\right)$</div>"}︡{"done":true}
︠86115beb-9c74-4aa3-96d2-120b58328ca8s︠

print['%.3f' % x for x in e1.normalized()]
︡c00f03e1-a041-4871-a58a-ec2045f7fc33︡{"stdout":"['0.120', '0.640', '0.623', '0.301', '0.313']\n"}︡{"done":true}
︠6fa701c9-4242-425d-b9f2-9823653d64f3s︠
show(M.eigenvectors_right())

eigenvectors_A = M.eigenvectors_right()
for eigenvector in eigenvectors_A:
    print(eigenvector[1])
    print('')
︡775c69e1-9dcc-4eb6-aed9-4997be186762︡{"html":"<div align='center'>[($\\displaystyle 1$, [$\\displaystyle \\left(1,\\,\\frac{16}{3},\\,\\frac{400}{77},\\,\\frac{5224}{2079},\\,\\frac{1808}{693}\\right)$], $\\displaystyle 1$), ($\\displaystyle -0.6755481037798849?$, [$\\displaystyle \\left(1,\\,-8.07105149690575?,\\,10.90886698829893?,\\,-7.317835960400462?,\\,3.480020469007279?\\right)$], $\\displaystyle 1$), ($\\displaystyle -0.03513781391691070?$, [$\\displaystyle \\left(1,\\,-2.947769178001952?,\\,-0.326320557450615?,\\,1.889218431801280?,\\,0.3848713036512874?\\right)$], $\\displaystyle 1$), ($\\displaystyle 0.3115960272136874?$, [$\\displaystyle \\left(1,\\,-0.173898448957168?,\\,1.337758011801680?,\\,0.3647784919854751?,\\,-2.528638054829987?\\right)$], $\\displaystyle 1$), ($\\displaystyle 0.4407565571497749?$, [$\\displaystyle \\left(1,\\,0.859385790531533?,\\,-0.802657383826464?,\\,-0.8185139045627636?,\\,-0.2382145021423047?\\right)$], $\\displaystyle 1$)]</div>"}︡{"stdout":"[\n(1, 16/3, 400/77, 5224/2079, 1808/693)\n]\n\n[(1, -8.07105149690575?, 10.90886698829893?, -7.317835960400462?, 3.480020469007279?)]\n\n[(1, -2.947769178001952?, -0.326320557450615?, 1.889218431801280?, 0.3848713036512874?)]\n\n[(1, -0.173898448957168?, 1.337758011801680?, 0.3647784919854751?, -2.528638054829987?)]\n\n[(1, 0.859385790531533?, -0.802657383826464?, -0.8185139045627636?, -0.2382145021423047?)]\n\n"}︡{"done":true}
︠35d1e0c9-33ea-4b36-ae96-cb8c80b46359s︠
E1 = vector([1, 16/3, 400/77, 5224/2079, 1808/693])
E1.normalized()
print['%.3f' % x for x in E1.normalized()]
︡02f93548-3f7d-4daf-ab53-f8ddafae4b2e︡{"stdout":"(2079/300615937*sqrt(300615937), 11088/300615937*sqrt(300615937), 10800/300615937*sqrt(300615937), 5224/300615937*sqrt(300615937), 5424/300615937*sqrt(300615937))\n"}︡{"stdout":"['0.120', '0.640', '0.623', '0.301', '0.313']\n"}︡{"done":true}









