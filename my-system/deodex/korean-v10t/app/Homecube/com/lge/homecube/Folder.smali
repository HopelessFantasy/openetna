.class public Lcom/lge/homecube/Folder;
.super Landroid/widget/LinearLayout;
.source "Folder.java"

# interfaces
.implements Lcom/lge/homecube/DragSource;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mCloneInfo:Z

.field protected mCloseButton:Landroid/widget/Button;

.field protected mContent:Landroid/widget/AbsListView;

.field protected mDragItem:Lcom/lge/homecube/ApplicationInfo;

.field protected mDragger:Lcom/lge/homecube/DragController;

.field protected mInfo:Lcom/lge/homecube/FolderInfo;

.field protected mLauncher:Lcom/lge/homecube/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Folder;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 60
    return-void
.end method


# virtual methods
.method public DropOnMenu(FFLjava/lang/Object;)Z
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "dragInfo"

    .prologue
    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method bind(Lcom/lge/homecube/FolderInfo;)V
    .registers 4
    .parameter "info"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/lge/homecube/Folder;->mInfo:Lcom/lge/homecube/FolderInfo;

    .line 162
    iget-object v0, p0, Lcom/lge/homecube/Folder;->mCloseButton:Landroid/widget/Button;

    iget-object v1, p1, Lcom/lge/homecube/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 163
    return-void
.end method

.method getInfo()Lcom/lge/homecube/FolderInfo;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lge/homecube/Folder;->mInfo:Lcom/lge/homecube/FolderInfo;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lge/homecube/Folder;->mLauncher:Lcom/lge/homecube/Launcher;

    invoke-virtual {v0, p0}, Lcom/lge/homecube/Launcher;->closeFolder(Lcom/lge/homecube/Folder;)V

    .line 82
    return-void
.end method

.method onClose()V
    .registers 3

    .prologue
    .line 156
    iget-object v1, p0, Lcom/lge/homecube/Folder;->mLauncher:Lcom/lge/homecube/Launcher;

    invoke-virtual {v1}, Lcom/lge/homecube/Launcher;->getWorkspace()Lcom/lge/homecube/Workspace;

    move-result-object v0

    .line 157
    .local v0, workspace:Lcom/lge/homecube/Workspace;
    invoke-virtual {v0}, Lcom/lge/homecube/Workspace;->getCurrentScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 158
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .registers 3
    .parameter "target"
    .parameter "success"

    .prologue
    .line 121
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 66
    const v0, 0x7f050012

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    iput-object v0, p0, Lcom/lge/homecube/Folder;->mContent:Landroid/widget/AbsListView;

    .line 67
    iget-object v0, p0, Lcom/lge/homecube/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/lge/homecube/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 70
    const v0, 0x7f050031

    invoke-virtual {p0, v0}, Lcom/lge/homecube/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/homecube/Folder;->mCloseButton:Landroid/widget/Button;

    .line 71
    iget-object v0, p0, Lcom/lge/homecube/Folder;->mCloseButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/lge/homecube/Folder;->mCloseButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 73
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 76
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/homecube/ApplicationInfo;

    .line 77
    .local v0, app:Lcom/lge/homecube/ApplicationInfo;
    iget-object v1, p0, Lcom/lge/homecube/Folder;->mLauncher:Lcom/lge/homecube/Launcher;

    iget-object v2, v0, Lcom/lge/homecube/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/lge/homecube/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    .line 78
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 12
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
    const/4 v5, 0x1

    .line 91
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_9

    .line 92
    const/4 v3, 0x0

    .line 109
    :goto_8
    return v3

    .line 95
    :cond_9
    iget-object v3, p0, Lcom/lge/homecube/Folder;->mLauncher:Lcom/lge/homecube/Launcher;

    invoke-virtual {v3}, Lcom/lge/homecube/Launcher;->getWorkspace()Lcom/lge/homecube/Workspace;

    move-result-object v2

    .line 96
    .local v2, workspace:Lcom/lge/homecube/Workspace;
    invoke-virtual {v2, v5}, Lcom/lge/homecube/Workspace;->setDeleteZoneFlag(Z)V

    .line 97
    iget-object v3, p0, Lcom/lge/homecube/Folder;->mLauncher:Lcom/lge/homecube/Launcher;

    iget-object v3, v3, Lcom/lge/homecube/Launcher;->mLauncherLayout:Landroid/widget/AbsoluteLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    .line 100
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/homecube/ApplicationInfo;

    .line 101
    .local v0, app:Lcom/lge/homecube/ApplicationInfo;
    iget-boolean v3, p0, Lcom/lge/homecube/Folder;->mCloneInfo:Z

    if-eqz v3, :cond_2a

    .line 102
    new-instance v1, Lcom/lge/homecube/ApplicationInfo;

    invoke-direct {v1, v0}, Lcom/lge/homecube/ApplicationInfo;-><init>(Lcom/lge/homecube/ApplicationInfo;)V

    .end local v0           #app:Lcom/lge/homecube/ApplicationInfo;
    .local v1, app:Lcom/lge/homecube/ApplicationInfo;
    move-object v0, v1

    .line 105
    .end local v1           #app:Lcom/lge/homecube/ApplicationInfo;
    .restart local v0       #app:Lcom/lge/homecube/ApplicationInfo;
    :cond_2a
    iget-object v3, p0, Lcom/lge/homecube/Folder;->mDragger:Lcom/lge/homecube/DragController;

    invoke-interface {v3, p2, p0, v0, v5}, Lcom/lge/homecube/DragController;->startDrag(Landroid/view/View;Lcom/lge/homecube/DragSource;Ljava/lang/Object;I)V

    .line 106
    iget-object v3, p0, Lcom/lge/homecube/Folder;->mLauncher:Lcom/lge/homecube/Launcher;

    invoke-virtual {v3, p0}, Lcom/lge/homecube/Launcher;->closeFolder(Lcom/lge/homecube/Folder;)V

    .line 107
    iput-object v0, p0, Lcom/lge/homecube/Folder;->mDragItem:Lcom/lge/homecube/ApplicationInfo;

    move v3, v5

    .line 109
    goto :goto_8
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 4
    .parameter "v"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lge/homecube/Folder;->mLauncher:Lcom/lge/homecube/Launcher;

    invoke-virtual {v0, p0}, Lcom/lge/homecube/Launcher;->closeFolder(Lcom/lge/homecube/Folder;)V

    .line 86
    iget-object v0, p0, Lcom/lge/homecube/Folder;->mLauncher:Lcom/lge/homecube/Launcher;

    iget-object v1, p0, Lcom/lge/homecube/Folder;->mInfo:Lcom/lge/homecube/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Launcher;->showRenameDialog(Lcom/lge/homecube/FolderInfo;)V

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method onOpen()V
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/lge/homecube/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 153
    return-void
.end method

.method setCloneInfo(Z)V
    .registers 2
    .parameter "cloneInfo"

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/lge/homecube/Folder;->mCloneInfo:Z

    .line 114
    return-void
.end method

.method setContentAdapter(Landroid/widget/ListAdapter;)V
    .registers 3
    .parameter "adapter"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lge/homecube/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/Adapter;)V

    .line 136
    return-void
.end method

.method public setDragger(Lcom/lge/homecube/DragController;)V
    .registers 2
    .parameter "dragger"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/lge/homecube/Folder;->mDragger:Lcom/lge/homecube/DragController;

    .line 118
    return-void
.end method

.method setLauncher(Lcom/lge/homecube/Launcher;)V
    .registers 2
    .parameter "launcher"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/lge/homecube/Folder;->mLauncher:Lcom/lge/homecube/Launcher;

    .line 140
    return-void
.end method
