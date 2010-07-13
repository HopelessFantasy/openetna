.class public Lcom/android/launcher/Folder;
.super Landroid/widget/LinearLayout;
.source "Folder.java"

# interfaces
.implements Lcom/android/launcher/DragSource;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mCloneInfo:Z

.field protected mCloseButton:Landroid/widget/Button;

.field protected mContent:Landroid/widget/AbsListView;

.field protected mDragItem:Lcom/android/launcher/ApplicationInfo;

.field protected mDragger:Lcom/android/launcher/DragController;

.field protected mInfo:Lcom/android/launcher/FolderInfo;

.field protected mLauncher:Lcom/android/launcher/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher/Folder;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 61
    return-void
.end method


# virtual methods
.method bind(Lcom/android/launcher/FolderInfo;)V
    .registers 4
    .parameter "info"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/launcher/Folder;->mInfo:Lcom/android/launcher/FolderInfo;

    .line 157
    iget-object v0, p0, Lcom/android/launcher/Folder;->mCloseButton:Landroid/widget/Button;

    iget-object v1, p1, Lcom/android/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 158
    return-void
.end method

.method getInfo()Lcom/android/launcher/FolderInfo;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher/Folder;->mInfo:Lcom/android/launcher/FolderInfo;

    return-object v0
.end method

.method notifyDataSetChanged()V
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/launcher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/BaseAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 131
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/launcher/Folder;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher/Launcher;->closeFolder(Lcom/android/launcher/Folder;)V

    .line 83
    return-void
.end method

.method onClose()V
    .registers 3

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/launcher/Folder;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getWorkspace()Lcom/android/launcher/Workspace;

    move-result-object v0

    .line 152
    .local v0, workspace:Lcom/android/launcher/Workspace;
    invoke-virtual {v0}, Lcom/android/launcher/Workspace;->getCurrentScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 153
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .registers 3
    .parameter "target"
    .parameter "success"

    .prologue
    .line 117
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 65
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 67
    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, Lcom/android/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    iput-object v0, p0, Lcom/android/launcher/Folder;->mContent:Landroid/widget/AbsListView;

    .line 68
    iget-object v0, p0, Lcom/android/launcher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/android/launcher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 71
    const v0, 0x7f060011

    invoke-virtual {p0, v0}, Lcom/android/launcher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/launcher/Folder;->mCloseButton:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/android/launcher/Folder;->mCloseButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/android/launcher/Folder;->mCloseButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 74
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 77
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/ApplicationInfo;

    .line 78
    .local v0, app:Lcom/android/launcher/ApplicationInfo;
    iget-object v1, p0, Lcom/android/launcher/Folder;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v2, v0, Lcom/android/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/android/launcher/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    .line 79
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 10
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    .line 92
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_9

    .line 93
    const/4 v2, 0x0

    .line 105
    :goto_8
    return v2

    .line 96
    :cond_9
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/ApplicationInfo;

    .line 97
    .local v0, app:Lcom/android/launcher/ApplicationInfo;
    iget-boolean v2, p0, Lcom/android/launcher/Folder;->mCloneInfo:Z

    if-eqz v2, :cond_19

    .line 98
    new-instance v1, Lcom/android/launcher/ApplicationInfo;

    invoke-direct {v1, v0}, Lcom/android/launcher/ApplicationInfo;-><init>(Lcom/android/launcher/ApplicationInfo;)V

    .end local v0           #app:Lcom/android/launcher/ApplicationInfo;
    .local v1, app:Lcom/android/launcher/ApplicationInfo;
    move-object v0, v1

    .line 101
    .end local v1           #app:Lcom/android/launcher/ApplicationInfo;
    .restart local v0       #app:Lcom/android/launcher/ApplicationInfo;
    :cond_19
    iget-object v2, p0, Lcom/android/launcher/Folder;->mDragger:Lcom/android/launcher/DragController;

    invoke-interface {v2, p2, p0, v0, v3}, Lcom/android/launcher/DragController;->startDrag(Landroid/view/View;Lcom/android/launcher/DragSource;Ljava/lang/Object;I)V

    .line 102
    iget-object v2, p0, Lcom/android/launcher/Folder;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2, p0}, Lcom/android/launcher/Launcher;->closeFolder(Lcom/android/launcher/Folder;)V

    .line 103
    iput-object v0, p0, Lcom/android/launcher/Folder;->mDragItem:Lcom/android/launcher/ApplicationInfo;

    move v2, v3

    .line 105
    goto :goto_8
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 4
    .parameter "v"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/launcher/Folder;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher/Launcher;->closeFolder(Lcom/android/launcher/Folder;)V

    .line 87
    iget-object v0, p0, Lcom/android/launcher/Folder;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v1, p0, Lcom/android/launcher/Folder;->mInfo:Lcom/android/launcher/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher/Launcher;->showRenameDialog(Lcom/android/launcher/FolderInfo;)V

    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method onOpen()V
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/launcher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 148
    return-void
.end method

.method setCloneInfo(Z)V
    .registers 2
    .parameter "cloneInfo"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/launcher/Folder;->mCloneInfo:Z

    .line 110
    return-void
.end method

.method setContentAdapter(Landroid/widget/BaseAdapter;)V
    .registers 3
    .parameter "adapter"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/launcher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/Adapter;)V

    .line 127
    return-void
.end method

.method public setDragger(Lcom/android/launcher/DragController;)V
    .registers 2
    .parameter "dragger"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/launcher/Folder;->mDragger:Lcom/android/launcher/DragController;

    .line 114
    return-void
.end method

.method setLauncher(Lcom/android/launcher/Launcher;)V
    .registers 2
    .parameter "launcher"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/launcher/Folder;->mLauncher:Lcom/android/launcher/Launcher;

    .line 135
    return-void
.end method
