.class Lcom/android/camera/ImageGallery2$1;
.super Ljava/lang/Object;
.source "ImageGallery2.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageGallery2;->onCreate(Landroid/os/Bundle;)V
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
    .line 119
    iput-object p1, p0, Lcom/android/camera/ImageGallery2$1;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 12
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$1;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-static {v0}, Lcom/android/camera/ImageGallery2;->access$100(Lcom/android/camera/ImageGallery2;)Lcom/android/camera/SelectedImageGetter;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/SelectedImageGetter;->getCurrentImage()Lcom/android/camera/ImageManager$IImage;

    move-result-object v0

    if-nez v0, :cond_e

    .line 161
    :cond_d
    :goto_d
    return-void

    .line 123
    :cond_e
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$1;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-static {v0}, Lcom/android/camera/ImageGallery2;->access$100(Lcom/android/camera/ImageGallery2;)Lcom/android/camera/SelectedImageGetter;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/SelectedImageGetter;->getCurrentImage()Lcom/android/camera/ImageManager$IImage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ImageManager;->isImage(Lcom/android/camera/ImageManager$IImage;)Z

    move-result v2

    .line 124
    .local v2, isImage:Z
    if-eqz v2, :cond_2d

    .line 125
    const v0, 0x7f090016

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/camera/ImageGallery2$1$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ImageGallery2$1$1;-><init>(Lcom/android/camera/ImageGallery2$1;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 133
    :cond_2d
    if-eqz v2, :cond_6f

    const v0, 0x7f09009a

    :goto_32
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 135
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$1;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-static {v0}, Lcom/android/camera/ImageGallery2;->access$400(Lcom/android/camera/ImageGallery2;)I

    move-result v0

    and-int/lit8 v0, v0, 0x5

    if-eqz v0, :cond_d

    .line 136
    const/4 v1, -0x1

    iget-object v3, p0, Lcom/android/camera/ImageGallery2$1;->this$0:Lcom/android/camera/ImageGallery2;

    iget-object v0, p0, Lcom/android/camera/ImageGallery2$1;->this$0:Lcom/android/camera/ImageGallery2;

    iget-object v4, v0, Lcom/android/camera/ImageGallery2;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/ImageGallery2$1;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-static {v0}, Lcom/android/camera/ImageGallery2;->access$500(Lcom/android/camera/ImageGallery2;)Ljava/lang/Runnable;

    move-result-object v5

    new-instance v6, Lcom/android/camera/ImageGallery2$1$2;

    invoke-direct {v6, p0}, Lcom/android/camera/ImageGallery2$1$2;-><init>(Lcom/android/camera/ImageGallery2$1;)V

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/camera/MenuHelper;->addImageMenuItems(Landroid/view/Menu;IZLandroid/app/Activity;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/android/camera/MenuHelper$MenuInvoker;)Lcom/android/camera/MenuHelper$MenuItemsResult;

    move-result-object v7

    .line 154
    .local v7, r:Lcom/android/camera/MenuHelper$MenuItemsResult;
    if-eqz v7, :cond_65

    .line 155
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$1;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-static {v0}, Lcom/android/camera/ImageGallery2;->access$100(Lcom/android/camera/ImageGallery2;)Lcom/android/camera/SelectedImageGetter;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/SelectedImageGetter;->getCurrentImage()Lcom/android/camera/ImageManager$IImage;

    move-result-object v0

    invoke-interface {v7, p1, v0}, Lcom/android/camera/MenuHelper$MenuItemsResult;->gettingReadyToOpen(Landroid/view/Menu;Lcom/android/camera/ImageManager$IImage;)V

    .line 157
    :cond_65
    if-eqz v2, :cond_d

    .line 158
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$1;->this$0:Lcom/android/camera/ImageGallery2;

    const/16 v1, 0x3e8

    invoke-static {v0, p1, v1}, Lcom/android/camera/ImageGallery2;->access$800(Lcom/android/camera/ImageGallery2;Landroid/view/Menu;I)Landroid/view/MenuItem;

    goto :goto_d

    .line 133
    .end local v7           #r:Lcom/android/camera/MenuHelper$MenuItemsResult;
    :cond_6f
    const v0, 0x7f09009b

    goto :goto_32
.end method
