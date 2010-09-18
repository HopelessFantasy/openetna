.class Lcom/android/camera/MenuHelper$4$1;
.super Ljava/lang/Object;
.source "MenuHelper.java"

# interfaces
.implements Lcom/android/camera/MenuHelper$MenuCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/MenuHelper$4;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MenuHelper$4;


# direct methods
.method constructor <init>(Lcom/android/camera/MenuHelper$4;)V
    .registers 2
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/camera/MenuHelper$4$1;->this$0:Lcom/android/camera/MenuHelper$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/net/Uri;Lcom/android/camera/ImageManager$IImage;)V
    .registers 7
    .parameter "u"
    .parameter "image"

    .prologue
    .line 224
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 233
    :cond_4
    :goto_4
    return-void

    .line 229
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ATTACH_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, intent:Landroid/content/Intent;
    invoke-interface {p2}, Lcom/android/camera/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v1, "mimeType"

    invoke-interface {p2}, Lcom/android/camera/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    iget-object v1, p0, Lcom/android/camera/MenuHelper$4$1;->this$0:Lcom/android/camera/MenuHelper$4;

    iget-object v1, v1, Lcom/android/camera/MenuHelper$4;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/camera/MenuHelper$4$1;->this$0:Lcom/android/camera/MenuHelper$4;

    iget-object v2, v2, Lcom/android/camera/MenuHelper$4;->val$activity:Landroid/app/Activity;

    const v3, 0x7f0900a3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4
.end method
