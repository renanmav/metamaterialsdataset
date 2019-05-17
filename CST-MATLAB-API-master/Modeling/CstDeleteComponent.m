function CstDeleteComponent(mws, componentName)

Component = invoke(mws, 'Component');
invoke(Component, 'Delete', componentName);

end

