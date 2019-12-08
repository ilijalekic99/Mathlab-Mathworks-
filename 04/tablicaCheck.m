function t = tablicaCheck()
    
    tablica;
    
    razlikeX = diff(X);
    rastuci = all(razlikeX>0);
    razlikeY = diff(Y);
    monoton = all(razlikeY<0) || all(razlikeY>0);

    t = rastuci && monoton;
    
    if t~=1
        disp('Nije rastuci X, ili Y nije monoton');
    end
    
end     