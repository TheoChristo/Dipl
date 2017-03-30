clc;
clear all;

for p=0:5:60


    %open file
    f=int2str(p);
    file=strcat(f,'degTrans.txt');
    titlezzz=strcat('BrightLineMultiband390-482-563-640 rotated ',f,' degrees');
    loczzz= strcat('Transmission_',f,'_degrees.jpg');

    %Import Data from file lines 273-3120
    [Wavelength,Transmission] = importfile(file,273, 3120);
    s=size(Wavelength,1);

    %Limiter
    for i= 1:s
        if Transmission(i) > 100
            Transmission(i)=100;
        end
    end

    %plot
    h=plot(Wavelength,Transmission);
    axis([400 950 0 100])
    title(titlezzz)
    xlabel('Wavelength (nm)') % x-axis label
    ylabel('Transmission %') % y-axis label
    saveas(h,loczzz);


end