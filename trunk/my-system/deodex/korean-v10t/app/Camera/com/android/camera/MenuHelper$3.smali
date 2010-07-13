.class Lcom/android/camera/MenuHelper$3;
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

.field final synthetic val$onInvoke:Lcom/android/camera/MenuHelper$MenuInvoker;


# direct methods
.method constructor <init>(Lcom/android/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/camera/MenuHelper$3;->val$onInvoke:Lcom/android/camera/MenuHelper$MenuInvoker;

    iput-object p2, p0, Lcom/android/camera/MenuHelper$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/camera/MenuHelper$3;->val$onInvoke:Lcom/android/camera/MenuHelper$MenuInvoker;

    new-instance v1, Lcom/android/camera/MenuHelper$3$1;

    invoke-direct {v1, p0}, Lcom/android/camera/MenuHelper$3$1;-><init>(Lcom/android/camera/MenuHelper$3;)V

    invoke-interface {v0, v1}, Lcom/android/camera/MenuHelper$MenuInvoker;->run(Lcom/android/camera/MenuHelper$MenuCallback;)V

    .line 209
    const/4 v0, 0x1

    return v0
.end method
