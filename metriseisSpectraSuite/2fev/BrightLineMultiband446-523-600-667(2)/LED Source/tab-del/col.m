clc;
clear all;

filterzz='BrightLineMultiband 446-523-600-667';
for p=0:5:60
% p=25;
    
    %open file-----------------------------------------------------
    f=int2str(p);
    file=strcat(f,'degTrans.txt');
    titlezzz=strcat(f,' degrees');
    loczzz= strcat('Transmission_',f,'_degrees');

    %Import Data from file lines 273-3120 -------------------------
    [Wavelength,Transmission] = importfile(file,273, 3120);

    %Limiter-------------------------------------------------------
    s=size(Wavelength,1);
    for i= 1:s
        if Transmission(i) > 100 Transmission(i)=100;
        elseif Transmission(i) < 0 Transmission(i)=0;
        end
        
    end  
   
   %Spline (Factor~~4.7736813277873103E-4) ------------------------
   [res,gof] = createFit1(Wavelength,Transmission);
   
    h=plot (res,Wavelength,Transmission);

    %legend('Location','southeast')
    axis([400 950 0 100])
    title({filterzz, titlezzz})
    xlabel('Wavelength (nm)') 
    ylabel('Transmission %') 
    print(loczzz,'-djpeg')
 
end