.class Lcom/android/launcher/LiveFolder$FolderLoadingTask;
.super Landroid/os/AsyncTask;
.source "LiveFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/LiveFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FolderLoadingTask"
.end annotation

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


# instance fields
.field private final mFolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher/LiveFolder;",
            ">;"
        }
    .end annotation
.end field

.field private mInfo:Lcom/android/launcher/LiveFolderInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher/LiveFolder;)V
    .registers 3
    .parameter "folder"

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 107
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher/LiveFolder$FolderLoadingTask;->mFolder:Ljava/lang/ref/WeakReference;

    .line 108
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/launcher/LiveFolderInfo;)Landroid/database/Cursor;
    .registers 5
    .parameter "params"

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/launcher/LiveFolder$FolderLoadingTask;->mFolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/LiveFolder;

    .line 112
    .local v0, folder:Lcom/android/launcher/LiveFolder;
    if-eqz v0, :cond_18

    .line 113
    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/android/launcher/LiveFolder$FolderLoadingTask;->mInfo:Lcom/android/launcher/LiveFolderInfo;

    .line 114
    iget-object v1, v0, Lcom/android/launcher/LiveFolder;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v2, p0, Lcom/android/launcher/LiveFolder$FolderLoadingTask;->mInfo:Lcom/android/launcher/LiveFolderInfo;

    invoke-static {v1, v2}, Lcom/android/launcher/LiveFolderAdapter;->query(Landroid/content/Context;Lcom/android/launcher/LiveFolderInfo;)Landroid/database/Cursor;

    move-result-object v1

    .line 116
    :goto_17
    return-object v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 102
    check-cast p1, [Lcom/android/launcher/LiveFolderInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/launcher/LiveFolder$FolderLoadingTask;->doInBackground([Lcom/android/launcher/LiveFolderInfo;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .registers 6
    .parameter "cursor"

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/launcher/LiveFolder$FolderLoadingTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 122
    if-eqz p1, :cond_1e

    .line 123
    iget-object v2, p0, Lcom/android/launcher/LiveFolder$FolderLoadingTask;->mFolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/LiveFolder;

    .line 124
    .local v0, folder:Lcom/android/launcher/LiveFolder;
    if-eqz v0, :cond_1e

    .line 125
    iget-object v1, v0, Lcom/android/launcher/LiveFolder;->mLauncher:Lcom/android/launcher/Launcher;

    .line 126
    .local v1, launcher:Lcom/android/launcher/Launcher;
    new-instance v2, Lcom/android/launcher/LiveFolderAdapter;

    iget-object v3, p0, Lcom/android/launcher/LiveFolder$FolderLoadingTask;->mInfo:Lcom/android/launcher/LiveFolderInfo;

    invoke-direct {v2, v1, v3, p1}, Lcom/android/launcher/LiveFolderAdapter;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/LiveFolderInfo;Landroid/database/Cursor;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher/LiveFolder;->setContentAdapter(Landroid/widget/BaseAdapter;)V

    .line 132
    .end local v0           #folder:Lcom/android/launcher/LiveFolder;
    .end local v1           #launcher:Lcom/android/launcher/Launcher;
    :cond_1e
    :goto_1e
    return-void

    .line 129
    :cond_1f
    if-eqz p1, :cond_1e

    .line 130
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1e
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/launcher/LiveFolder$FolderLoadingTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
