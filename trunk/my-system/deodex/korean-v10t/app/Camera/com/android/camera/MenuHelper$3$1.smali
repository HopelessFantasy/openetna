.class Lcom/android/camera/MenuHelper$3$1;
.super Ljava/lang/Object;
.source "MenuHelper.java"

# interfaces
.implements Lcom/android/camera/MenuHelper$MenuCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/MenuHelper$3;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MenuHelper$3;


# direct methods
.method constructor <init>(Lcom/android/camera/MenuHelper$3;)V
    .registers 2
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/camera/MenuHelper$3$1;->this$0:Lcom/android/camera/MenuHelper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/net/Uri;Lcom/android/camera/ImageManager$IImage;)V
    .registers 6
    .parameter "u"
    .parameter "image"

    .prologue
    .line 200
    if-nez p1, :cond_3

    .line 207
    :goto_2
    return-void

    .line 203
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 204
    .local v0, cropIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/MenuHelper$3$1;->this$0:Lcom/android/camera/MenuHelper$3;

    iget-object v1, v1, Lcom/android/camera/MenuHelper$3;->val$activity:Landroid/app/Activity;

    const-class v2, Lcom/android/camera/CropImage;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 205
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 206
    iget-object v1, p0, Lcom/android/camera/MenuHelper$3$1;->this$0:Lcom/android/camera/MenuHelper$3;

    iget-object v1, v1, Lcom/android/camera/MenuHelper$3;->val$activity:Landroid/app/Activity;

    const/16 v2, 0x1ea

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method
