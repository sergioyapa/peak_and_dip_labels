# peak_and_dip_labels
Easily allows you to automatically find, plot, and label local maxima (peaks) and local minima on MATLAB

This code requires the MATLAB Signal Processing Toolbox, which can be downloaded here: 
https://www.mathworks.com/products/signal.html

# How to use these functions:

You just need your "x" and "y" arrays, as you would do for a simple plot(x,y), and just 2 numbers: "hs" controls the horizontal space between peaks/dips and their respective labels ((+): right, (-): left), and "vs" controls the vertical spacing. If in doubt, set hs=0 and vs=0.

[pks,locs] = PeakDipLabels(x,y,hs,vs)

- PeakDipLabels: find, plot, and label both peaks (red) and dips (green). 

![PeakDipLabelsExample](https://user-images.githubusercontent.com/26829946/112745104-c92e1080-8f5a-11eb-9178-8ca18cbb991e.png)

- PeakLabels: find, plot, and label just peaks (red). 

![PeakLabelsExample](https://user-images.githubusercontent.com/26829946/112745111-d6e39600-8f5a-11eb-8627-f2d950f31918.png)

- DipLabels: find, plot, and label just dips (green).

![DipLabelsExample](https://user-images.githubusercontent.com/26829946/112745113-dcd97700-8f5a-11eb-929f-c4060cbcd512.png)


# How to install these files:
1. This code was written using MATLAB (version 2020a). Download MATLAB on your computer or try MATLAB online
2. As mentioned above, you'll need to have the MATLAB Signal Processing Toolbox installed
3. Download the 3 files on this repository: "PeakDipLabels.m", "PeakLabels.m", and "DipLabels.m"
4. Once downloaded, copy these function files to the MATLAB parent directory. On Windows, this is typically: C:\Users\YourUserName\Documents\MATLAB
5. That's it! You should be able to use these 3 functions


# Example:

hs = 0; vs = 0;

x = linspace(-20,20,1000);

y = exp(-x/10).* cos(x)

PeakDipLabels(x,y,hs,vs)       

% alternatively, you can run [pks,locs] = PeakDipLabels(x,y,hs,vs) instead of PeakDipLabels(x,y,0,0) if you want to save arrays of peaks/dips and their locations to workspace

# MATLAB File Exchange:

[![View Peaks and Dips on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/89491-peaks-and-dips)
