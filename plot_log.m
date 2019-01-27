close all; clc;

log = who;

for i = 1:numel(log)
    log_str = char(log(i));
    if contains(log_str,'label') && ~exist(erase(log_str, '_label'), 'var')
        clear(log_str);
    else
        if contains(log_str,'label')
            var = erase(log_str, '_label');
            temp_var = eval(var);
            [~, col] = size(temp_var);
            temp_lbl = eval(log_str);
            for j = 1:col
                 lbl = char(temp_lbl(j,1));
                 data.(lbl) = temp_var(:,j);
            end
        end
    end
end

clear row col temp_var temp_lbl log_str i j lbl var