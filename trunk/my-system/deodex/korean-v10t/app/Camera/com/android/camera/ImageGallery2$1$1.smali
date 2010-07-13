.class Lcom/android/camera/ImageGallery2$1$1;
.super Ljava/lang/Object;
.source "ImageGallery2.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageGallery2$1;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ImageGallery2$1;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageGallery2$1;)V
    .registers 2
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/camera/ImageGallery2$1$1;->this$1:Lcom/android/camera/ImageGallery2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$1$1;->this$1:Lcom/android/camera/ImageGallery2$1;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$1;->this$0:Lcom/android/camera/ImageGallery2;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    iget-object v1, p0, Lcom/android/camera/ImageGallery2$1$1;->this$1:Lcom/android/camera/ImageGallery2$1;

    iget-object v1, v1, Lcom/android/camera/ImageGallery2$1;->this$0:Lcom/android/camera/ImageGallery2;

    iget-object v1, v1, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$200(Lcom/android/camera/ImageGallery2$GridViewSpecial;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$300(Lcom/android/camera/ImageGallery2$GridViewSpecial;I)V

    .line 128
    const/4 v0, 0x1

    return v0
.end method
