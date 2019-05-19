# Metamaterials Dataset

This is a Live Script in [MATLAB©](https://www.mathworks.com/products/new_products/release2018a.html) for data generation based on eletromagnetic simulations of microstrip antennas with metamaterials. All the text in the Live Script is in PT-BR (my native language), but I've posted a [translated version](https://renanmav.github.io) in EN on my blog. 

## Wait, what is a microstrip antenna?

According to [Balanis](https://www.amazon.com/Antenna-Theory-Analysis-Design-3rd/dp/047166782X), microstrip antennas are transitional low-profile structures between free-space and a guiding device. This kind of antenna is applied on mobile devices for wireless communications.
The geometry of these antennas are shown below.

![Microstrip antenna geometry](https://media.springernature.com/full/springer-static/image/art%3A10.1186%2Fs13638-018-1077-6/MediaObjects/13638_2018_1077_Fig1_HTML.gif)

## What about metamaterials?

[Metamaterials](https://www.amazon.com/Metamaterials-Handbook-Slipcase-Theory-Phenomena/dp/1420054252) are structures with electrical properties that doesn't exist on nature. These materials were discovered by Veselago, four decades ago. It present remarkable properties such as negative refraction and cloacking. 
Metamaterials are **not** magical materials. Its properties are due to the periodicity and geometry of the unit cells. 

In this work, I've used square SRR, shown in (b) figure below.

![Circular(a) and Square(b) SRR unit cells](https://www.researchgate.net/profile/Mushtaq_Alqaisy/publication/262049523/figure/fig2/AS:296959752589320@1447812130683/SRR-topology-a-Circle-shape-b-Square-shape-The-relevant-dimensions-are-indicated.png)
