.class Lcom/android/camera/VideoCamera$8;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoCamera;->addBaseMenuItems(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoCamera;)V
    .registers 2
    .parameter

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/android/camera/VideoCamera$8;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/android/camera/VideoCamera$8;->this$0:Lcom/android/camera/VideoCamera;

    invoke-virtual {v0}, Lcom/android/camera/VideoCamera;->gotoGallery()V

    .line 1059
    const/4 v0, 0x1

    return v0
.end method
