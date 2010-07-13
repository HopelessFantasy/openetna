.class Lcom/android/mms/ui/MessageUtils$2;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$imageUri:Landroid/net/Uri;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;

.field final synthetic val$showProgress:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 799
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$2;->val$imageUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/ui/MessageUtils$2;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/mms/ui/MessageUtils$2;->val$showProgress:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/android/mms/ui/MessageUtils$2;->val$progressDialog:Landroid/app/ProgressDialog;

    iput-object p6, p0, Lcom/android/mms/ui/MessageUtils$2;->val$cb:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 802
    :try_start_0
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$2;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$2;->val$imageUri:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 803
    .local v0, image:Lcom/android/mms/ui/UriImage;
    const/16 v2, 0x280

    const/16 v3, 0x1e0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(II)Lcom/google/android/mms/pdu/PduPart;
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_28

    move-result-object v1

    .line 808
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$2;->val$handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$2;->val$showProgress:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 810
    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$2;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 813
    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$2;->val$handler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/ui/MessageUtils$2$1;

    invoke-direct {v3, p0, v1}, Lcom/android/mms/ui/MessageUtils$2$1;-><init>(Lcom/android/mms/ui/MessageUtils$2;Lcom/google/android/mms/pdu/PduPart;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 818
    return-void

    .line 808
    .end local v0           #image:Lcom/android/mms/ui/UriImage;
    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    :catchall_28
    move-exception v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$2;->val$handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/mms/ui/MessageUtils$2;->val$showProgress:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 810
    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$2;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    throw v2
.end method
