.class Lcom/android/camera/ImageGallery2$7;
.super Landroid/content/BroadcastReceiver;
.source "ImageGallery2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageGallery2;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ImageGallery2;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageGallery2;)V
    .registers 2
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/camera/ImageGallery2$7;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const v6, 0x7f09000d

    const/16 v5, 0x1388

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 520
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 542
    :cond_13
    :goto_13
    return-void

    .line 525
    :cond_14
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 528
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$7;->this$0:Lcom/android/camera/ImageGallery2;

    iget-object v2, p0, Lcom/android/camera/ImageGallery2$7;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-virtual {v2}, Lcom/android/camera/ImageGallery2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 529
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$7;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-static {v1, v4, v3}, Lcom/android/camera/ImageGallery2;->access$1400(Lcom/android/camera/ImageGallery2;ZZ)V

    goto :goto_13

    .line 530
    :cond_31
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 531
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$7;->this$0:Lcom/android/camera/ImageGallery2;

    iget-object v2, p0, Lcom/android/camera/ImageGallery2$7;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-virtual {v2}, Lcom/android/camera/ImageGallery2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 532
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$7;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-static {v1, v3, v4}, Lcom/android/camera/ImageGallery2;->access$1400(Lcom/android/camera/ImageGallery2;ZZ)V

    goto :goto_13

    .line 533
    :cond_4e
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 536
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$7;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-static {v1, v3, v3}, Lcom/android/camera/ImageGallery2;->access$1400(Lcom/android/camera/ImageGallery2;ZZ)V

    goto :goto_13

    .line 537
    :cond_5c
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 540
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$7;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-static {v1, v4, v3}, Lcom/android/camera/ImageGallery2;->access$1400(Lcom/android/camera/ImageGallery2;ZZ)V

    goto :goto_13
.end method
