.class Lcom/android/camera/ImageGallery2$9;
.super Ljava/lang/Object;
.source "ImageGallery2.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageGallery2;->onCreateOptionsMenu(Landroid/view/Menu;)Z
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
    .line 644
    iput-object p1, p0, Lcom/android/camera/ImageGallery2$9;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 645
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 646
    .local v0, preferences:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$9;->this$0:Lcom/android/camera/ImageGallery2;

    const-class v2, Lcom/android/camera/GallerySettings;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 647
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$9;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-virtual {v1, v0}, Lcom/android/camera/ImageGallery2;->startActivity(Landroid/content/Intent;)V

    .line 648
    const/4 v1, 0x1

    return v1
.end method
