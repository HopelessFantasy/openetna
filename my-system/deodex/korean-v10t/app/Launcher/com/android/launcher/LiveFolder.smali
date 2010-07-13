.class public Lcom/android/launcher/LiveFolder;
.super Lcom/android/launcher/Folder;
.source "LiveFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/LiveFolder$FolderLoadingTask;
    }
.end annotation


# instance fields
.field private mLoadingTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Lcom/android/launcher/LiveFolderInfo;",
            "Ljava/lang/Void;",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/launcher/Folder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method static fromXml(Landroid/content/Context;Lcom/android/launcher/FolderInfo;)Lcom/android/launcher/LiveFolder;
    .registers 5
    .parameter "context"
    .parameter "folderInfo"

    .prologue
    .line 40
    invoke-static {p1}, Lcom/android/launcher/LiveFolder;->isDisplayModeList(Lcom/android/launcher/FolderInfo;)Z

    move-result v1

    if-eqz v1, :cond_16

    const v1, 0x7f03000b

    move v0, v1

    .line 42
    .local v0, layout:I
    :goto_a
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher/LiveFolder;

    return-object p0

    .line 40
    .end local v0           #layout:I
    .restart local p0
    :cond_16
    const v1, 0x7f030009

    move v0, v1

    goto :goto_a
.end method

.method private static isDisplayModeList(Lcom/android/launcher/FolderInfo;)Z
    .registers 3
    .parameter "folderInfo"

    .prologue
    .line 46
    check-cast p0, Lcom/android/launcher/LiveFolderInfo;

    .end local p0
    iget v0, p0, Lcom/android/launcher/LiveFolderInfo;->displayMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method bind(Lcom/android/launcher/FolderInfo;)V
    .registers 5
    .parameter "info"

    .prologue
    const/4 v2, 0x1

    .line 74
    invoke-super {p0, p1}, Lcom/android/launcher/Folder;->bind(Lcom/android/launcher/FolderInfo;)V

    .line 75
    iget-object v0, p0, Lcom/android/launcher/LiveFolder;->mLoadingTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/launcher/LiveFolder;->mLoadingTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_17

    .line 76
    iget-object v0, p0, Lcom/android/launcher/LiveFolder;->mLoadingTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 78
    :cond_17
    new-instance v0, Lcom/android/launcher/LiveFolder$FolderLoadingTask;

    invoke-direct {v0, p0}, Lcom/android/launcher/LiveFolder$FolderLoadingTask;-><init>(Lcom/android/launcher/LiveFolder;)V

    new-array v1, v2, [Lcom/android/launcher/LiveFolderInfo;

    const/4 v2, 0x0

    check-cast p1, Lcom/android/launcher/LiveFolderInfo;

    .end local p1
    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher/LiveFolder$FolderLoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/LiveFolder;->mLoadingTask:Landroid/os/AsyncTask;

    .line 79
    return-void
.end method

.method onClose()V
    .registers 4

    .prologue
    .line 89
    invoke-super {p0}, Lcom/android/launcher/Folder;->onClose()V

    .line 90
    iget-object v1, p0, Lcom/android/launcher/LiveFolder;->mLoadingTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/launcher/LiveFolder;->mLoadingTask:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_17

    .line 91
    iget-object v1, p0, Lcom/android/launcher/LiveFolder;->mLoadingTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 96
    :cond_17
    iget-object v1, p0, Lcom/android/launcher/LiveFolder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/LiveFolderAdapter;

    .line 97
    .local v0, adapter:Lcom/android/launcher/LiveFolderAdapter;
    if-eqz v0, :cond_24

    .line 98
    invoke-virtual {v0}, Lcom/android/launcher/LiveFolderAdapter;->cleanup()V

    .line 100
    :cond_24
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 52
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;

    .line 54
    .local v1, holder:Lcom/android/launcher/LiveFolderAdapter$ViewHolder;
    iget-boolean v4, v1, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->useBaseIntent:Z

    if-eqz v4, :cond_36

    .line 55
    iget-object v4, p0, Lcom/android/launcher/LiveFolder;->mInfo:Lcom/android/launcher/FolderInfo;

    check-cast v4, Lcom/android/launcher/LiveFolderInfo;

    iget-object v0, v4, Lcom/android/launcher/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    .line 56
    .local v0, baseIntent:Landroid/content/Intent;
    if-eqz v0, :cond_35

    .line 57
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 58
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 59
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    iget-wide v5, v1, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 60
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 61
    iget-object v4, p0, Lcom/android/launcher/LiveFolder;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v4, v2}, Lcom/android/launcher/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    .line 66
    .end local v0           #baseIntent:Landroid/content/Intent;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_35
    :goto_35
    return-void

    .line 63
    :cond_36
    iget-object v4, v1, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_35

    .line 64
    iget-object v4, p0, Lcom/android/launcher/LiveFolder;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v5, v1, Lcom/android/launcher/LiveFolderAdapter$ViewHolder;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Lcom/android/launcher/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    goto :goto_35
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 7
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
    .line 70
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method onOpen()V
    .registers 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/android/launcher/Folder;->onOpen()V

    .line 84
    invoke-virtual {p0}, Lcom/android/launcher/LiveFolder;->requestFocus()Z

    .line 85
    return-void
.end method
