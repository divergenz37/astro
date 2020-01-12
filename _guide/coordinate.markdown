---
title: Coordinate Systems
chapter: 10
---
# Coordinate Systems
<!-- https://archive.org/details/SphericalAstronomy -->
## Spherical trigonometry
### Basics

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

### Equatorial coordinate system

### Ecliptic coordinate system

### Galactic coordinate system

### Coordinate conversions
