.class Lcom/android/camera/ImageManager$ImageList$2;
.super Landroid/database/ContentObserver;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageManager$ImageList;-><init>(Lcom/android/camera/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ImageManager$ImageList;

.field final synthetic val$this$0:Lcom/android/camera/ImageManager;

.field final synthetic val$updateRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageManager$ImageList;Landroid/os/Handler;Lcom/android/camera/ImageManager;Ljava/lang/Runnable;)V
    .registers 5
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 2261
    iput-object p1, p0, Lcom/android/camera/ImageManager$ImageList$2;->this$1:Lcom/android/camera/ImageManager$ImageList;

    iput-object p3, p0, Lcom/android/camera/ImageManager$ImageList$2;->val$this$0:Lcom/android/camera/ImageManager;

    iput-object p4, p0, Lcom/android/camera/ImageManager$ImageList$2;->val$updateRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 2257
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 2263
    iget-object v0, p0, Lcom/android/camera/ImageManager$ImageList$2;->val$updateRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2264
    return-void
.end method
