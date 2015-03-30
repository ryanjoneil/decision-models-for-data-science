import matplotlib
matplotlib.use('Agg')

from matplotlib import patches, pyplot
from matplotlib.path import Path

fig = pyplot.figure()
fig.set_size_inches(3, 9/4.)
ax = fig.add_subplot(111)

ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)
ax.spines['bottom'].set_visible(False)
ax.spines['left'].set_visible(False)

ax.set_xlim(-0.5, 3.5)
ax.set_ylim(-0.5, 2.5)

ax.fill_between([-.5,1.5], [.5,2.5], [-.5,-.5], facecolor=(.53,.81,.92), lw=0)
ax.fill_between([1.5,1.75], [2.5,2.5], [-.5,-.5], facecolor=(.53,.81,.92), lw=0)
ax.fill_between([1.75,3.25], [2.5,-.5], [-.5,-.5], facecolor=(.53,.81,.92), lw=0)
ax.plot([-.5,1.5], [.5,2.5], lw=1, c='black')
ax.plot([1.75,3.25], [2.5,-.5], lw=1, c='black')

pyplot.xlabel('x')
pyplot.ylabel('y')
pyplot.xticks([0, 1, 2, 3])
pyplot.yticks([0, 1, 2])
pyplot.grid(b=True, which='major', color=(.5,.5,.5,.25), linestyle='-')

pyplot.savefig('fig2-2-constraint-2.png', bbox_inches='tight')
