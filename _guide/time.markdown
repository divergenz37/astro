---
title: Time
chapter: 11
---
# Time

## Solar and sidereal time

### Solar time

The *solar day* is measured based on the apparent movement of the Sun in the sky. Equivalently, it is based on the Earth's rotation with respect to the Sun. When discussing solar time, we distinguish *apparent* and *mean* solar time.

*Apparent solar time* is based on the position of the Sun in the sky, and corresponds to the hour angle of the Sun. *Apparent solar noon* occurs when the Sun is either directly north or south in the sky as seen by an observer, i.e. on the local meridian.[^nist] When this occurs, the hour angle of the Sun is 0 h, and so is the apparent solar time. The time between two consecutive apparent solar noons is the *apparent solar day*. Sundials are an example of timekeeping based on apparent solar time, since they depend directly on the position of the Sun in the sky. However, the duration of the apparent solar day varies throughout the year. This poses issues for accurate timekeeping, since any divisions of time would also exhibit variations in duration. 

*Mean solar time*, in contrast, is based on the average duration of the solar day over a year. The duration of the *mean solar day* is about 86400 SI seconds. Because this value is fairly constant, clocks that tick at a constant rate follow mean solar time much more closely than they do apparent solar time. Nevertheless, there are still minor variations in the duration of the mean solar day over many years, due to effects such as the slowing of Earth's rotation. 

*Civil time* is based on mean solar time, except that it is offset by 12 hours so that midnight corresponds to 0 h.

The variation in the length of the apparent solar day, as well as the interval between apparent and mean solar time, are discussed further in the subsection on the [equation of time](#equation-of-time).

### Sidereal time

*Sidereal time* is measured based on the rotation of the Earth with respect to the vernal equinox, which is the point where the ecliptic crosses the celestial equator. The vernal equinox serves as the reference point for the equatorial coordinate system. *Local sidereal time* corresponds to the hour angle of the vernal equinox as measured by an observer. *Greenwich sidereal time* corresponds to this quantity, but measured at 0° longitude (the International Earth Rotation and Reference Systems Service (IERS) Reference Meridian). The *apparent sidereal time* is the hour angle of the true equinox, which is derived from ecliptic of the date and the true equator of the date (which includes nutation). The *mean sidereal time* is the hour angle of the mean equinox, which is derived from the ecliptic of the date and the mean equator of the date (which does not include nutation). 

The *sidereal day* can be defined based on the time between two consecutive transits of the vernal equinox. Based on this definition, the duration of a sidereal day is 86164.09053 seconds of mean solar time (1.002737909350795 sidereal days in 86400 seconds of mean solar time)[^aoki-1982].

On Earth, a sidereal day is shorter than a mean solar day.

### Earth Rotation Angle and Universal Time

While the vernal equinox serves as a convenient reference point, it is complicated by the fact that the Earth's rotation axis slowly precesses with a period of about 26000 years. As a result of this, the vernal equinox is moving westward with respect to the fixed background stars. A true measurement of Earth's rotation period should therefore eliminate this effect. Recently, accurate measurements of extremely distant quasars have allowed the implementation of the International Celestial Reference Frame, which measures the *Earth Rotation Angle* (ERA) with respect to these defined sources[^iers]. Under this system, the Earth's rotation period is 86164.09890 seconds of mean solar time (1.00273781191135448 periods in 86400 seconds of mean solar time)[^capitaine-2003][^iers-tn]. It is only about 8 ms longer than the sidereal day defined relative to the vernal equinox.

*Universal Time* (UT) is a set of time scales that are meant to be a close approximation to the mean diurnal motion of the Sun. It is counted from 0 h at midnight, and the unit of duration of UT is the mean solar day.[^iau-nfa-glossary][^iers-glossary-ut1]

UT0 is the time determined by the rotation of the Earth as determined from an observation site.[^iers-glossary-ut1]

UT1 is defined by a linear relationship with the Earth Rotation Angle[^iers-tn], and is equivalent to UT0 corrected for the effect of Earth's polar motion. Being derived from the ERA and thererfore from Very Long Baseline Interferometry of distant quasars, the position of the Sun is not directly involved in determining UT1.

A day in UT1 is not exactly 86400 SI seconds, and at the present it is typically slightly longer than 86400 SI seconds. The difference between a day in UT1 and 86400 SI seconds is the length of day. In addition, the Earth's rotation rate appears to show a general trend of slowing, although this occurs at a variable rate and may show reversals in the short term. This causes some degree of uncertainty in UT1. 

### UTC and time zones

*Coordinated Universal Time* (UTC) is a time scale that closely approximates Universal Time, but the unit of time is SI seconds rather than seconds of mean solar time/UT1.

As mentioned earlier, the length of a day in UT1 is not exactly 86400 SI seconds, but slightly longer on average. The difference UT1 − UTC is known as DUT1. In order to keep UTC within 0.9 seconds of UT1, leap seconds are used at irregular intervals. Leap seconds may be positive, in the form of an additional second at $$23^\mathrm{h} 59^\mathrm{m} 60^\mathrm{s}$$, or negative, in which case $$23^\mathrm{h} 59^\mathrm{m} 59^\mathrm{s}$$ is skipped. 

Currently, civil time is based on UTC and the concept of time zones. A time zone is a region on the Earth that keeps to the same time difference with respect to UTC. In practice, these offsets are usually multiples of 1 hour, but some time zones use multiples of 30 or 15 minutes. In some regions, daylight savings time is implemented to extend summer daylight into the evening hours. This generally involves setting the clock forwards by 1 hour, increasing the UTC offset by 1 hour.

### TT and TAI

*Terrestrial Time* (TT) is a constant time scale based on an observer located on the geoid of the Earth, accounting for gravitational time dilation. The unit of time in TT is the SI second.

Because TT has a constant time step, unlike the non-uniform rotation used in UT, the difference TT - UT1 varies over time and is known as ΔT.

*International Atomic Time* (TAI) is the practical realisation of TT based on atomic clocks. There is a fixed offset of 32.184 seconds due to historical reasons.

### TCG and TCB

## Equation of time

As previously mentioned in the subsection on [solar time](#solar-time), apparent solar time is not a uniform time scale, and the length of the apparent solar day is variable. 

The main reasons for this difference are the following:

- the Earth has an elliptical orbit around the Sun, causing the angular speed of the Sun to vary throughout the course of the year (see [Kepler's second law](gravitation#keplers-second-law) for more details). Smaller variations are contributed by gravitational perturbations from the Moon and planets.
- the Earth's axial tilt means that Sun travels along the ecliptic and not the celestial equator. Since right ascension is measured along the celestial equator, even if the Earth described a perfectly circular orbit, i.e. the Sun travels along the ecliptic at a uniform speed, the right ascension of the Sun would not increase uniformly.

Meeus defines the concept of a *mean Sun* as follows:

> Consider a first fictitious Sun travelling along the *ecliptic* with a constant speed and coinciding with the true Sun at the perigee and apogee (when the Earth is in perihelion and aphelion, respectively). Then consider a second fictitious Sun travelling along the *celestial equator* at a constant speed and coinciding with the first fictitious Sun at the equinoxes. This second fictitious Sun is the *mean Sun*, and by definition its right ascension increases at a uniform rate – that is, there are no periodic terms, but its expression contains small secular terms in $$\tau^2$$, $$\tau^3$$, ...[^meeus-1998]

## Analemma

## The year

A *tropical year* is the time taken for the Sun's ecliptic longitude to increase by 360°. The duration is affected by precession, since the location of the vernal equinox is slowly moving westwards along the ecliptic.

A *sidereal year* is the time taken for the Earth to make one revolution with respect to the fixed stars.

An *anomalistic year* is the time taken for the Earth to make one revolution with respect to its apses, e.g. from one perihelion to the next.

## Julian Day

## References

[^aoki-1982]: Aoki S, Kinoshita H, Guinot B, Kaplan GH, McCarthy DD, Seidelmann PK. The new definition of universal time. Astronomy and Astrophysics. 1982 Jan 1;105:359–61. 
[^capitaine-2003]: Capitaine N, Wallace PT, McCarthy DD. Expressions to implement the IAU 2000 definition of UT1. A&A. 2003 Aug 1;406(3):1135–49. 
[^iau-nfa-glossary]: IAU 2006 NFA Glossary <https://syrte.obspm.fr/iauWGnfa/NFA_Glossary.html>
[^iers]: IERS - IERS - ICRF [Internet]. [cited 2020 Jan 23]. Available from: <https://www.iers.org/IERS/EN/DataProducts/ICRF/icrf.html>
[^iers-glossary-ut1]: <https://www.iers.org/IERS/EN/Service/Glossary/ut1.html>
[^iers-tn]: IERS - IERS Technical Notes - IERS Conventions (2010) [Internet]. [cited 2020 Jan 23]. Available from: <https://www.iers.org/IERS/EN/Publications/TechnicalNotes/tn36.html>
[^meeus-1998]: Meeus J. Astronomical Algorithms. 2nd ed. Willmann-Bell, Inc.; 1998. 
[^nist]: Time and Frequency from A to Z, S to So [Internet]. NIST. 2010 [cited 2020 Jan 23]. Available from: <https://www.nist.gov/pml/time-and-frequency-division/popular-links/time-frequency-z/time-and-frequency-z-s-so>

<!--
https://www.iers.org/IERS/EN/DataProducts/ICRF/icrf.html
https://www.aanda.org/articles/aa/pdf/2003/30/aa3487.pdf
http://articles.adsabs.harvard.edu/pdf/1982A%26A...105..359A
https://www.iers.org/SharedDocs/Publikationen/EN/IERS/Publications/tn/TechnNote36/tn36_043.pdf?__blob=publicationFile&v=1
https://www.nist.gov/pml/time-and-frequency-division/popular-links/time-frequency-z/time-and-frequency-z-s-so
-->