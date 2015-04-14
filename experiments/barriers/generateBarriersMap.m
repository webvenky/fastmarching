%% Dummy script to generate the barriers maps used in the benchmarking.

height = 1000;
width = 2000;
nbar = 9;

for i = 0:nbar
    map = ones(width, height);
    % Odd barriers (top open)
    if i >= 1
        map(100:200, 1:height*0.9) = 0;
    end
    if i >= 3
        map(500:600, 1:height*0.9) = 0;
    end
    if i >= 5
        map(900:1000, 1:height*0.9) = 0;
    end
    if i >= 7
        map(1300:1400, 1:height*0.9) = 0;
    end
    if i >= 9
        map(1700:1800, 1:height*0.9) = 0;
    end

    % Even barriers (bottom open)
    if i >= 2
        map(300:400, height*0.1:end) = 0;
    end
    if i >= 4
        map(700:800, height*0.1:end) = 0;
    end
    if i >= 6
        map(1100:1200, height*0.1:end) = 0;
    end
    if i >= 8
        map(1500:1600, height*0.1:end) = 0;
    end
    
    map = map';
    imwrite(map, ['maps/2dbarriers_' num2str(i) '.png']);
end

% imagesc(map)
% axis xy;
% axis image;
% colormap gray(256);