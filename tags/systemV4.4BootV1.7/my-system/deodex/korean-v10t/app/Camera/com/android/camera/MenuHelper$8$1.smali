.class Lcom/android/camera/MenuHelper$8$1;
.super Ljava/lang/Object;
.source "MenuHelper.java"

# interfaces
.implements Lcom/android/camera/MenuHelper$MenuCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/MenuHelper$8;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MenuHelper$8;


# direct methods
.method constructor <init>(Lcom/android/camera/MenuHelper$8;)V
    .registers 2
    .parameter

    .prologue
    .line 462
    iput-object p1, p0, Lcom/android/camera/MenuHelper$8$1;->this$0:Lcom/android/camera/MenuHelper$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/net/Uri;Lcom/android/camera/ImageManager$IImage;)V
    .registers 6
    .parameter "uri"
    .parameter "image"

    .prologue
    .line 463
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-interface {p2}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 465
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/MenuHelper$8$1;->this$0:Lcom/android/camera/MenuHelper$8;

    iget-object v1, v1, Lcom/android/camera/MenuHelper$8;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 466
    return-void
.end method
