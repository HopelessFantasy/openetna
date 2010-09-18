.class final Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DownloadProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/DownloadProvider;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/DownloadProvider;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "context"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->this$0:Lcom/android/providers/downloads/DownloadProvider;

    .line 126
    const-string v0, "downloads.db"

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 127
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 134
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_b

    .line 135
    const-string v0, "DownloadManager"

    const-string v1, "populating new database"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_b
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->this$0:Lcom/android/providers/downloads/DownloadProvider;

    invoke-static {v0, p1}, Lcom/android/providers/downloads/DownloadProvider;->access$000(Lcom/android/providers/downloads/DownloadProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 138
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .parameter "db"
    .parameter "oldV"
    .parameter "newV"

    .prologue
    .line 159
    const/16 v0, 0x1f

    if-ne p2, v0, :cond_b

    .line 160
    const/16 v0, 0x64

    if-ne p3, v0, :cond_9

    .line 171
    :goto_8
    return-void

    .line 165
    :cond_9
    const/16 p2, 0x64

    .line 167
    :cond_b
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading downloads database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->this$0:Lcom/android/providers/downloads/DownloadProvider;

    invoke-static {v0, p1}, Lcom/android/providers/downloads/DownloadProvider;->access$100(Lcom/android/providers/downloads/DownloadProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 170
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->this$0:Lcom/android/providers/downloads/DownloadProvider;

    invoke-static {v0, p1}, Lcom/android/providers/downloads/DownloadProvider;->access$000(Lcom/android/providers/downloads/DownloadProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_8
.end method
