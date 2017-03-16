classdef Isotherm < handle
    
    properties
        raw
        time
        area
        molArea
    end
    
    methods
        
        function this = Isotherm(file)
            
            if nargin == 0
                [file, path] = uigetfile('*', 'Select an isotherm file');
                file = fullfile(path, file);
            end
            
            try
                this.raw = importdata(file);
                this.time = this.raw.data(:, 1);
                this.area = this.raw.data(:, 2);
                this.molArea = this.raw.data(:, 3);
            catch EM
                disp(EM);
            end
            
        end
        
        function plotTimeArea(this)
            figure;
            
        end
        
    end
    
end