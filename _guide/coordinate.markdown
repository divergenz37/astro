---
title: Coordinate Systems
chapter: 10
---
# Coordinate Systems

## Spherical trigonometry

### Basics

![Spherical triangle](./figures/sphericaltriangle.png)

A spherical triangle is defined by three points on the unit sphere, and the arcs of the great circles that connect these three points. 

A great circle is a circle on the surface of the unit sphere with the same radius as the unit sphere, and whose centre is the centre of the unit sphere. It is formed by the intersection of the surface of the unit sphere with a plane passing through its centre. Examples of great circles include the equator and circles of longitude.

In contrast, a minor circle is a circle on the surface of the unit sphere whose radius is less than that of the unit sphere, and whose centre is not located at the centre of the unit sphere. It is formed by the intersection of the surface of the unit sphere with a plane that does not pass through its centre. Examples of minor circles include circles of latitude (excluding the equator).

Refer to the figure above for an example of a spherical triangle $$ABC$$ on a unit sphere centred at $$O$$. By convention, the vertices of the triangle are labelled with capital letters, and the sides of the triangle are labelled with small letters. In addition, sides and angles are labelled such that side $$a$$ is the arc opposite angle $$A$$, side $$b$$ is the arc opposite angle $$B$$, and side $$c$$ is the arc opposite angle $$C$$. The sphere is usually assumed to be of unit radius, and the arc lengths of the sides are measured as angles. For a unit sphere, the angle subtended by each arc is the same as the arc length; for spheres of other radii, one can convert the angles to arc lengths by multiplying by the radius. All sides and angles of a proper spherical triangle are less than 180° or $$\pi$$ radians.

### Polar triangles

Consider the great circle passing through points $$B$$ and $$C$$ of the spherical triangle. If a line passing through $$O$$ is drawn perpendicular to the plane of the great circle, it meets the surface of the sphere at two poles. The pole on the same side of the great circle as $$A$$ is the pole of $$A$$ and is denoted as $$A'$$. The same procedure can be repeated by analogy to obtain $$B'$$ and $$C'$$. The spherical triangle formed by $$A'$$, $$B'$$ and $$C'$$ is the polar triangle of spherical triangle $$ABC$$.

The spherical triangles $$ABC$$ and $$A'B'C'$$ are related by the following:

$$
\begin{gather*}
\begin{gathered}
A' = \pi - a\\
a' = \pi - A
\end{gathered}\\
\begin{gathered}
B' = \pi - b\\
b' = \pi - B
\end{gathered}\\
\begin{gathered}
C' = \pi - c\\
c' = \pi - C
\end{gathered}
\end{gather*}
$$

### Spherical excess

Unlike planar triangles, the angles of spherical triangles may sum to more than 180° or $$\pi$$ radians. In fact, for the angles $$A$$, $$B$$, and $$C$$ of a proper spherical triangle,

$$
\pi < A + B + C < 3\pi
$$

The difference $$ (A + B + C) - \pi = E$$ is termed the *spherical excess*, and is equal to the area of the spherical triangle.

### Spherical cosine rule

The spherical cosine rule is given by

$$
\begin{equation}
\cos{a} = \cos{b}\cos{c} + \sin{b}\sin{c}\cos{A}
\end{equation}
$$

The relation can be proven using trigonometry, by considering a plane tangent to the sphere at the point $$A$$. Extend the lines $$\overline{OB}$$ and $$\overline{OC}$$ to meet the plane at points $$B'$$ and $$C'$$ respectively. 

Equating the planar cosine rules for the shared side $$\overline{B'C'}$$:

$$
\begin{align*}
\tan^2{b} + \tan^2{c} - 2 \tan{b}\tan{c}\cos{A} &= \sec^2{b} + \sec^2{c} - 2 \sec{b}\sec{c}\cos{a}\\
2 \sec{b}\sec{c}\cos{a} &= 2 + 2 \tan{b}\tan{c}\cos{A}\\
\cos{a} &= \cos{b}\cos{c} + \sin{b}\sin{c}\cos{A}
\end{align*}
$$

where we have used the identity $$\tan^2{\theta} + 1 = \sec^2{\theta}$$. 

A proof using vector geometry is also straightforward. Let $$\mathbf{a} = \overrightarrow{OA}$$, $$\mathbf{b} = \overrightarrow{OB}$$, and $$\mathbf{c} = \overrightarrow{OC}$$ respectively. Then the plane containing $$O$$, $$A$$ and $$B$$ has normal vector $$\mathbf{n}_{AB} = \mathbf{a} \times \mathbf{b}$$, and the plane containing $$O$$, $$A$$ and $$C$$ has normal vector $$\mathbf{n}_{AC} = \mathbf{a} \times \mathbf{c}$$.

The angle $$A$$ is equal to the angle between the two planes, which is equal to the angle between the two normal vectors. Using the geometrical definition of the dot product we have

$$
\begin{align*}
\mathbf{n}_{AB} \cdot \mathbf{n}_{AC} &= \lvert\mathbf{n}_{AB}\rvert\lvert\mathbf{n}_{AC}\rvert\cos{A}\\
&= \lvert\mathbf{a} \times \mathbf{b}\rvert\lvert\mathbf{a} \times \mathbf{c}\rvert\cos{A}\\
&= \sin{c}\sin{b}\cos{A}
\end{align*}
$$

However, using the vector identity $$(\mathbf{a} \times \mathbf{b}) \cdot (\mathbf{c} \times \mathbf{d}) = (\mathbf{a} \cdot \mathbf{c})(\mathbf{b} \cdot \mathbf{d}) - (\mathbf{a} \cdot \mathbf{d})(\mathbf{b} \cdot \mathbf{c})$$, we can also show that

$$
\begin{align*}
\mathbf{n}_{AB} \cdot \mathbf{n}_{AC} &=(\mathbf{a} \times \mathbf{b}) \cdot (\mathbf{a} \times \mathbf{c})\\
&= (\mathbf{a} \cdot \mathbf{a})(\mathbf{b} \cdot \mathbf{c}) - (\mathbf{a} \cdot \mathbf{c})(\mathbf{b} \cdot \mathbf{a})\\
&= (1)(\cos{a}) - (\cos{b})(\cos{c})
\end{align*}
$$

Equating these two results gives the spherical cosine rule.

### Spherical sine rule

The spherical sine rule is given by

$$
\begin{equation}
\frac{\sin{A}}{\sin{a}} = \frac{\sin{B}}{\sin{b}} = \frac{\sin{C}}{\sin{c}}
\end{equation}
$$

The spherical sine rule can be derived from the spherical cosine rule. First, rearrange and square both sides of the equation:

$$
\begin{align*}
\cos{a} - \cos{b}\cos{c} &= \sin{b}\sin{c}\cos{A}\\
\cos^2{a} + \cos^2{b}\cos^2{c} - 2\cos{a}\cos{b}\cos{c} &= \sin^2{b}\sin^2{c}\cos^2{A}
\end{align*}
$$

However, we can rewrite the right hand side as follows:

$$
\begin{align*}
\sin^2{b}\sin^2{c}\cos^2{A} &= \sin^2{b}\sin^2{c} - \sin^2{b}\sin^2{c}\sin^2{A}\\
&= (1 - \cos^2{b})(1 - \cos^2{c}) - \sin^2{b}\sin^2{c}\sin^2{A}\\
&= 1 - \cos^2{b} - \cos^2{c} + \cos^2{b}\cos^2{c} - \sin^2{b}\sin^2{c}\sin^2{A}
\end{align*}
$$

Using this result gives

$$
\begin{align}
\sin^2{b}\sin^2{c}\sin^2{A} &= 1 - \cos^2{a} - \cos^2{b} - \cos^2{c} - 2\cos{a}\cos{b}\cos{c} \nonumber\\
\frac{\sin^2{A}}{\sin^2{a}} &= \frac{1 - \cos^2{a} - \cos^2{b} - \cos^2{c} - 2\cos{a}\cos{b}\cos{c}}{\sin^2{a}\sin^2{b}\sin^2{c}} \label{eq:spherical-sine-constant}
\end{align}
$$

The quantity on the right in Equation $$\ref{eq:spherical-sine-constant}$$ is invariant when $$A$$ and $$a$$ are substituted for $$B$$ and $$b$$, or $$C$$ and $$c$$ respectively. Therefore,

$$
\begin{equation}
\frac{\sin^2{A}}{\sin^2{a}} = \frac{\sin^2{B}}{\sin^2{b}} = \frac{\sin^2{C}}{\sin^2{c}} \label{eq:spherical-sine-equality-squared}
\end{equation}
$$

Since the angles and sides in a spherical triangle are all less than 180° or $$\pi$$ radians, the sines of these quantities are all positive. Thus, the positive sign is adopted when taking the square root of Equation $$\ref{eq:spherical-sine-equality-squared}$$ to derive the spherical sine rule.

The vector geometry proof involves the geometric property of the cross product. Using the same definitions as in the proof for the spherical cosine rule (see [Spherical cosine rule](#spherical-cosine-rule)), 

$$
\begin{align*}
\mathbf{n}_{AB} \cdot \mathbf{n}_{AC} &= \lvert\mathbf{n}_{AB}\rvert\lvert\mathbf{n}_{AC}\rvert\sin{A}\\
&= \lvert\mathbf{a} \times \mathbf{b}\rvert\lvert\mathbf{a} \times \mathbf{c}\rvert\sin{A}\\
&= \sin{c}\sin{b}\sin{A}
\end{align*}
$$

However,

$$
\begin{align*}
(\mathbf{a} \times \mathbf{b}) \times (\mathbf{a} \times \mathbf{c}) &= (\mathbf{a} \cdot (\mathbf{b} \times \mathbf{c}))\mathbf{a}\\
\lvert(\mathbf{a} \times \mathbf{b}) \times (\mathbf{a} \times \mathbf{c})\rvert &= \lvert\mathbf{a} \cdot (\mathbf{b} \times \mathbf{c})\rvert\lvert\mathbf{a}\rvert\\
\mathbf{n}_{AB} \cdot \mathbf{n}_{AC} &= \lvert\mathbf{a} \cdot (\mathbf{b} \times \mathbf{c})\rvert
\end{align*}
$$

However, $$\mathbf{b} \times \mathbf{c}$$ produces a perpendicular vector with magnitude equal to the area of the parallelogram with sides formed by $$\mathbf{b}$$ and $$\mathbf{c}$$. The *scalar triple product* $$\mathbf{a} \cdot (\mathbf{b} \times \mathbf{c})$$ therefore gives the *signed volume* of the parallelepiped with sides formed by $$\mathbf{a}$$, $$\mathbf{b}$$ and $$\mathbf{c}$$. The value of this product is unchanged when the arguments undergo a circular shift: 

$$
\mathbf{a} \cdot (\mathbf{b} \times \mathbf{c}) = \mathbf{b} \cdot (\mathbf{c} \times \mathbf{a}) = \mathbf{c} \cdot (\mathbf{a} \times \mathbf{b})
$$

It is also unchanged when the order of the operations is swapped: 

$$
\mathbf{a} \cdot (\mathbf{b} \times \mathbf{c}) = (\mathbf{a} \times \mathbf{b}) \cdot \mathbf{c}
$$


The value changes sign if the cyclic order of the arguments is changed: 

$$
\mathbf{a} \cdot (\mathbf{b} \times \mathbf{c}) = -\mathbf{a} \cdot (\mathbf{c} \times \mathbf{b})
$$


Given these properties, $$\lvert\mathbf{a} \cdot (\mathbf{b} \times \mathbf{c})\rvert = V$$ where $$V$$ is the unsigned volume of the parallelepiped formed by $$\mathbf{a}$$, $$\mathbf{b}$$ and $$\mathbf{c}$$. (It is also 6 times the volume of the tetrahedron $$OABC$$.) Using this result,

$$
\begin{align*}
\sin{c}\sin{b}\sin{A} &= V\\
\frac{\sin{A}}{\sin{a}} &= \frac{V}{\sin{a}\sin{b}\sin{c}}
\end{align*}
$$

Applying similar principles for angles $$B$$ and $$C$$ results in the spherical sine rule,

$$
\begin{equation}
\frac{\sin{A}}{\sin{a}} = \frac{\sin{B}}{\sin{b}} = \frac{\sin{C}}{\sin{c}} = \frac{V}{\sin{a}\sin{b}\sin{c}}
\end{equation}
$$

## Celestial coordinate systems

### Horizontal coordinate system

The horizontal coordinate system is probably the most intuitive to the casual observer. It is used to describe the positions of objects in the sky as seen by an observer. The two coordinates are the *altitude* and *azimuth* of the object. Altitude refers to the angular distance above or below the horizon, i.e. an angle of elevation of depression. The altitude of an object may range from −90° at the nadir to +90° at the zenith, and the horizon serves as the reference for 0° altitude. The symbol for altitude is usually $$h$$. Azimuth refers to the direction or bearing of the object relative to a cardinal direction. This is usually measured clockwise from the north towards the east, although south has also been used as the point of origin (again measuring clockwise towards the west). The azimuth of an object may range from 0 to 360°, and is usually represented by $$A$$.

Due to the Earth's rotation, the sky appears to revolve around an observer. Therefore, the horizontal coordinates of an object in the sky will necessarily vary with time. In addition, because horizontal coordinates are measured relative to an observer, the position of an object will also vary  with the observer's location and orientation. To reference the positions of celestial objects in a more consistent manner, other coordinate systems that are not similarly affected by the Earth's rotation must be used.

### Equatorial coordinate system

The equatorial coordinate system is centred on the Earth's centre (i.e. geocentric). It describes the declination (equivalent to latitude) and right ascension (equivalent to longitude) of celestial objects as measured relative to the Earth. The plane of the Earth's equator serves as the plane of reference for 0° declination, forming the celestial equator. The limits of declination are +90° at the north celestial pole (the extension of the Earth's north pole) and −90° at the south celestial pole (the extension of the Earth's south pole). The symbol for declination is $$\delta$$.

Right ascension is traditionally measured eastwards from the vernal equinox. This is the point where the ecliptic, the Sun's path across the celestial sphere, crosses the celestial equator in a northwards direction. Right ascension is traditionally measured in hours, minutes and seconds, where 24 hours correspond to 360°. Therefore, the right ascension of the vernal equinox is 0 h. The symbol for right ascension is $$\alpha$$.

A quantity related to right ascension that may be used in local observations is the local hour angle of an object. The hour angle of an object is the angle between the plane of the local meridian, which passes through the local zenith and the celestial poles, and the plane containing the object and the celestial poles. It is measured from the local meridian and increases towards the west. The local hour angle $$H$$ of an object is related to the local sidereal time $$LST$$ of the observer and the right ascension $$\alpha$$ of the object by

$$
H = LST - \alpha
$$

By inference, the local sidereal time is also the local hour angle of the vernal equinox.

### Ecliptic coordinate system

The ecliptic coordinate system is frequently used to describe objects in the Solar System. It uses the plane of the Earth's orbit as its plane of reference, which is convenient as many of the major objects in the Solar System lie close to the ecliptic.

The ecliptic coordinate system may be centred around the Earth (geocentric) or the Sun (heliocentric). Because it is often used to describe the positions of objects in space, objects are referred to by their ecliptic longitude and latitude, and if necessary, distance. The ecliptic latitude is positive north of the ecliptic, and negative south of the ecliptic. The ecliptic longitude is measured from the vernal equinox and increases eastwards along the ecliptic. The convention is to use the Greek symbols $$\lambda$$, $$\beta$$, $$\Delta$$ for geocentric ecliptic longitude, latitude and distance respectively. For the heliocentric quantities, Latin alphabets are usually used e.g. $$l$$, $$b$$ and $$r$$.

### Galactic coordinate system

The galactic coordinate system is defined such that the reference plane passes through the Sun and is parallel to the mean plane of the Milky Way (based on observations of neutral hydrogen), and the origin of longitude lies approximately in the direction of the galactic centre. Galactic latitude is positive north of the reference plane (towards the north galactic pole) and negative south the reference plane, and the galactic longitude increases eastwards from the meridian.

The International Astronomical Union defined the north galactic pole at $$\alpha = 12 ^\mathrm{h} 49 ^\mathrm{m}$$ and $$\delta = +27.4°$$ in the epoch B1950.0, and the meridian of zero longitude was defined as the great semicircle originating at the north galactic pole at the position angle $$\theta = 123°$$, chosen such that it coincides with the direction of Sagittarius A[^iau-1958]. In J2000.0 coordinates, the north galactic pole is now at $$\alpha = 12 ^\mathrm{h} 51 ^\mathrm{m} 26.282 ^\mathrm{s}$$ and $$\delta = +27° 07' 42.01''$$, and the origin is now at $$\alpha = 17 ^\mathrm{h} 45 ^\mathrm{m} 37.224 ^\mathrm{s}$$ and $$\delta = -28° 56' 10.23''$$[^reid-2004][^liu-2011]. Presently, the north galactic pole lies in Coma Berenices, and the galactic origin lies in Sagittarius.

### Coordinate conversions

The following coordinate conversions may be derived using the principles of spherical trigonometry.

### Equatorial and horizontal

The expressions involve the use of the local hour angle $$H$$, which may be found from the local sidereal time and the right ascension by $$H = LST - \alpha$$. The latitude of the observer is taken to be $\phi$.

Equatorial to horizontal:

$$
\begin{gather}
\tan{A} = \frac{ -\cos{\delta}\sin{H} }{ \cos{\phi}\sin{\delta} - \sin{\phi}\cos{\delta}\cos{H} }\\
\sin{h} = \sin{\phi}\sin{\delta} + \cos{\phi}\cos{\delta}\cos{H}
\end{gather}
$$

The expression for azimuth here uses the convention of measuring eastwards from the north. The signs are kept in the expression such that if the numerator and denominator are used as operands in a 2-argument arctangent, the result will be as described above. Otherwise, care must be taken to place the final result in the correct quadrant. If the azimuth is to be measured from the south, simply negate both the numerator and denominator.

Horizontal to equatorial:

$$
\begin{gather}
\tan{H} = \frac{ -\cos{h}\sin{A} }{ \cos{\phi}\sin{h} - \sin{\phi}\cos{h}\cos{A} }\\
\sin{\delta} = \sin{\phi}\sin{h} + \cos{\phi}\cos{h}\cos{A}
\end{gather}
$$

Again, the azimuth is measured eastwards from the north.

### Equatorial and ecliptic

In the following expressions, $$\epsilon$$ is the obliquity of the ecliptic, which is the angle between the ecliptic and the celestial equator. For the standard equinox for J2000.0, the obliquity of the ecliptic is $$\epsilon_\mathrm{J2000.0} = 23°26'21.406'' = 84 381.406''$$

Equatorial to ecliptic:

$$
\begin{gather}
\tan{\lambda} = \frac{ \sin{\alpha}\cos{\delta}\cos{\epsilon} + \sin{\delta}\sin{\epsilon} }{\cos{\alpha}\cos{\delta}}\\
\sin{\beta} = \sin{\delta}\cos{\epsilon} - \cos{\delta}\sin{\epsilon}\sin{\alpha}
\end{gather}
$$

Ecliptic to equatorial:

$$
\begin{gather}
\tan{\alpha} = \frac{ \sin{\lambda}\cos{\beta}\cos{\epsilon} - \sin{\beta}\sin{\epsilon} }{\cos{\lambda}\cos{\beta}}\\
\sin{\delta} = \sin{\beta}\cos{\epsilon} + \cos{\beta}\sin{\epsilon}\sin{\lambda}
\end{gather}
$$

### Equatorial and galactic

The following expressions should be used with caution, as the constants below are defined for equatorial coordinates referred to the standard equinox of B1950.0. Therefore, any coordinates referred to another epoch e.g. J2000.0 should be converted to the B1950.0 equivalents before the expressions are used. (Alternatively, one may convert the constants below to their appropriate equivalents in J2000.0).

Let $$\alpha_{NGP} = 12 ^\mathrm{h} 49 ^\mathrm{m} = 192.25°$$, $$\delta_{NGP} = +27.4°$$, $$\theta = 123°$$.

Equatorial to galactic:

$$
\begin{gather}
\tan{(\theta - l)} = \frac{ \cos{\delta}\sin{(\alpha - \alpha_{NGP})} }{ \sin{\delta}\cos{\delta_{NGP}} - \cos{\delta}\sin{\delta_{NGP}}\cos{(\alpha - \alpha_{NGP})} }\\
\sin{b} = \sin{\delta}\sin{\delta_{NGP}} + \cos{\delta}\cos{\delta_{NGP}}\cos{(\alpha - \alpha_{NGP})}
\end{gather}
$$

Galactic to equatorial:

$$
\begin{gather}
\tan{(\alpha - \alpha_{NGP})} = \frac{ \cos{b}\sin{(\theta - l)} }{ \sin{b}\cos{\delta_{NGP}} - \cos{b}\sin{\delta_{NGP}}\cos{(\theta - l)} }\\
\sin{\delta} = \sin{b}\sin{\delta_{NGP}} + \cos{b}\cos{\delta_{NGP}}\cos{(\theta - l)}
\end{gather}
$$

## References

[^iau-1958]: Blaauw A, Gum CS, Pawsey JL, Westerhout G. The new I. A. U. system of galactic coordinates (1958 revision). Monthly Notices of the Royal Astronomical Society. 1960;121:123. 
[^reid-2004]: Reid MJ, Brunthaler A. The Proper Motion of Sgr A*: II. The Mass of Sgr A*. ApJ. 2004 Dec;616(2):872–84. 
[^liu-2011]: Liu J-C, Zhu Z, Zhang H. Reconsidering the Galactic coordinate system. A&A. 2011 Feb 1;526:A16. 

<!--
https://archive.org/details/SphericalAstronomy
https://arxiv.org/abs/astro-ph/0408107
http://adsabs.harvard.edu/full/1960MNRAS.121..123B
https://www.aanda.org/articles/aa/pdf/2011/02/aa14961-10.pdf
-->