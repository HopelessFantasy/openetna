.class Lcom/android/camera/ViewImage$6;
.super Ljava/lang/Object;
.source "ViewImage.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ViewImage;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ViewImage;


# direct methods
.method constructor <init>(Lcom/android/camera/ViewImage;)V
    .registers 2
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/camera/ViewImage$6;->this$0:Lcom/android/camera/ViewImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 555
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 556
    .local v0, preferences:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/ViewImage$6;->this$0:Lcom/android/camera/ViewImage;

    const-class v2, Lcom/android/camera/GallerySettings;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 557
    iget-object v1, p0, Lcom/android/camera/ViewImage$6;->this$0:Lcom/android/camera/ViewImage;

    invoke-virtual {v1, v0}, Lcom/android/camera/ViewImage;->startActivity(Landroid/content/Intent;)V

    .line 558
    const/4 v1, 0x1

    return v1
.end method
