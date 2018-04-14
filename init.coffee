atom.commands.add 'atom-text-editor', 'custom:indent-all', ->
    editor = atom.workspace.getActiveTextEditor();
    oldRanges = editor.getSelectedBufferRanges();
    editor.selectAll();
    atom.commands.dispatch(atom.views.getView(editor), 'editor:auto-indent')
    editor.save()
    editor.setSelectedBufferRanges(oldRanges);
