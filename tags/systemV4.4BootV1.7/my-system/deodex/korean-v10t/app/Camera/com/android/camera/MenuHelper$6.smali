.class Lcom/android/camera/MenuHelper$6;
.super Ljava/lang/Object;
.source "MenuHelper.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/MenuHelper;->addImageMenuItems(Landroid/view/Menu;IZLandroid/app/Activity;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/android/camera/MenuHelper$MenuInvoker;)Lcom/android/camera/MenuHelper$MenuItemsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$isImage:Z

.field final synthetic val$onDelete:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/camera/MenuHelper$6;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/camera/MenuHelper$6;->val$onDelete:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/android/camera/MenuHelper$6;->val$isImage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/camera/MenuHelper$6;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/camera/MenuHelper$6;->val$onDelete:Ljava/lang/Runnable;

    iget-boolean v2, p0, Lcom/android/camera/MenuHelper$6;->val$isImage:Z

    invoke-static {v0, v1, v2}, Lcom/android/camera/MenuHelper;->access$000(Landroid/app/Activity;Ljava/lang/Runnable;Z)V

    .line 288
    const/4 v0, 0x1

    return v0
.end method
