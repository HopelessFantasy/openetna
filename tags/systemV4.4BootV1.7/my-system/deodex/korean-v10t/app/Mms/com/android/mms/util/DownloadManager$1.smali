.class Lcom/android/mms/util/DownloadManager$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/DownloadManager;


# direct methods
.method constructor <init>(Lcom/android/mms/util/DownloadManager;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/mms/util/DownloadManager$1;->this$0:Lcom/android/mms/util/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 7
    .parameter "prefs"
    .parameter "key"

    .prologue
    const-string v1, "DownloadManager"

    .line 69
    const-string v0, "pref_key_mms_auto_retrieval"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 71
    :cond_12
    const-string v0, "DownloadManager"

    const-string v0, "Preferences updated."

    invoke-static {v1, v0}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->access$000()Lcom/android/mms/util/DownloadManager;

    move-result-object v0

    monitor-enter v0

    .line 74
    :try_start_1e
    iget-object v1, p0, Lcom/android/mms/util/DownloadManager$1;->this$0:Lcom/android/mms/util/DownloadManager;

    iget-object v2, p0, Lcom/android/mms/util/DownloadManager$1;->this$0:Lcom/android/mms/util/DownloadManager;

    invoke-static {v2}, Lcom/android/mms/util/DownloadManager;->access$200(Lcom/android/mms/util/DownloadManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/mms/util/DownloadManager;->getAutoDownloadState(Landroid/content/SharedPreferences;Landroid/content/Context;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/mms/util/DownloadManager;->access$102(Lcom/android/mms/util/DownloadManager;Z)Z

    .line 75
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAutoDownload ------> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/util/DownloadManager$1;->this$0:Lcom/android/mms/util/DownloadManager;

    invoke-static {v3}, Lcom/android/mms/util/DownloadManager;->access$100(Lcom/android/mms/util/DownloadManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    monitor-exit v0

    .line 78
    :cond_4c
    return-void

    .line 76
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_1e .. :try_end_4f} :catchall_4d

    throw v1
.end method
