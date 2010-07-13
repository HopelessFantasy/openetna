.class Lcom/android/camera/MenuHelper$9;
.super Ljava/lang/Object;
.source "MenuHelper.java"

# interfaces
.implements Lcom/android/camera/MenuHelper$MenuItemsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/MenuHelper;->addImageMenuItems(Landroid/view/Menu;IZLandroid/app/Activity;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/android/camera/MenuHelper$MenuInvoker;)Lcom/android/camera/MenuHelper$MenuItemsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$requiresNoDrmAccessItems:Ljava/util/ArrayList;

.field final synthetic val$requiresWriteAccessItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/camera/MenuHelper$9;->val$requiresWriteAccessItems:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/camera/MenuHelper$9;->val$requiresNoDrmAccessItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aboutToCall(Landroid/view/MenuItem;Lcom/android/camera/ImageManager$IImage;)V
    .registers 3
    .parameter "menu"
    .parameter "image"

    .prologue
    .line 499
    return-void
.end method

.method public gettingReadyToOpen(Landroid/view/Menu;Lcom/android/camera/ImageManager$IImage;)V
    .registers 10
    .parameter "menu"
    .parameter "image"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 478
    if-nez p2, :cond_5

    .line 497
    :cond_4
    return-void

    .line 481
    :cond_5
    invoke-interface {p2}, Lcom/android/camera/ImageManager$IImage;->isReadonly()Z

    move-result v3

    .line 482
    .local v3, readOnly:Z
    invoke-interface {p2}, Lcom/android/camera/ImageManager$IImage;->isDrm()Z

    move-result v1

    .line 485
    .local v1, isDrm:Z
    iget-object v4, p0, Lcom/android/camera/MenuHelper$9;->val$requiresWriteAccessItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    .line 488
    .local v2, item:Landroid/view/MenuItem;
    if-nez v3, :cond_2c

    move v4, v6

    :goto_22
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 489
    if-nez v3, :cond_2e

    move v4, v6

    :goto_28
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_13

    :cond_2c
    move v4, v5

    .line 488
    goto :goto_22

    :cond_2e
    move v4, v5

    .line 489
    goto :goto_28

    .line 491
    .end local v2           #item:Landroid/view/MenuItem;
    :cond_30
    iget-object v4, p0, Lcom/android/camera/MenuHelper$9;->val$requiresNoDrmAccessItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    .line 494
    .restart local v2       #item:Landroid/view/MenuItem;
    if-nez v1, :cond_4f

    move v4, v6

    :goto_45
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 495
    if-nez v1, :cond_51

    move v4, v6

    :goto_4b
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_36

    :cond_4f
    move v4, v5

    .line 494
    goto :goto_45

    :cond_51
    move v4, v5

    .line 495
    goto :goto_4b
.end method
