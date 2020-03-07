---
title: Gravitation
chapter: 1
---
# Gravitation

- TOC
{:toc}

## Newton's law of universal gravitation
Newton's law of universal gravitation gives the gravitational force between two point masses. If the masses $$m_1$$ and $$m_2$$ are separated by a distance $$r$$, the gravitational force is given by

$$
F = \frac{G m_1 m_2}{r^2}
$$

where $$G = 6.67430 × 10^{-11} \mathrm{ m^3 kg^{-1} s^{-2}}$$ is the gravitational constant.

The gravitational force between two masses is attractive, i.e. the force exerted on $$m_2$$ by $$m_1$$ points in the direction of $$m_1$$ and vice versa. The magnitude of the force is directly proportional to the each of the masses of the two objects, and inversely proportional to the square of the distance between them. In addition, by Newton's third law, the gravitational force exerted by $$m_1$$ on $$m_2$$ is equal in magnitude and opposite in direction to that exerted by $$m_2$$ on $$m_1$$. Using vector notation, we may also write

$$
\mathbf{F} = -\frac{G m_1 m_2}{r^2}\hat{\mathbf{r}}
$$


## Barycentric coordinates

In the two-body problem, each object exerts a gravitational force on the other, and assuming no external forces are acting on the system, both objects orbit about their *centre of mass* or *barycentre*. 

The position of the centre of mass can be seen as a weighted average of the positions of the individual objects. For two objects with masses $m_1$ and $m_2$, located at positions $x_1$ and $x_2$ respectively, the position of the centre of mass is given by

$$
x_{CM} = \frac{m_1 x_1 + m_2 x_2}{m_1 + m_2}
$$

Extending this concept to multiple masses and using vectors to represent the positions of the objects, we can write the position vector of the centre of mass as

$$
\mathbf{r}_{CM} = \frac{ \sum m_i \mathbf{r}_i }{ \sum m_i }
$$

where $m_i$ and $\mathbf{r}_i$ represent the mass and position of an individual object, and the sums are taken over all objects in the system.

Suppose that our particles are also moving with different velocities $$\dot{\mathbf{r}}_i$$. Consider the frame, moving with some velocity $$\mathbf{u}$$, in which the total momentum of these particles is zero:

$$
\begin{align*}
\sum \mathbf{p}_i &= \sum m_i \left(\dot{\mathbf{r}}_i - \mathbf{u}\right)\\
0 &= \sum m_i \dot{\mathbf{r}}_i - \sum m_i\mathbf{u}\\
\mathbf{u} &= \frac{\displaystyle \sum m_i \dot{\mathbf{r}}_i}{\displaystyle \sum m_i}\\
&= \dot{\mathbf{r}}_{CM}
\end{align*}
$$

Therefore, in the frame that moves with the same velocity as the centre of mass, the total momentum of all the particles is zero. In addition, by differentiating again with respect to time, it is seen that

$$
\mathbf{F}_\text{total} = \sum \mathbf{F}_i = \sum m_i \ddot{\mathbf{r}}_i = \ddot{\mathbf{r}}_{CM} \sum m_i
$$

Thus, external forces acting on the entire system will accelerate the centre of mass as though they act on a point mass with mass $$\sum m_i$$ (total mass of the system) located at the centre of mass.

## Reduced mass

Consider two bodies, $$m_1$ and $m_2$$. We know that

$$
\begin{align*}
\mathbf{F}_{1\rightarrow 2} &= m_2 \mathbf{a}_2\\
\mathbf{F}_{2\rightarrow 1} &= m_1 \mathbf{a}_1\\
\end{align*}
$$

and by Newton's third law, $$\mathbf{F}_{1\rightarrow 2} = - \mathbf{F}_{2\rightarrow 1}$$. Therefore, the relative acceleration $$\mathbf{a}$$ of the two bodies is

$$
\begin{align*}
\mathbf{a} &= \mathbf{a}_2 - \mathbf{a}_1\\
&= \left( 1 + \frac{m_1}{m_2} \right) \mathbf{a}_2\\
&= \frac{m_1 + m_2}{m_1 m_2} \mathbf{F}_{1\rightarrow 2}\\
\therefore \mathbf{F}_{1\rightarrow 2} &= \frac{m_1 m_2}{m_1 + m_2} \mathbf{a}
\end{align*}
$$

Thus, if we hold $$m_1$$ fixed, then $$m_2$$ appears to move relative to it as though it has a mass $$\mu = \frac{m_1 m_2}{m_1 + m_2}$$. The quantity $$\mu$$ is known as the *reduced mass*. However, in order for the magnitude of the force between the two bodies to remain the same, $m_1$ also appears to have a different apparent mass $$M$$. We note that $$F_{1\rightarrow 2} = \frac{G m_1 m_2}{r^2} = \frac{G M \mu}{r^2}$$. Therefore $$M = m_1 + m_2$$.

## Kepler's laws of planetary motion

### Kepler's first law

Kepler's first law states that every planet orbits the Sun in an ellipse, with the Sun at one focus. 

More generally, the orbit of an object about another due to gravity adopts a shape known as a conic section, which may be a circle, ellipse, parabola, or hyperbola.

#### Derivation of Kepler's first law

To prove Kepler's first law, it is useful to introduce the concept of the *Laplace-Runge-Lenz vector*[^gibbs-1901]. For a central force $$\mathbf{F} = - \frac{k}{r^3} \mathbf{r}$$, the Laplace-Runge-Lenz vector is defined as 

$$
\begin{equation} \mathbf{A} = \mathbf{p} \times \mathbf{L} - \frac{m k}{r}\mathbf{r} \end{equation}
$$

The vector is conserved in orbital motion of a particle under the influence of such a central force. To derive this vector, we note that

$$
\begin{align*}
\mathbf{F} \times \mathbf{L} &= - \frac{k}{r^3} \mathbf{r} \times (\mathbf{r} \times \mathbf{p})\\
&= - \frac{mk}{r^3} \mathbf{r} \times (\mathbf{r} \times \dot{\mathbf{r}})
\end{align*}
$$

Using the vector triple product identity 

$$
\mathbf{A} \times (\mathbf{B} \times \mathbf{C}) = (\mathbf{A} \cdot \mathbf{C})\mathbf{B} - (\mathbf{A} \cdot \mathbf{B})\mathbf{C}
$$

we get

$$
\begin{align*}
\mathbf{r} \times (\mathbf{r} \times \dot{\mathbf{r}}) &= (\mathbf{r} \cdot \dot{\mathbf{r}})\mathbf{r} - (\mathbf{r} \cdot \mathbf{r})\dot{\mathbf{r}}\\
&= (\mathbf{r} \cdot \dot{\mathbf{r}})\mathbf{r} - r^2 \dot{\mathbf{r}}
\end{align*}
$$

Since 

$$
\begin{align*}
\frac{\mathrm{d}}{\mathrm{d}t} (\mathbf{r} \cdot \mathbf{r}) &= \frac{\mathrm{d}}{\mathrm{d}t}(r^2)\\
2 \mathbf{r} \cdot \dot{\mathbf{r}} &= 2 r \dot{r}
\end{align*}
$$

then

$$
\begin{align*}
\mathbf{r} \times (\mathbf{r} \times \dot{\mathbf{r}}) &=r \dot{r} \mathbf{r} - r^2 \dot{\mathbf{r}}\\
\mathbf{F} \times \mathbf{L} &= - \frac{mk}{r^3} \left( r \dot{r} \mathbf{r} - r^2 \dot{\mathbf{r}} \right)\\
&= mk \left( \frac{1}{r}\dot{\mathbf{r}} - \frac{\dot{r}}{r^2}\mathbf{r} \right)\\
&= mk \frac{\mathrm{d}}{\mathrm{d}t}( \frac{\mathbf{r}}{r})
\end{align*}
$$

However, since $$\mathbf{L} = \mathbf{r} \times \mathbf{p} = \mathbf{r} \times (m \dot{\mathbf{r}})$$,

$$
\begin{align*}
\frac{\mathrm{d}}{\mathrm{d}t} \mathbf{L} &= \dot{\mathbf{r}} \times \mathbf{p} + \mathbf{r} \times \frac{\mathrm{d}}{\mathrm{d}t} \mathbf{p}\\
&= \mathbf{0} + \mathbf{r} \times \mathbf{F}\\
&= \mathbf{r} \times - \frac{k}{r^3} \mathbf{r}\\
&= \mathbf{0}\\
\therefore \frac{\mathrm{d}}{\mathrm{d}t}(\mathbf{p} \times \mathbf{L}) &= \frac{\mathrm{d}}{\mathrm{d}t}\mathbf{p} \times \mathbf{L} + \mathbf{p} \times \frac{\mathrm{d}}{\mathrm{d}t}\mathbf{L}\\
&= \mathbf{F} \times \mathbf{L}\\
\Rightarrow \mathbf{p} \times \mathbf{L} &= \frac{mk}{r}\mathbf{r} + \mathbf{A}
\end{align*}
$$

where $$\mathbf{A}$$ is a constant vector of integration. Therefore, $$\mathbf{A}$$ represents the Laplace-Runge-Lenz vector. It is useful to note that $$\mathbf{A}$$ lies in the same plane as the orbit. This can be seen by rewriting 

$$
\mathbf{p} \times \mathbf{L} = m^2 \dot{\mathbf{r}} \times (\mathbf{r} \times \dot{\mathbf{r}}) = m^2 (\dot{r}^2 \mathbf{r} - (\dot{\mathbf{r}} \cdot \mathbf{r})\dot{\mathbf{r}})
$$

This produces a linear combination of $$\mathbf{r}$$ and $$\dot{\mathbf{r}}$$, both of which lie in the plane of the orbit.

For gravitation, the Laplace-Runge-Lenz vector is 

$$
\mathbf{A} = \mathbf{p} \times \mathbf{L} - \frac{G M m^2}{r}\mathbf{r}
$$

Take the dot product with $$\mathbf{r}$$ on both sides to get

$$
\begin{align*}
\mathbf{r} \cdot \mathbf{A} &= \mathbf{r} \cdot (\mathbf{p} \times \mathbf{L}) - \mathbf{r} \cdot (\frac{G M m^2}{r}\mathbf{r})\\
&= \mathbf{r} \cdot (\mathbf{p} \times \mathbf{L}) - G M m^2 r
\end{align*}
$$

Using the property $$\mathbf{A} \cdot (\mathbf{B} \times \mathbf{C}) = (\mathbf{A} \times \mathbf{B}) \cdot \mathbf{C}$$,

$$
\begin{align*}
\mathbf{r} \cdot \mathbf{A} &= (\mathbf{r} \times \mathbf{p}) \cdot \mathbf{L} - G M m^2 r\\
&= \mathbf{L} \cdot \mathbf{L} - G M m^2 r\\
&= L^2 - GMm^2 r
\end{align*}
$$

Let $$\theta$$ be the angle between $$\mathbf{A}$$ and $$\mathbf{r}$$. Because $$\mathbf{L}$$ and $$\mathbf{A}$$ are constants, define $$p = \frac{L^2}{GMm^2}$$ and $$e = \frac{A}{GMm^2}$$. Then

$$
\begin{align}
re \cos{\theta} &= p - r \nonumber\\
r (1 + e \cos{\theta}) &= p \nonumber\\
r &= \frac{p}{1 + e \cos{\theta}}
\end{align}
$$

This is the equation of a conic section in polar coordinates, with the origin $$(0,0)$$ as a focus, $$e$$ the eccentricity of the conic section, and $$p$$ is the semi-latus rectum. The semi-latus rectum is related to the semi-major axis $$a$$ by $$p = a (1 - e^2)$$ for $$e < 1$$ and $$a (e^2 - 1)$$ for $$e > 1$$.

Now, if we consider the dot product of $$\mathbf{A}$$ with itself, and use the fact that $$\mathbf{p}$$ and $$\mathbf{L} = \mathbf{r} \times \mathbf{p}$$ are perpendicular, we can derive an expression for $$e$$:

$$
\begin{align}
A^2 &= (\mathbf{p} \times \mathbf{L}) \cdot (\mathbf{p} \times \mathbf{L}) + \frac{G^2 M^2 m^4}{r^2}\mathbf{r} \cdot \mathbf{r} - 2 \frac{G M m^2}{r} (\mathbf{p} \times \mathbf{L}) \cdot \mathbf{r} \nonumber\\
G^2 M^2 m^4 e^2 &= p^2 L^2 + G^2 M^2 m^4 - \frac{2 G M m^2 L^2}{r} \nonumber\\
G^2 M^2 m^4 (e^2 - 1)&= 2 m L^2 (\frac{p^2}{2m} - \frac{GMm}{r}) \nonumber\\
e^2 - 1&= \frac{2 E L^2}{G^2 M^2 m^3}
\end{align}
$$

where $$E = \frac{p^2}{2m} - \frac{GMm}{r}$$ is the total energy of the object in orbit, i.e. the sum of its kinetic and gravitational potential energies.

### Kepler's second law

Kepler's second law states that a line joining a planet and the Sun sweeps out area at a constant rate.

If the distance between the planet and the Sun is $$r$$, and the position angle of the planet (measured about the Sun from some point in the orbit) is $$\theta$$, then the rate at which area is swept out is 

$$
\begin{equation}
\frac{1}{2} r^2 \frac{\mathrm{d}\theta}{\mathrm{d}t} = \mathrm{constant}
\end{equation}
$$

#### Derivation of Kepler's second law

For a test particle of mass $$m$$ under the gravitational influence of a large mass $$M$$, the acceleration of the test particle is $$\ddot{\mathbf{r}} = - \frac{GM}{r^3}\mathbf{r}$$. 

We have shown in the previous section that $$\mathbf{L} = \mathbf{r} \times \mathbf{p} = m(\mathbf{r} \times \dot{\mathbf{r}})$$ is constant for an object moving under the influence of a central force like gravitation. Since $$\boldsymbol{\omega} = \frac{\mathbf{r} \times \dot{\mathbf{r}}}{r^2}$$, 

$$
\frac{\mathrm{d}\theta}{\mathrm{d}t} = \lvert\boldsymbol{\omega}\rvert = \frac{L}{mr^2}
$$

A simple rearrangement directly leads to Kepler's second law, which we can now write as 

$$
\begin{equation}
\frac{1}{2} r^2 \frac{\mathrm{d}\theta}{\mathrm{d}t} = \frac{L}{2m}
\end{equation}
$$

### Kepler's third law

Kepler's third law states that the square of the period of an orbit is proportional to the cube of the semi-major axis of the orbit.

Equivalently, this can be written as 

$$
\begin{equation}
\frac{4\pi^2}{G M} a^3 = T^2 \Rightarrow T^2 \propto a^{3}
\end{equation}
$$

Evidently, this law is meant to apply to circular and elliptical orbits, where the period is well-defined. 

#### Derivation of Kepler's third law

This law directly follows from the previous two. The area of an ellipse with semi-major axis $$a$$, semi-minor axis $$b$$, and eccentricity $$e$$ is 

$$
\pi a b = \pi a^2 \sqrt{1 - e^2}
$$

Since the rate at which the area of this ellipse is swept out is constant, the period is given by

$$
\begin{align*}
T &= \frac{\pi a^2 \sqrt{1 - e^2}}{\frac{1}{2} r^2 \frac{\mathrm{d}\theta}{\mathrm{d}t}}\\
&= \frac{2 \pi m a^2 \sqrt{1 - e^2}}{L}
\end{align*}
$$

where we have used the result from the derivation of the second law. Squaring both sides yields

$$
\begin{align*}
T^2 &= \frac{4 \pi^2 m^2 a^4 (1 - e^2)}{L^2}\\
&= \frac{4 \pi^2 m^2 a^4 (1-e^2)}{G M m^2 p}\\
&= \frac{4 \pi^2}{GM} a^3
\end{align*}
$$

where we have used the properties of the semi-latus rectum $$p = \frac{L^2}{GMm^2}$$ and $$p = a (1 - e^2)$$ introduced earlier in the derivation of the first law.

## Important results in gravitation

### Shell theorem

The shell theorem applies to spherical shells with a uniform mass distribution, and provides us with two important results:

- the gravitational field outside the spherical shell is equivalent to that of a point mass with the same total mass $$M$$ located at the centre of the shell;
- the gravitational field inside the spherical shell is zero.

Since uniform spheres are made of many layers of spherical shells, we can also arrive at the following results for a uniform sphere of radius $R$:

- the gravitational field outside the sphere is equivalent to that of a point mass with the same total mass $$M$$ located at the centre of the sphere;
- the gravitational field at a distance $r < R$ from the centre of the sphere is equivalent to that of the part of the sphere located within a radius $r$ from its centre (the spherical shells outside do not contribute).

#### Derivation of the shell theorem

Consider a point $$P$$ located a distance $$r$$ away from (and outside) a spherical shell of radius $$R$$ and mass $$M$$ as shown in the figure below. The mass per unit surface area of the shell is $$\sigma = \frac{M}{4 \pi R^2}$$. We intend to find the gravitational field from the shell at $$P$$.

![Figure: Shell theorem](./figures/shell_theorem.png)

At an angle $$\theta$$ on the shell away from the line $$\overline{OP}$$, where $$O$$ is the centre of the shell, there is an infinitesimal circular strip of radius $$R \sin{\theta}$$ and width $$R \mathrm{d}\theta$$. Each point on this strip is at a distance $$s$$ away from $$P$$. The gravitational force acts at some angle $$\phi$$ away from the line $$\overline{OP}$$, but due to symmetry, the net contribution from the circular strip acts along the line of $$\overline{OP}$$.

The differential gravitational field from a circular strip is given by 

$$
\begin{align*}
\mathrm{d}g &= \frac{G}{s^2} (2 \pi R \sin{\theta})(R \mathrm{d}\theta) \sigma \cos{\phi}\\
&= (2 \pi R^2 G \sigma) \frac{\sin{\theta}\cos{\phi}}{s^2} \mathrm{d}\theta
\end{align*}
$$

Therefore, integrating over the whole sphere: 

$$
\begin{align*}
g &= (2 \pi R^2 G \sigma) \int_{\theta = 0}^{\theta = \pi} \frac{\sin{\theta}\cos{\phi}}{s^2} \mathrm{d}\theta \\
&= (2 \pi R^2 G \sigma) \int_{\theta = 0}^{\theta = \pi} \frac{\sin{\theta}}{s^2} \frac{r^2 + s^2 - R^2}{2rs} \mathrm{d}\theta\\
&= (2 \pi R^2 G \sigma) \int_{s = r - R}^{s = r + R} \frac{r^2 + s^2 - R^2}{2r s^3} \left( \frac{s}{R r} \right) {d}s\\
&= \frac{2 \pi R^2 G \sigma}{2 r^2 R} \int_{s = r - R}^{s = r + R} 1 + \frac{r^2 - R^2}{s^2} {d}s\\
&= \frac{\pi R G \sigma}{r^2} \left[ s - \frac{r^2 - R^2}{s} \right]_{s = r-R}^{s = r+R}\\
&= \frac{\pi R G \sigma}{r^2} \left[ 4R \right]\\
&= \frac{G M}{r^2}
\end{align*}
$$

Hence, the field outside the spherical shell is equivalent to that of a point mass with the same total mass $$M$$ located at the centre of the shell.

If $$P$$ is located inside the spherical shell, our limits of integration change, with $$s = R - r$$ when $$\theta = 0$$ and $$s = R + r$$ when $$\theta = \pi$$ instead. Then 

$$
\begin{align*}
g &= (2 \pi R^2 G \sigma) \int_{s = R - r}^{s = R + r} \frac{r^2 + s^2 - R^2}{2r s^3} \left( \frac{s}{R r} \right) {d}s\\
&= \frac{2 \pi R^2 G \sigma}{2 r^2 R} \int_{s = R - r}^{s = R + r} 1 + \frac{r^2 - R^2}{s^2} {d}s\\
&= \frac{\pi R G \sigma}{r^2} \left[ s - \frac{r^2 - R^2}{s} \right]_{s = R-r}^{s = R+r}\\
&= \frac{\pi R G \sigma}{r^2} \left[ 0 \right] = 0
\end{align*}
$$

Hence, the gravitational field is zero inside the shell.

### Gravitational binding energy of a sphere

The gravitational binding energy of a uniform spherical object is the amount of energy needed to completely separate the components to reduce the gravitational potential to zero. Equivalently, it is the gravitational potential energy change when masses from infinity are assembled to form the spherical object.

Due to the shell theorem, different parts of the spherical object experience different gravitational fields. This complicates the process of calculating the gravitational binding energy of the sphere.

Consider a shell of radius $$r < R$$ and thickness $$\mathrm{d}r$$. The mass of this shell is $$4 \pi r^2 \rho \mathrm{d}r$$. By the shell theorem, the portion of the sphere outside radius $$r$$ does not contribute to the gravitational field at $$r$$. Hence, the gravitational potential energy of this shell only comes from the portion of the sphere within radius $$r$$, and is

$$
\begin{align*}
\mathrm{d}U &= - \frac{G (4 \pi r^2 \rho \mathrm{d}r) \left(\frac{4}{3} \pi r^3 \rho \right)}{r}\\
&= - \frac{16 \pi^2 \rho^2 G}{3} r^4 \mathrm{d} r\\
\therefore U &= - \frac{16 \pi^2 \rho^2 G}{3} \int_{0}^{R} r^4 \mathrm{d} r\\
&= - \frac{16 \pi^2 \rho^2 G}{15} R^5\\
&= - \frac{16 \pi^2 R^5 G}{15} \left( \frac{M}{\frac{4}{3} \pi R^3} \right)^2\\
&= - \frac{3 G M^2}{5 R}
\end{align*}
$$

## Tidal forces

## Roche limit

The Roche limit describes the minimum orbital radius of an object of mass $$m$$ about a larger primary object of mass $M$ before it breaks up due to tidal forces. The object assumed to be held together solely by its own gravity.

For a rigid satellite, i.e. one that is assumed to remain a sphere until it breaks up, the Roche limit is 

$$
d = R_M \left(\frac{2\rho_M}{\rho_m}\right)^\frac{1}{3} = R_m \left(\frac{2M}{m}\right)^\frac{1}{3}
$$


## Orbital mechanics

### Orbital elements

To completely specify a planet's orbit and its position, 6 orbital parameters are required, corresponding to the 6 degrees of freedom of the planet (3 degrees each in position and velocity). The typical set of orbital elements for a planet in the solar system are:

$$a$$
: the semi-major axis of the orbit;

$$e$$
: the eccentricity of the orbit;

$$i$$
: the inclination of the orbit, relative to the plane of the ecliptic;

$$\Omega$$
: the longitude of the ascending node, relative to the vernal equinox and measured in the plane of the ecliptic;

$$\pi$$
: the longitude of the perihelion;

$$L$$
: the mean longitude of the planet.

The first five items describe the orbit itself, while the last provides information on where the planet is located in the orbit. Note that the quantities $$\pi$$ and $$L$$ are compound angles that are sums of angles measured in two planes:

- $$\pi = \Omega + \omega$$ where $$\omega$$ is the argument of perihelion, the angle between the ascending node and the perihelion measured in the plane of the orbit;
- $$L = \pi + M = \Omega + \omega + M$$ where $$M$$ is the mean anomaly of the planet measured in the plane of the orbit.

### Kepler's equation

Consider the orbit of a planet $$P$$ about the star $$S$$ as shown in the figure below. This orbit has a semi-major axis $$a$$ and eccentricity $$e$$. The *true anomaly* $$\nu$$ is the angle $$QSP$$, measured from the periapsis $$Q$$. The outer dashed circle (with centre $$O$$) is the *auxiliary circle* of the orbit, which is a circle with radius equal to the semi-major axis of the orbit. If a line perpendicular to the major axis of the orbit is drawn passing through $$P$$, this line meets the auxiliary circle at a point $$P'$$. The angle $$QOP'$$ is defined as the *eccentric anomaly*[^meeus-1998].

![Figure: Eccentric and true anomaly](./figures/eccentric_anomaly.png)

The eccentric anomaly is related to the true anomaly by the relation 

$$
\begin{equation}
\tan{\frac{\nu}{2}} = \sqrt{\frac{1+e}{1-e}} \tan{\frac{E}{2}}
\end{equation}
$$

The distance $$r$$ between $$P$$ and $$S$$ can be calculated using the eccentric anomaly by 

$$
\begin{equation}
r = a \left(1 - e \cos{E}\right)
\end{equation}
$$

Now consider a fictitious planet $$R$$ that has a circular orbit about $$S$$ with the same semi-major axis as $$P$$. Their orbits are shown in the figure below. Both $$P$$ and $$R$$ will complete their orbits in the same amount of time. Suppose also that when $$P$$ is at the periapsis $$Q$$, $$R$$ is at the point $$Q'$$. Then, as $$P$$ and $$R$$ move about their orbits, the angle $$Q'SR$$ describes the *mean anomaly* $$M$$ of the planet $$P$$[^meeus-1998]. $$M$$ increases linearly with time, but $$\nu$$ does not (as a consequence of [Kepler's second law](#keplers-second-law)).

![Figure: Mean and true anomaly](./figures/mean_anomaly.png)

The eccentric anomaly is related to the mean anomaly by *Kepler's equation*, which is 

$$
\begin{equation}
E = M + e \sin{E}
\end{equation}
$$

where the angles are given in radians.

Solving for $$M$$ when $$E$$ is known is straightforward. However, solving for $$E$$ given $$M$$ cannot be done directly. Frequently, iterative methods are used to arrive at an approximate value for $$E$$.

### Vis-viva equation

The vis-viva equation relates the orbital speed of an object to the distance from the central body. It is given by

$$
\begin{equation}
v^2 = GM \left(\frac{2}{r} - \frac{1}{a}\right)
\end{equation}
$$

#### Derivation of the vis-viva equation
The velocity of the object can be split into radial and tangential components. The radial component is $$\frac{\mathrm{d}r}{\mathrm{d}t}$$ and the tangential component is $$r\frac{\mathrm{d}\theta}{\mathrm{d}t}$$.

The radial component is

$$
\begin{align*}
\frac{\mathrm{d}r}{\mathrm{d}t} &= -\frac{p}{(1 + e \cos{\theta})^2} (- e \sin{\theta}) \frac{\mathrm{d}\theta}{\mathrm{d}t}\\
&= \frac{r^2}{p} (e \sin{\theta})\frac{\mathrm{d}\theta}{\mathrm{d}t}
\end{align*}
$$

Since we know $$r^2 \frac{\mathrm{d}\theta}{\mathrm{d}t} = \frac{L}{m} = h$$,

$$
\begin{align*}
\frac{\mathrm{d}r}{\mathrm{d}t} &= \frac{h}{p} (e \sin{\theta})
\end{align*}
$$

The tangential component is

$$
\begin{align*}
r\frac{\mathrm{d}\theta}{\mathrm{d}t} &= \frac{h}{r}\\
&= \frac{h}{p} (1 + e \cos{\theta})
\end{align*}
$$

Therefore, the overall velocity is

$$
\begin{align*}
v^2 &= \left( \frac{\mathrm{d}r}{\mathrm{d}t} \right)^2 + \left( r\frac{\mathrm{d}\theta}{\mathrm{d}t} \right)\\
&= \frac{h^2}{p^2} (e^2 \sin^2{\theta}) + \frac{h^2}{p^2} (1 + e \cos{\theta})^2\\
&= \frac{h^2}{p^2} \left(1 + 2 e \cos{\theta} + e^2 \right)\\
&= \frac{h^2}{p^2} \left(2(1 + e \cos{\theta}) - (1 - e^2) \right)
\end{align*}
$$

Using the fact that $$p = \frac{h^2}{GM}$$, and $$p = a(1 - e^2)$$,

$$
\begin{align*}
v^2 &= GM \left(2 \frac{(1 + e \cos{\theta})}{p} - \frac{1 - e^2}{p} \right)\\
&= GM \left(\frac{2}{r} - \frac{1}{a}\right)
\end{align*}
$$

## Three-body problem

## Lagrangian points

One particular subset of the three-body problem is the circular restricted three-body problem, where by we consider two relatively large masses $$m_1$$ and $$m_2$$ (with $$m_2 < m_1$$) in circular orbits around their barycentre, and determine the motion of an infinitestimal mass $$\mu$$ that is deemed to be so small it exerts no significant gravitational force on $$m_1$$ or $$m_2$$.

The Lagrangian points are a set of five solutions, named after Joseph-Louis Lagrange who described them in a 1772 essay on the three-body problem[^lagrange], in which $$\mu$$ maintains a circular orbit about the barycentre with the same angular velocity as $$m_1$$ and $$m_2$$. This allows $$\mu$$ to stay in the same relative position as seen from either $$m_1$$ or $$m_2$$, and these five relative positions are termed the Lagrangian points. They are numbered L1 through L5, and all of these points lie in the same plane as $$m_1$$ and $$m_2$$. L1, L2 and L3 are collinear (along the same line) with $$m_1$$ and $$m_2$$, and L4 and L5 form equilateral triangles with $$m_1$$ and $$m_2$$.

### L1, L2 and L3

The three collinear Lagrangian points are unstable equilibria.

### L4 and L5

L4 and L5 form equilateral triangles with $$m_1$$ and $$m_2$$, such that L4 is 60° ahead of $$m_2$$, and L5 is 60° behind $$m_2$$. These two Lagrangian points are relatively stable, provided

$$ \frac{m_2}{m_1} < \frac{1 - \sqrt{\frac{23}{27}}}{1 + \sqrt{\frac{23}{27}}} $$

In the Solar System, the L4 and L5 points of the orbits celestial bodies may be occupied by smaller bodies. Asteroids at the L4 and L5 points of larger planets are often referred to as trojans. Jupiter has many asteroids around its L4 and L5 points; the asteroids at L4 are traditionally named after Greek characters, while those at L5 are named after Trojan characters. 

Saturn has trojan moons, whereby the L4 and L5 points of larger moons are occupied by much smaller moons. The known examples are Tethys with its trojans Telesto and Calypso, and Dione with Helene and Polydeuces.

### Rotating frames of reference

Consider a vector $$\mathbf{r}$$ in a stationary coordinate system, with the unit vectors $$\mathbf{i}$$, $$\mathbf{j}$$, $$\mathbf{k}$$ corresponding to the axes $$x$$, $$y$$, and $$z$$ respectively. Then consider a rotating coordinate system centred about the same origin, but rotating with angular velocity $$\boldsymbol{\Omega}$$. Let the unit vectors in this rotating frame be $$\mathbf{i}'$$, $$\mathbf{j}'$$, $$\mathbf{k}'$$, corresponding to axes $$x'$$, $$y'$$ and $$z'$$.

If we write $$\mathbf{r} = r_x \mathbf{i}' + r_y \mathbf{j}' + r_z \mathbf{k}'$$, we can take the derivative with respect to time and apply the product rule:

$$
\frac{\mathrm{d}}{\mathrm{d}t} \mathbf{r} = \left( \frac{\mathrm{d} r_x}{\mathrm{d}t} \mathbf{i}' + \frac{\mathrm{d} r_y}{\mathrm{d}t} \mathbf{j}' + \frac{\mathrm{d} r_z}{\mathrm{d}t} \mathbf{k}' \right) + \left( r_x \frac{\mathrm{d} \mathbf{i}'}{\mathrm{d}t} + r_y \frac{\mathrm{d} \mathbf{j}'}{\mathrm{d}t} + r_z \frac{\mathrm{d} \mathbf{k}'}{\mathrm{d}t} \right)
$$

For the unit vectors, $$\frac{\mathrm{d} \mathbf{i}'}{\mathrm{d}t} = \boldsymbol{\Omega} \times \mathbf{i}'$$, as they rotate about the axis but do not change in magnitude. Then we can write the previous result as

$$
\frac{\mathrm{d}}{\mathrm{d}t} \mathbf{r} = \left( \frac{\mathrm{d} \mathbf{r}}{\mathrm{d}t}  \right)_{rot} + \boldsymbol{\Omega} \times \mathbf{r}
$$

where the subscripted term $$\left( \frac{\mathrm{d} \mathbf{r}}{\mathrm{d}t} \right)_{rot}$$ represents the quantity as it would be measured in the rotating frame. We will write this as $$\mathbf{v}_{rot}$$, the velocity measured in the rotating frame. 

Taking a second derivative with respect to time:

$$
\begin{align*}
\frac{\mathrm{d}^2}{\mathrm{d}t^2} \mathbf{r} &= \left( \frac{\mathrm{d} \mathbf{v}_{rot}}{\mathrm{d}t} \right) + \frac{\mathrm{d}}{\mathrm{d}t} \left( \boldsymbol{\Omega} \times \mathbf{r} \right)\\
&= \left( \frac{\mathrm{d} \mathbf{v}_{rot}}{\mathrm{d}t} \right)_{rot} + \boldsymbol{\Omega} \times \mathbf{v}_{rot} + \left( \frac{\mathrm{d} \boldsymbol{\Omega}}{\mathrm{d}t} \right) \times \mathbf{r} + \boldsymbol{\Omega} \times \left( \frac{\mathrm{d} \mathbf{r}}{\mathrm{d}t} \right)\\
&= \mathbf{a}_{rot} + \boldsymbol{\Omega} \times \mathbf{v}_{rot} + \left( \frac{\mathrm{d} \boldsymbol{\Omega}}{\mathrm{d}t} \right) \times \mathbf{r} + \boldsymbol{\Omega} \times \left( \mathbf{v}_{rot} + \boldsymbol{\Omega} \times \mathbf{r} \right)\\
\mathbf{a} &= \mathbf{a}_{rot} + 2 \boldsymbol{\Omega} \times \mathbf{v}_{rot} + \left( \frac{\mathrm{d} \boldsymbol{\Omega}}{\mathrm{d}t} \right) \times \mathbf{r} + \boldsymbol{\Omega} \times \left( \boldsymbol{\Omega} \times \mathbf{r} \right)
\end{align*}
$$

where we have rewritten $$\left( \frac{\mathrm{d} \mathbf{v}_{rot}}{\mathrm{d}t} \right)_{rot}$$, the time derivative of $$\mathbf{v}_{rot}$$ measured in the rotating frame, as $$\mathbf{a}_{rot}$$, the acceleration measured in the rotating frame.

If we rearrange this from the perspective of the rotating frame,

$$
\mathbf{a}_{rot} = \mathbf{a} - 2 \boldsymbol{\Omega} \times \mathbf{v}_{rot} - \left( \frac{\mathrm{d} \boldsymbol{\Omega}}{\mathrm{d}t} \right) \times \mathbf{r} - \boldsymbol{\Omega} \times \left( \boldsymbol{\Omega} \times \mathbf{r} \right)
$$

Multiplying through by the mass of an object $$m$$ gives us

$$
m\mathbf{a}_{rot} = \mathbf{F} - 2 m \boldsymbol{\Omega} \times \mathbf{v}_{rot} - m \left( \frac{\mathrm{d} \boldsymbol{\Omega}}{\mathrm{d}t} \right) \times \mathbf{r} - m \boldsymbol{\Omega} \times \left( \boldsymbol{\Omega} \times \mathbf{r} \right)
$$

This suggests the presence of 3 fictitious forces in the rotating frame of reference:
 - the Coriolis force $$\mathbf{F}_\text{Coriolis} = - 2 m \boldsymbol{\Omega} \times \mathbf{v}_{rot}$$
 - the centrifugal force $$\mathbf{F}_\text{centrifugal} = - m \boldsymbol{\Omega} \times \left( \boldsymbol{\Omega} \times \mathbf{r} \right)$$
 - the Euler (or azimuthal) force $$\mathbf{F}_\text{azimuthal} = - m \left( \frac{\mathrm{d} \boldsymbol{\Omega}}{\mathrm{d}t} \right) \times \mathbf{r}$$

These additional forces are required to fully describe the apparent motion of objects in the rotating frame, in addition to the acceleration $$\mathbf{a}$$ that results when some force $$\mathbf{F}$$ is applied on them.

### Derivation of the Lagrangian points

The following derivation follows the outlines of those given by Fitzpatrick[^fitzpatrick] and Greenspan[^greenspan].

Suppose we have two masses, $$m_1$$ and $$m_2$$, that are in circular orbits about their common barycentre. They each have an angular velocity $$\boldsymbol{\Omega}$$, which we will define to lie in the $$z$$ axis of a stationary frame centred on their barycentre. Their orbits therefore lie in the $$x-y$$ plane. Consider a rotating frame centred on the barycentre, rotating with the same angular velocity $$\Omega$$ about its $$z'$$ axis. Let this $$z'$$ axis lie in the same direction as the $$z$$ axis of the stationary frame. For convenience, we additionally define the $$x'$$ axis such that both $$m_1$$ and $$m_2$$ lie on the $$x'$$ axis. If the distance between the masses is $$R$$, then their coordinates in the rotating frame are

$$
\begin{gather*}
\mathbf{r}_1 = -\frac{m_2}{m_1 + m_2} R \mathbf{i}'\\
\mathbf{r}_2 = \frac{m_1}{m_1 + m_2} R \mathbf{i}'
\end{gather*}
$$

By Kepler's third law, $$\Omega$$ is given by

$$
\Omega^2 = \frac{G(m_1 + m_2)}{R^3}
$$

Suppose we place an infinitesimal mass $$\mu$$ at some position $$\mathbf{r} = x' \mathbf{i}' + y' \mathbf{j}' + z' \mathbf{k}'$$ in the rotating frame, and make the assumption that $$\mu$$ is so small it exerts no gravitational force on $$m_1$$ or $$m_2$$. Accordingly, the gravitational force acting on it is

$$
\mathbf{F} = - \frac{G m_1\mu}{\left|(\mathbf{r} - \mathbf{r}_1)\right|^3}(\mathbf{r} - \mathbf{r}_1) - \frac{G m_2\mu}{\left|(\mathbf{r} - \mathbf{r}_2)\right|^3}(\mathbf{r} - \mathbf{r}_2)
$$

In the rotating frame, its apparent acceleration is then

$$
\begin{align*}
\mathbf{a}_{rot} &= \mathbf{a} - 2 \boldsymbol{\Omega} \times \mathbf{v}_{rot} - \left( \frac{\mathrm{d} \boldsymbol{\Omega}}{\mathrm{d}t} \right) \times \mathbf{r} - \boldsymbol{\Omega} \times \left( \boldsymbol{\Omega} \times \mathbf{r} \right)\\
&= - \frac{Gm_1}{\left|(\mathbf{r} - \mathbf{r}_1)\right|^3}(\mathbf{r} - \mathbf{r}_1) - \frac{Gm_2}{\left|(\mathbf{r} - \mathbf{r}_2)\right|^3}(\mathbf{r} - \mathbf{r}_2) - 2 \boldsymbol{\Omega} \times \mathbf{v}_{rot} - \boldsymbol{\Omega} \times \left( \boldsymbol{\Omega} \times \mathbf{r} \right)
\end{align*}
$$

If we define $$\boldsymbol{\rho}_1 = \mathbf{r} - \mathbf{r}_1$$, $$\boldsymbol{\rho}_2 = \mathbf{r} - \mathbf{r}_2$$, then

$$
\begin{gather*}
\mathbf{a}_{rot} = - \frac{G m_1}{\rho_1^3}(\boldsymbol{\rho}_1) - \frac{G m_2}{\rho_2^3}(\boldsymbol{\rho}_2) - 2 \boldsymbol{\Omega} \times \mathbf{v}_{rot} - \boldsymbol{\Omega} \times \left( \boldsymbol{\Omega} \times \mathbf{r} \right)\\
\begin{aligned}
\ddot{x}' &= - \frac{G m_1}{\rho_1^3}(x' - r_1) - \frac{Gm_2}{\rho_2^3}(x' - r_2) + 2 \Omega \dot{y}' + \Omega^2 x'\\
\ddot{y}' &= - \frac{G m_1}{\rho_1^3}(y') - \frac{Gm_2}{\rho_2^3}(y') - 2 \Omega \dot{x}' + \Omega^2 y'\\
\ddot{z}' &= - \frac{G m_1}{\rho_1^3}(z') - \frac{Gm_2}{\rho_2^3}(z')
\end{aligned}
\end{gather*}
$$

Notice that if we take the partial derivatives of $$\frac{1}{\rho_1}$$ and $$\frac{1}{\rho_2}$$ with respect to $$x'$$:

$$
\begin{gather*}
\begin{aligned}
\frac{\partial}{\partial x'} \frac{1}{\rho_1} &= \frac{\partial}{\partial x} \left( (x' - r_1)^2 + (y')^2 + (z')^2 \right)^{-\frac{1}{2}}\\
&= -\frac{1}{2} \left( (x' - r_1)^2 + (y')^2 + (z')^2 \right)^{-\frac{3}{2}} (2) \left( x' - r_1 \right)\\
&= -\frac{x' - r_1}{\rho_1^3}
\end{aligned}\\
\begin{aligned}
\frac{\partial}{\partial x'} \frac{1}{\rho_2} &= \frac{\partial}{\partial x} \left( (x' - r_2)^2 + (y')^2 + (z')^2 \right)^{-\frac{1}{2}}\\
&= -\frac{x' - r_2}{\rho_2^3}
\end{aligned}
\end{gather*}
$$

Similarly, we can show that

$$
\begin{gather*}
\frac{\partial}{\partial y'} \frac{1}{\rho_1} = -\frac{y'}{\rho_1^3} \quad , \quad \frac{\partial}{\partial y'} \frac{1}{\rho_2} = -\frac{y'}{\rho_2^3}\\
\frac{\partial}{\partial z'} \frac{1}{\rho_1} = -\frac{z'}{\rho_1^3} \quad , \quad \frac{\partial}{\partial z'} \frac{1}{\rho_2} = -\frac{z'}{\rho_2^3}
\end{gather*}
$$

Therefore,

$$
\begin{align*}
\ddot{x}' &= \frac{\partial}{\partial x'}\left(\frac{G m_1}{\rho_1} + \frac{G m_2}{\rho_2}\right) + 2 \Omega \dot{y}' + \Omega^2 x'\\
\ddot{y}' &= \frac{\partial}{\partial y'}\left(\frac{G m_1}{\rho_1} + \frac{G m_2}{\rho_2}\right) - 2 \Omega \dot{x}' + \Omega^2 y'\\
\ddot{z}' &= \frac{\partial}{\partial z'}\left(\frac{G m_1}{\rho_1} + \frac{G m_2}{\rho_2}\right)
\end{align*}
$$

If we write a potential $$U'$$ such that

$$U' = \left(-\frac{G m_1}{\rho_1} - \frac{G m_2}{\rho_2}\right) - \frac{1}{2} \Omega^2 \left( (x')^2 + (y')^2 \right)$$

we can rewrite the above as

$$
\begin{gather*}
\begin{aligned}
\ddot{x}' &= -\frac{\partial U'}{\partial x'} + 2 \Omega \dot{y}'\\
\ddot{y}' &= -\frac{\partial U'}{\partial y'} - 2 \Omega \dot{x}'\\
\ddot{z}' &= -\frac{\partial U'}{\partial z'}
\end{aligned}\\
\Rightarrow \mathbf{a}_{rot} = -\nabla U' - 2 \boldsymbol{\Omega}\times\mathbf{v}_{rot}
\end{gather*}
$$

This potential $$U'$$ acts as the apparent potential of $$\mu$$, and it is the sum of the gravitational potential and the potential due to the apparent centrifugal force. The acceleration of the object is due to the combined effect of the force (the gradient of the potential) and the Coriolis force.

Since the velocity $$\mathbf{v}_{rot}$$ and acceleration $$\mathbf{a}_{rot}$$ of $$\mu$$ at the Lagrangian points should be zero in the rotating frame, then $$-\nabla U' = \mathbf{0}$$ at these points. 

The easiest coordinate to examine is $$z'$$. We require that

$$
- \frac{\partial U'}{\partial z'} = - \left(\frac{G m_1}{\rho_1^3} + \frac{G m_2}{\rho_2^3}\right) z' = 0
$$

However, since $$\rho_1$$ and $$\rho_2$$ are always greater than zero, the solution requires $$z' = 0$$.

Next, we turn our focus to $$x'$$ and $$y'$$:

$$
\begin{gather*}
-\frac{\partial U'}{\partial x'} = - \frac{G m_1}{\rho_1^3}(x' - r_1) - \frac{G m_2}{\rho_2^3}(x' - r_2) + \Omega^2 x' = 0\\
-\frac{\partial U'}{\partial y'} =  - \frac{G m_1}{\rho_1^3}(y') - \frac{Gm _2}{\rho_2^3}(y') + \Omega^2 y' = 0
\end{gather*}
$$

The two immediately obvious sets of solutions for the second equation are

$$
\left\{
\begin{aligned}
0 &= y'\\
0 &= - \frac{G m_1}{\rho_1^3} - \frac{Gm_2}{\rho_2^3} + \Omega^2
\end{aligned}
\right.
$$

Consider the first condition. $$y' = 0$$ implies that $$\rho_1^2 = (x' - r_1)^2$$ and $$\rho_2^2 = (x' - r_2)^2$$. We have to be wary of taking the square roots, as $$\rho_1$$ and $$\rho_2$$ are positive quantities by default (as the magnitudes of $$\boldsymbol{\rho}_1$$ and $$\boldsymbol{\rho}_2$$), but the same cannot be said for $$(x' - r_1)$$ and $$(x' - r_2)$$. Because $$r_1 < 0 < r_2$$ as defined earlier, there are three cases to consider:

$$
\begin{cases}
-\infty < x' < r_1 &\Rightarrow (x' - r_1) < 0, (x' - r_2) < 0 &\Rightarrow \rho_1 = -(x' - r_1), \rho_2 = -(x' - r_2)\\
r_1 < x' < r_2 &\Rightarrow (x' - r_1) > 0, (x' - r_2) < 0 &\Rightarrow \rho_1 = (x' - r_1), \rho_2 = -(x' - r_2)\\
r_2 < x' < \infty &\Rightarrow (x' - r_1) > 0, (x' - r_2) > 0 &\Rightarrow \rho_1 = (x' - r_1), \rho_2 = (x' - r_2)
\end{cases}
$$

Therefore:

$$
\begin{cases}
-\infty < x' < r_1 &\Rightarrow + \frac{G m_1}{\rho_1^2} + \frac{G m_2}{\rho_2^2} + \Omega^2 x' = 0\\
r_1 < x' < r_2 &\Rightarrow - \frac{G m_1}{\rho_1^2} + \frac{G m_2}{\rho_2^2} + \Omega^2 x' = 0\\
r_2 < x' < \infty &\Rightarrow - \frac{G m_1}{\rho_1^2} - \frac{G m_2}{\rho_2^2} + \Omega^2 x' = 0
\end{cases}
$$

These correspond to the cases for L3, L1 and L2 respectively.

For L1, $$r_1 < x' < r_2$$, and thus

$$
\begin{cases}
x' - r_1 = \rho_1\\
r_2 - x' = \rho_2
\end{cases}
$$

We can rearrange this to obtain

$$
x' = \frac{m_1 \rho_1 - m_2 \rho_2}{m_1 + m_2}
$$

which we can substitute into our original equation to eliminate $$x'$$,

$$
\begin{align*}
- \frac{G m_1}{\rho_1^2} + \frac{G m_2}{\rho_2^2} + \Omega^2 \frac{m_1 \rho_1 - m_2 \rho_2}{m_1 + m_2} &= 0\\
- \frac{G m_1}{\rho_1^2} + \frac{G m_2}{\rho_2^2} + \frac{G}{R^3} (m_1 \rho_1 - m_2 \rho_2) &= 0\\
- m_1 \left(\frac{1}{\rho_1^2} - \frac{\rho_1}{R^3}\right) + m_2 \left(\frac{1}{\rho_2^2} - \frac{\rho_2}{R^3}\right) &= 0
\end{align*}
$$

For our convenience, define $$\alpha = \frac{\rho_1}{R}, \beta = \frac{\rho_2}{R}$$:

$$
\begin{align*}
-m_1 \left(\frac{1}{\alpha^2} - \alpha\right) + m_2 \left(\frac{1}{\beta^2} - \beta\right) &= 0\\
-m_1 \left(\frac{1 - \alpha^3}{\alpha^2}\right) + m_2 \left(\frac{1 - \beta^3}{\beta^2}\right) &= 0\\
\frac{m_2}{m_1} &= \frac{ \beta^2 (1 - \alpha^3) }{ \alpha^2 \left(1 - \beta^3\right) }
\end{align*}
$$

Since $$\alpha + \beta = 1$$, this also means

$$
\begin{align*}
\frac{m_2}{m_1} &= \frac{ (1 - \alpha)^2 (1 - \alpha^3) }{ \alpha^2 \left(1 - (1 - \alpha)^3\right) }\\
&= \frac{ \beta^2 \left(1 - (1 - \beta)^3\right) }{ (1 - \beta)^2 (1 - \beta^3) }
\end{align*}
$$

The expression on the right hand side for $$\beta$$ is 0 when $$\beta = 0$$. Hence, in the case that $$m_2 \ll m_1$$, we can re-express the right hand side as a Taylor series about $$\beta = 0$$.

For L2, $$r_1 < r_2 < x'$$, and therefore

$$
\begin{cases}
x' - r_1 = \rho_1\\
x' - r_2 = \rho_2
\end{cases}
$$

This implies

$$
x' = \frac{m_1 \rho_1 + m_2 \rho_2}{m_1 + m_2}
$$

As above, we can rewrite the force balance in terms of $$\alpha$$ and $$\beta$$:

$$
\begin{align*}
- \frac{G m_1}{\rho_1^2} - \frac{G m_2}{\rho_2^2} + \Omega^2 \frac{m_1 \rho_1 + m_2 \rho_2}{m_1 + m_2} &= 0\\
- \frac{G m_1}{\rho_1^2} - \frac{G m_2}{\rho_2^2} + \frac{G}{R^3} (m_1 \rho_1 + m_2 \rho_2) &= 0\\
m_1 \left(-\frac{1}{\rho_1^2} + \frac{\rho_1}{R^3}\right) + m_2 \left(-\frac{1}{\rho_2^2} + \frac{\rho_2}{R^3}\right) &= 0\\
m_1 \left(\frac{\alpha^3 - 1}{\alpha^2}\right) + m_2 \left(\frac{\beta^3 - 1}{\beta^2}\right) &= 0\\
\frac{m_2}{m_1} &= - \frac{\beta^2 (\alpha^3 - 1)}{\alpha^2 (\beta^3 - 1)}
\end{align*}
$$

Here, $$\alpha - \beta = 1$$, and thus

$$
\begin{align*}
\frac{m_2}{m_1} &= \frac{(\alpha - 1)^2 (\alpha^3 - 1)}{\alpha^2 \left(1 - (\alpha - 1)^3\right)}\\
&= \frac{ \beta^2 \left((1 + \beta)^3 - 1\right) }{ (1 + \beta)^2 (1 - \beta^3) }
\end{align*}
$$

Once again, the expression on the right hand side for $$\beta$$ is 0 when $$\beta = 0$$.

For L3, $$x' < r_1 < r_2$$, and therefore

$$
\begin{cases}
r_1 - x' = \rho_1\\
r_2 - x' = \rho_2
\end{cases}
$$

This implies

$$
x' = -\frac{m_1 \rho_1 + m_2 \rho_2}{m_1 + m_2}
$$

As above, we can rewrite the force balance in terms of $$\alpha$$ and $$\beta$$:

$$
\begin{align*}
+ \frac{G m_1}{\rho_1^2} + \frac{G m_2}{\rho_2^2} - \Omega^2 \frac{m_1 \rho_1 + m_2 \rho_2}{m_1 + m_2} &= 0\\
+ \frac{G m_1}{\rho_1^2} + \frac{G m_2}{\rho_2^2} - \frac{G}{R^3} (m_1 \rho_1 + m_2 \rho_2) &= 0\\
m_1 \left(\frac{1}{\rho_1^2} - \frac{\rho_1}{R^3}\right) + m_2 \left(\frac{1}{\rho_2^2} - \frac{\rho_2}{R^3}\right) &= 0\\
m_1 \left(\frac{1 - \alpha^3}{\alpha^2}\right) + m_2 \left(\frac{1 - \beta^3}{\beta^2}\right) &= 0\\
\frac{m_2}{m_1} &= - \frac{\beta^2 (1 - \alpha^3)}{\alpha^2 (1 - \beta^3)}
\end{align*}
$$

Here, $$\beta - \alpha = 1$$, and thus

$$
\begin{align*}
\frac{m_2}{m_1} &= \frac{ (\alpha + 1)^2 (1 - \alpha^3) }{ \alpha^2 \left((1 + \alpha)^3 - 1\right) }\\
&= \frac{ \beta^2 \left((\beta - 1)^3 - 1\right) }{ (\beta - 1)^2 (1 - \beta^3) }
\end{align*}
$$

The expression on the right hand side for $$\alpha$$ is 0 when $$\alpha = 1$$ (and $$\beta = 2$$; the case where $$\alpha < 0$$ would not be physical).


Now consider the second condition, that $$0 = - \frac{G m_1}{\rho_1^3} - \frac{Gm_2}{\rho_2^3} + \Omega^2$$. We can rewrite the expression for $$-\frac{\partial U'}{\partial x'}$$ as:

$$
\begin{align*}
-\frac{\partial U'}{\partial x'} &= - \frac{G m_1}{\rho_1^3}(x') + \frac{G m_1}{\rho_1^3}(r_1) - \frac{Gm_2}{\rho_2^3}(x') + \frac{Gm_2}{\rho_2^3}(r_2) + \Omega^2 x'\\
0 &= \frac{G m_1}{\rho_1^3}(r_1) + \frac{Gm_2}{\rho_2^3}(r_2)\\
-\frac{m_1 r_1}{\rho_1^3}  &= \frac{m_2 r_2}{\rho_2^3}
\end{align*}
$$

Because $$m_1 r_1 + m_2 r_2 = 0 \Rightarrow -m_1 r_1 = m_2 r_2$$,

$$
\begin{align*}
\frac{1}{\rho_1^3} &= \frac{1}{\rho_2^3}\\
\Rightarrow \rho_1 &= \rho_2\
\end{align*}
$$

Having established that $$\rho_1$$ and $$\rho_2$$ are equal, we can find their value:

$$
\begin{align*}
\Omega^2 &= \frac{G m_1}{\rho_1^3} + \frac{Gm_2}{\rho_2^3}\\
\frac{G (m_1 + m_2)}{R^3} &= \frac{G (m_1 + m_2)}{\rho_1^3} = \frac{G (m_1 + m_2)}{\rho_2^3}\\
\Rightarrow \rho_1 = \rho_2 &= R
\end{align*}
$$

This tells us that $$m_1$$, $$m_2$$ and $$\mu$$ form an equilateral triangle of side length $$R$$. We can immediately determine the values of $$x'$$ and $$y'$$ with this information, but we can also solve explicitly for $x'$ and $y'$, given that

$$
\begin{align*}
(x' - r_1)^2 + (y')^2 &= R^2\\
(x' - r_2)^2 + (y')^2 &= R^2
\end{align*}
$$

Taking the difference of the two equations to eliminate $$y'$$,

$$
\begin{align*}
(2 x' - r_1 - r_2)(r_2 - r_1) &= 0\\
\Rightarrow x' &= \frac{r_1 + r_2}{2}\\
&= \frac{R}{2} + r_1\\
\therefore \frac{R^2}{4} + (y')^2 &= R^2\\
y' &= \pm \frac{\sqrt{3}}{2} R
\end{align*}
$$

Thus, L4 is the point corresponding to $$(x', y', z') = (\frac{R}{2} + r_1, +\frac{\sqrt{3}}{2} R, 0)$$, and L5 is the point corresponding to $$(x', y', z') = (\frac{R}{2} + r_1, -\frac{\sqrt{3}}{2} R, 0)$$.

In Lagrange's original essay, he demonstrates the existence of what we now know as the L4 and L5 points without the requirement that $$\mu$$ be of a negligible mass[^lagrange].

## References

[^gibbs-1901]: Gibbs JW (Josiah W, Wilson EB. Vector analysis; a text-book for the use of students of mathematics and physics [Internet]. New York, C. Scribner’s Sons; 1901 [cited 2020 Jan 23]. 470 p. Available from: <http://archive.org/details/vectoranalysiste00gibbiala>
[^meeus-1998]: Meeus J. Astronomical Algorithms. 2nd ed. Willmann-Bell, Inc.; 1998. 
[^fitzpatrick]: Fitzpatrick R. Lagrange points [Internet]. 2016 [cited 2020 Feb 6]. Available from: <https://farside.ph.utexas.edu/teaching/celestial/Celestial/node84.html>
[^greenspan]: Greenspan T. Stability of the Lagrange Points, L4 and L5. Available from: <http://pi.math.cornell.edu/~templier/junior/final_paper/Thomas_Greenspan-Stability_of_Lagrange_points.pdf>
[^lagrange]: Lagrange J-L. Œuvres de Lagrange [Internet]. Vol. 6. Paris: Gauthier-Villars; 1867 [cited 2020 Mar 7]. Available from: <https://gallica.bnf.fr/ark:/12148/bpt6k229225j>

<!--
https://archive.org/details/vectoranalysiste00gibbiala/page/134
-->