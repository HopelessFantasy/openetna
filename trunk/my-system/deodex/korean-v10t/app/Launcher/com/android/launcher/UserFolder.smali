.class public Lcom/android/launcher/UserFolder;
.super Lcom/android/launcher/Folder;
.source "UserFolder.java"

# interfaces
.implements Lcom/android/launcher/DropTarget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/launcher/Folder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method static fromXml(Landroid/content/Context;)Lcom/android/launcher/UserFolder;
    .registers 4
    .parameter "context"

    .prologue
    .line 27
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher/UserFolder;

    return-object p0
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)Z
    .registers 15
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v7, 0x1

    .line 32
    move-object v0, p6

    check-cast v0, Lcom/android/launcher/ItemInfo;

    move-object v1, v0

    .line 33
    .local v1, item:Lcom/android/launcher/ItemInfo;
    iget v2, v1, Lcom/android/launcher/ItemInfo;->itemType:I

    .line 34
    .local v2, itemType:I
    if-eqz v2, :cond_b

    if-ne v2, v7, :cond_17

    :cond_b
    iget-wide v3, v1, Lcom/android/launcher/ItemInfo;->container:J

    iget-object v5, p0, Lcom/android/launcher/UserFolder;->mInfo:Lcom/android/launcher/FolderInfo;

    iget-wide v5, v5, Lcom/android/launcher/FolderInfo;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_17

    move v3, v7

    :goto_16
    return v3

    :cond_17
    const/4 v3, 0x0

    goto :goto_16
.end method

.method bind(Lcom/android/launcher/FolderInfo;)V
    .registers 5
    .parameter "info"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/launcher/Folder;->bind(Lcom/android/launcher/FolderInfo;)V

    .line 70
    new-instance v0, Lcom/android/launcher/ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/launcher/UserFolder;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher/UserFolderInfo;

    .end local p1
    iget-object v2, p1, Lcom/android/launcher/UserFolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/ApplicationsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher/UserFolder;->setContentAdapter(Landroid/widget/BaseAdapter;)V

    .line 71
    return-void
.end method

.method public estimateDropLocation(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 9
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"
    .parameter "recycle"

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDragEnter(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)V
    .registers 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 50
    return-void
.end method

.method public onDragExit(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)V
    .registers 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 56
    return-void
.end method

.method public onDragOver(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)V
    .registers 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 53
    return-void
.end method

.method public onDrop(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)V
    .registers 15
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v5, 0x0

    .line 43
    move-object v0, p6

    check-cast v0, Lcom/android/launcher/ApplicationInfo;

    move-object v2, v0

    .line 45
    .local v2, item:Lcom/android/launcher/ApplicationInfo;
    iget-object v1, p0, Lcom/android/launcher/UserFolder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ArrayAdapter;

    check-cast p6, Lcom/android/launcher/ApplicationInfo;

    .end local p6
    invoke-virtual {v1, p6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 46
    iget-object v1, p0, Lcom/android/launcher/UserFolder;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v3, p0, Lcom/android/launcher/UserFolder;->mInfo:Lcom/android/launcher/FolderInfo;

    iget-wide v3, v3, Lcom/android/launcher/FolderInfo;->id:J

    move v6, v5

    move v7, v5

    invoke-static/range {v1 .. v7}, Lcom/android/launcher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher/ItemInfo;JIII)V

    .line 47
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .registers 5
    .parameter "target"
    .parameter "success"

    .prologue
    .line 60
    if-eqz p2, :cond_f

    .line 62
    iget-object v1, p0, Lcom/android/launcher/UserFolder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 64
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/launcher/ApplicationInfo;>;"
    iget-object v1, p0, Lcom/android/launcher/UserFolder;->mDragItem:Lcom/android/launcher/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 66
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/launcher/ApplicationInfo;>;"
    :cond_f
    return-void
.end method

.method onOpen()V
    .registers 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/android/launcher/Folder;->onOpen()V

    .line 78
    invoke-virtual {p0}, Lcom/android/launcher/UserFolder;->requestFocus()Z

    .line 79
    return-void
.end method
