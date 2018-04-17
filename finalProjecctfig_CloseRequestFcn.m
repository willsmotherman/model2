function finalProjecctfig_CloseRequestFcn(hObject, eventdata, handles)
    stop = 1;
    shh=get(0,'ShowHiddenHandles');
set(0,'ShowHiddenHandles','on');
delete(get(0,'CurrentFigure'));
set(0,'ShowHiddenHandles',shh);