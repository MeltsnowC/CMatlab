function [output] = get_matlab_metrics(filename, metrics)
%get_library_link_count get the number of linked library
%   input:	the filename of the model
%   output:	the number of linked library in the model
metrics = ['mathworks.metrics.', metrics];
metric_engine = slmetric.Engine();

setAnalysisRoot(metric_engine, 'Root',  filename);

execute(metric_engine, metrics);

res_col = getMetrics(metric_engine, metrics);

output = 0;
if strcmp(metrics, 'mathworks.metrics.SubSystemDepth')
    output = res_col(1).Results.Value;
else
    for n=1:length(res_col)
        if res_col(n).Status == 0
            result = res_col(n).Results;
            for m=1:length(result)
                if ~isnan(result(m).Value)
                    output = output + result(m).Value;
                end
            end
        end
    end
end
end



