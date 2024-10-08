function [subSystems]  = getModelSubSystems(model)
% Get unique set of subSystems present in a model
%
% USAGE:
%
%    [subSystems]  = getModelSubSystems(model)
%
% INPUT:
%    model:                 A COBRA model struct with at least the
%                           subSystems fields
%
% OUTPUT:
%    subSystems:            A Cell Array of strings containing all
%                           subSystems in the model
%
% USAGE:
%    %Get all subSystems present in the model.
%    [subSystems]  = getModelSubSystems(model)
%
% .. Author: - Thomas Pfau Nov 2017

if isfield(model, 'subSystems')
    cellBool = cellfun(@(x) iscell(x), model.subSystems);
    charBool = cellfun(@(x) ischar(x), model.subSystems);
    if all(charBool)
        subSystems = unique(model.subSystems);
    elseif all(cellBool)
        orderedSubs = cellfun(@(x) columnVector(x),model.subSystems,'UniformOUtput',false);
        subSystems = setdiff(vertcat(orderedSubs{:}),'');
    else
        subSystems = unique(model.subSystems);
    end
    if isempty(subSystems)
        subSystems = {};
    end
else
    subSystems = {};
end