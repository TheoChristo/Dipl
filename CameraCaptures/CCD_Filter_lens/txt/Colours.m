clc;
clear all;

filterzz='BrightLineMultiband 422-503-572';
%for p=0:5:35
%p=25;
    
    %open file-----------------------------------------------------
    f=int2str(p);
    file=strcat(f,'deg_txt.txt');

    %Import Data from file lines 273-3120 -------------------------
    if (p ~= 40)
        [Pos(p),Red(p),Green(p),Blue(p)] = importfile(file);
    end
    %Limiter-------------------------------------------------------
%     s=size(Wavelength,1);
%     for i= 1:s
%         if Transmission(i) > 100 Transmission(i)=100;
%         elseif Transmission(i) < 0 Transmission(i)=0;
%         end
%         
%     end  
%    
% 
% 
%     %legend('Location','southeast')
%     axis([400 950 0 100])
%     title({filterzz, titlezzz})
%     xlabel('Wavelength (nm)') 
%     ylabel('Transmission %') 
%     print(loczzz,'-djpeg')


%end