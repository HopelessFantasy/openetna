.class Lcom/android/camera/MenuHelper$2$1;
.super Ljava/lang/Object;
.source "MenuHelper.java"

# interfaces
.implements Lcom/android/camera/MenuHelper$MenuCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/MenuHelper$2;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MenuHelper$2;


# direct methods
.method constructor <init>(Lcom/android/camera/MenuHelper$2;)V
    .registers 2
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/camera/MenuHelper$2$1;->this$0:Lcom/android/camera/MenuHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/net/Uri;Lcom/android/camera/ImageManager$IImage;)V
    .registers 4
    .parameter "u"
    .parameter "image"

    .prologue
    .line 181
    if-eqz p2, :cond_8

    invoke-interface {p2}, Lcom/android/camera/ImageManager$IImage;->isReadonly()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 185
    :cond_8
    :goto_8
    return-void

    .line 184
    :cond_9
    const/16 v0, 0x5a

    invoke-interface {p2, v0}, Lcom/android/camera/ImageManager$IImage;->rotateImageBy(I)Z

    goto :goto_8
.end method
