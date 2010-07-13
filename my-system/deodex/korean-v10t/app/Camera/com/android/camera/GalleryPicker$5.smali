.class Lcom/android/camera/GalleryPicker$5;
.super Ljava/lang/Object;
.source "GalleryPicker.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/GalleryPicker;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/GalleryPicker;


# direct methods
.method constructor <init>(Lcom/android/camera/GalleryPicker;)V
    .registers 2
    .parameter

    .prologue
    .line 690
    iput-object p1, p0, Lcom/android/camera/GalleryPicker$5;->this$0:Lcom/android/camera/GalleryPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 691
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 692
    .local v0, preferences:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/GalleryPicker$5;->this$0:Lcom/android/camera/GalleryPicker;

    const-class v2, Lcom/android/camera/GallerySettings;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 693
    iget-object v1, p0, Lcom/android/camera/GalleryPicker$5;->this$0:Lcom/android/camera/GalleryPicker;

    invoke-virtual {v1, v0}, Lcom/android/camera/GalleryPicker;->startActivity(Landroid/content/Intent;)V

    .line 694
    const/4 v1, 0x1

    return v1
.end method
