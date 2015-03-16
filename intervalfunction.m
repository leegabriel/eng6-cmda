%function used to determine interval, put in monthly, yearly and quaterly callbacks for graph types
c = getappdata(0, 'choice');
    if strcmp(c,'gasrussia')
        yearlyInt85
    elseif strcmp(c,'foodbev')
        yearlyInt91
    elseif strcmp(c,'nonfuel')
        yearlyInt91
    elseif strcmp(c,'food')
        yearlyInt91
    elseif strcmp(c,'gaslouis')
        yearlyInt91
    elseif strcmp(c,'sugareuro')
        yearlyInt91   
    elseif strcmp(c,'allcom')
        yearlyInt92
    elseif strcmp(c,'crudeoil')
        yearlyInt92
    elseif strcmp(c,'gasindo')
        yearlyInt92
    else
        yearlyInt80
    end