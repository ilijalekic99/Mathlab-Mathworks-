function t = tablicaCheck()
    
    %tablica treba da je ekvidistantna, i da je niz X strogo rastuci

    tablica;
    
    razlike = diff(X);
    ekvidistantni = all(razlike==razlike(1));
    
    rastuci = all(razlike>0);
    
    t = ekvidistantni&&rastuci;
    
    if t==1
        disp('Sve je okej');
    else
        disp('Nije okej');
    end
    
end