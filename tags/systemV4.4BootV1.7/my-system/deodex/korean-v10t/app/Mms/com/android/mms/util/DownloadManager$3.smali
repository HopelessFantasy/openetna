.class Lcom/android/mms/util/DownloadManager$3;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/DownloadManager;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/util/DownloadManager;Landroid/net/Uri;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/mms/util/DownloadManager$3;->this$0:Lcom/android/mms/util/DownloadManager;

    iput-object p2, p0, Lcom/android/mms/util/DownloadManager$3;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/util/DownloadManager$3;->this$0:Lcom/android/mms/util/DownloadManager;

    invoke-static {v1}, Lcom/android/mms/util/DownloadManager;->access$200(Lcom/android/mms/util/DownloadManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/DownloadManager$3;->this$0:Lcom/android/mms/util/DownloadManager;

    iget-object v3, p0, Lcom/android/mms/util/DownloadManager$3;->val$uri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/android/mms/util/DownloadManager;->access$400(Lcom/android/mms/util/DownloadManager;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_16
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_16} :catch_17

    .line 187
    :goto_16
    return-void

    .line 184
    :catch_17
    move-exception v1

    move-object v0, v1

    .line 185
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "DownloadManager"

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method
