function feat_names = feature_names_advanced( ch_names )
%FEATURE_NAMES:
% Generate the name of the features
%       
% Arguments
% ch_names: Cell Array with Electrode names

bands = {'pwr-delta', 'pwr-theta', 'pwr-low-alpha', 'pwr-high-alpha', ...
         'pwr-low-beta', 'pwr-high-beta', ...
         'pwr-delta/beta', 'pwr-theta/beta', 'pwr-alpha/beta', 'pwr-alpha-theta'};


i_feature = 1;
feat_names = {};
for i_band = 1 : numel(bands)
    for i_ch = 1 : numel(ch_names)-1
    % Last column is ommited because it is the Status Channel
        feat_names{i_feature} = [bands{i_band}, ch_names{i_ch}];
        i_feature = i_feature + 1;
    end
end


