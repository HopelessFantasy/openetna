.class Lcom/android/camera/MenuHelper$12;
.super Ljava/lang/Object;
.source "MenuHelper.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/MenuHelper;->addSwitchModeMenuItem(Landroid/view/Menu;Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$switchToVideo:Z


# direct methods
.method constructor <init>(ZLandroid/app/Activity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 561
    iput-boolean p1, p0, Lcom/android/camera/MenuHelper$12;->val$switchToVideo:Z

    iput-object p2, p0, Lcom/android/camera/MenuHelper$12;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 562
    iget-boolean v2, p0, Lcom/android/camera/MenuHelper$12;->val$switchToVideo:Z

    if-eqz v2, :cond_1d

    const-string v2, "android.media.action.VIDEO_CAMERA"

    move-object v0, v2

    .line 564
    .local v0, action:Ljava/lang/String;
    :goto_7
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 565
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 566
    const/high16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 567
    iget-object v2, p0, Lcom/android/camera/MenuHelper$12;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 568
    const/4 v2, 0x1

    return v2

    .line 562
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1d
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    move-object v0, v2

    goto :goto_7
.end method
