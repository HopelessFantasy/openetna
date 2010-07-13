.class public Lcom/lge/homecube/UserFolder;
.super Lcom/lge/homecube/Folder;
.source "UserFolder.java"

# interfaces
.implements Lcom/lge/homecube/DropTarget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/lge/homecube/Folder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method static fromXml(Landroid/content/Context;)Lcom/lge/homecube/UserFolder;
    .registers 4
    .parameter "context"

    .prologue
    .line 26
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/homecube/UserFolder;

    return-object p0
.end method


# virtual methods
.method public acceptDrop(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)Z
    .registers 15
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v7, 0x1

    .line 31
    move-object v0, p6

    check-cast v0, Lcom/lge/homecube/ItemInfo;

    move-object v1, v0

    .line 32
    .local v1, item:Lcom/lge/homecube/ItemInfo;
    iget v2, v1, Lcom/lge/homecube/ItemInfo;->itemType:I

    .line 33
    .local v2, itemType:I
    if-eqz v2, :cond_b

    if-ne v2, v7, :cond_17

    :cond_b
    iget-wide v3, v1, Lcom/lge/homecube/ItemInfo;->container:J

    iget-object v5, p0, Lcom/lge/homecube/UserFolder;->mInfo:Lcom/lge/homecube/FolderInfo;

    iget-wide v5, v5, Lcom/lge/homecube/FolderInfo;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_17

    move v3, v7

    :goto_16
    return v3

    :cond_17
    const/4 v3, 0x0

    goto :goto_16
.end method

.method bind(Lcom/lge/homecube/FolderInfo;)V
    .registers 5
    .parameter "info"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/lge/homecube/Folder;->bind(Lcom/lge/homecube/FolderInfo;)V

    .line 65
    new-instance v0, Lcom/lge/homecube/ApplicationsAdapter;

    iget-object v1, p0, Lcom/lge/homecube/UserFolder;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/lge/homecube/UserFolderInfo;

    .end local p1
    iget-object v2, p1, Lcom/lge/homecube/UserFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/lge/homecube/ApplicationsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/lge/homecube/UserFolder;->setContentAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    return-void
.end method

.method public onDragEnter(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)V
    .registers 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 45
    return-void
.end method

.method public onDragExit(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)V
    .registers 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 51
    return-void
.end method

.method public onDragOver(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)V
    .registers 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 48
    return-void
.end method

.method public onDrop(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)V
    .registers 15
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v5, 0x0

    .line 38
    move-object v0, p6

    check-cast v0, Lcom/lge/homecube/ApplicationInfo;

    move-object v2, v0

    .line 40
    .local v2, item:Lcom/lge/homecube/ApplicationInfo;
    iget-object v1, p0, Lcom/lge/homecube/UserFolder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ArrayAdapter;

    check-cast p6, Lcom/lge/homecube/ApplicationInfo;

    .end local p6
    invoke-virtual {v1, p6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 41
    iget-object v1, p0, Lcom/lge/homecube/UserFolder;->mLauncher:Lcom/lge/homecube/Launcher;

    iget-object v3, p0, Lcom/lge/homecube/UserFolder;->mInfo:Lcom/lge/homecube/FolderInfo;

    iget-wide v3, v3, Lcom/lge/homecube/FolderInfo;->id:J

    move v6, v5

    move v7, v5

    invoke-static/range {v1 .. v7}, Lcom/lge/homecube/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/lge/homecube/ItemInfo;JIII)V

    .line 42
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .registers 5
    .parameter "target"
    .parameter "success"

    .prologue
    .line 55
    if-eqz p2, :cond_f

    .line 57
    iget-object v1, p0, Lcom/lge/homecube/UserFolder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 59
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/lge/homecube/ApplicationInfo;>;"
    iget-object v1, p0, Lcom/lge/homecube/UserFolder;->mDragItem:Lcom/lge/homecube/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 61
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/lge/homecube/ApplicationInfo;>;"
    :cond_f
    return-void
.end method

.method onOpen()V
    .registers 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/lge/homecube/Folder;->onOpen()V

    .line 73
    invoke-virtual {p0}, Lcom/lge/homecube/UserFolder;->requestFocus()Z

    .line 74
    return-void
.end method
