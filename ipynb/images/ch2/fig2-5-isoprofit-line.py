import matplotlib
matplotlib.use('Agg')

from matplotlib import patches, pyplot
from matplotlib.path import Path

verts = [
    (0., 0.),
    (0., 1.),
    (1., 2.),
    (2., 2.),
    (2., 2.),
    (3., 0.),
    (0., 0.),
]

codes = [
    Path.MOVETO,
    Path.LINETO,
    Path.LINETO,
    Path.LINETO,
    Path.LINETO,
    Path.LINETO,
    Path.CLOSEPOLY,
]

path = Path(verts, codes)
patch = patches.PathPatch(path, facecolor=(.53,.81,.92), lw=1)

fig = pyplot.figure()
fig.set_size_inches(3, 9/4.)
ax = fig.add_subplot(111)

ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)
ax.spines['bottom'].set_visible(False)
ax.spines['left'].set_visible(False)

ax.set_xlim(-0.5, 3.5)
ax.set_ylim(-0.5, 2.5)

ax.add_patch(patch)

ax.plot([-.5,1.5], [1.5,-.5], lw=1, c='red')

pyplot.xlabel('x')
pyplot.ylabel('y')
pyplot.xticks([0, 1, 2, 3])
pyplot.yticks([0, 1, 2])
pyplot.grid(b=True, which='major', color=(.5,.5,.5,.25), linestyle='-')

pyplot.savefig('fig2-5-isoprofit-line.png', bbox_inches='tight')
