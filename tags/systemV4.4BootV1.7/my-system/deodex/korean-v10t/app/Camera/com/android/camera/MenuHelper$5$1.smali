.class Lcom/android/camera/MenuHelper$5$1;
.super Ljava/lang/Object;
.source "MenuHelper.java"

# interfaces
.implements Lcom/android/camera/MenuHelper$MenuCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/MenuHelper$5;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MenuHelper$5;


# direct methods
.method constructor <init>(Lcom/android/camera/MenuHelper$5;)V
    .registers 2
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/camera/MenuHelper$5$1;->this$0:Lcom/android/camera/MenuHelper$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/net/Uri;Lcom/android/camera/ImageManager$IImage;)V
    .registers 11
    .parameter "u"
    .parameter "image"

    .prologue
    .line 249
    if-nez p2, :cond_3

    .line 272
    :goto_2
    return-void

    .line 250
    :cond_3
    iget-object v4, p0, Lcom/android/camera/MenuHelper$5$1;->this$0:Lcom/android/camera/MenuHelper$5;

    iget-boolean v4, v4, Lcom/android/camera/MenuHelper$5;->val$isImage:Z

    if-nez v4, :cond_24

    invoke-static {p2}, Lcom/android/camera/MenuHelper;->getImageFileSize(Lcom/android/camera/ImageManager$IImage;)J

    move-result-wide v4

    const-wide/32 v6, 0x300000

    cmp-long v4, v4, v6

    if-lez v4, :cond_24

    .line 251
    iget-object v4, p0, Lcom/android/camera/MenuHelper$5$1;->this$0:Lcom/android/camera/MenuHelper$5;

    iget-object v4, v4, Lcom/android/camera/MenuHelper$5;->val$activity:Landroid/app/Activity;

    const v5, 0x7f0900b1

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 256
    :cond_24
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 257
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    invoke-interface {p2}, Lcom/android/camera/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, mimeType:Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 261
    invoke-static {v3}, Lcom/android/camera/ImageManager;->isImageMimeType(Ljava/lang/String;)Z

    move-result v2

    .line 263
    .local v2, isImage:Z
    :try_start_3e
    iget-object v4, p0, Lcom/android/camera/MenuHelper$5$1;->this$0:Lcom/android/camera/MenuHelper$5;

    iget-object v4, v4, Lcom/android/camera/MenuHelper$5;->val$activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/camera/MenuHelper$5$1;->this$0:Lcom/android/camera/MenuHelper$5;

    iget-object v5, v5, Lcom/android/camera/MenuHelper$5;->val$activity:Landroid/app/Activity;

    if-eqz v2, :cond_6b

    const v6, 0x7f0900a2

    :goto_4b
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_56
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3e .. :try_end_56} :catch_57

    goto :goto_2

    .line 266
    :catch_57
    move-exception v4

    move-object v0, v4

    .line 267
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    iget-object v4, p0, Lcom/android/camera/MenuHelper$5$1;->this$0:Lcom/android/camera/MenuHelper$5;

    iget-object v4, v4, Lcom/android/camera/MenuHelper$5;->val$activity:Landroid/app/Activity;

    if-eqz v2, :cond_6f

    const v5, 0x7f09002c

    :goto_62
    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 263
    .end local v0           #ex:Landroid/content/ActivityNotFoundException;
    :cond_6b
    const v6, 0x7f0900a4

    goto :goto_4b

    .line 267
    .restart local v0       #ex:Landroid/content/ActivityNotFoundException;
    :cond_6f
    const v5, 0x7f09002d

    goto :goto_62
.end method
