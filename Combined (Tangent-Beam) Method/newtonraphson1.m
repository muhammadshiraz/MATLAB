clc; clear; close all;

% Program tangent beam method that calculates the root of the equation in MATLAB
f = @(x) x^3+x^2-12*x;
lR = 2;
uR = 4;
E = 0.001;

    figure(1)
    fplot(f, [lR uR], 'b-')
    grid on
    hold on
    
    xlabel('Number if iterations')
    ylabel('Error')
    title('Error Vs. Number of iterations')
    
    % Step 1 of iterations
        lR_1 = lR;
        uR_1 = uR;
        
        xR_1 = (lR_1+uR_1)/2;
        
        fL_1 = f(lR_1);
        fR_1 = f(xR_1);
        
        m1 = fL_1*fR_1
        
        E_1 = abs((xR_1 - 0)/(xR_1))*100;
        
        plot(xR_1,f(xR_1),'mo')
        
    % Step 2 of iterations
        lR_2 = lR_1;
        uR_2 = uR_1;
        
        xR_2 = (lR_2+uR_2)/2;
        
        fL_2 = f(lR_2);
        fR_2 = f(xR_2);
        
        m2 = fL_2*fR_2
        
        E_2 = abs((xR_2 - xR_1)/(xR_2))*100
        
        plot(xR_2,f(xR_2),'ko')