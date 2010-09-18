.class Lcom/android/camera/MenuHelper$15;
.super Ljava/lang/Object;
.source "MenuHelper.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/MenuHelper;->addFlipOrientation(Landroid/view/Menu;Landroid/app/Activity;Landroid/content/SharedPreferences;)Landroid/view/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/SharedPreferences;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 661
    iput-object p1, p0, Lcom/android/camera/MenuHelper$15;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/camera/MenuHelper$15;->val$prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 663
    iget-object v3, p0, Lcom/android/camera/MenuHelper$15;->val$activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    .line 664
    .local v0, current:I
    const/4 v2, 0x0

    .line 665
    .local v2, newOrientation:I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_12

    .line 666
    const/4 v2, -0x1

    .line 668
    :cond_12
    iget-object v3, p0, Lcom/android/camera/MenuHelper$15;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 669
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "nuorientation"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 670
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 671
    iget-object v3, p0, Lcom/android/camera/MenuHelper$15;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/camera/MenuHelper$15;->val$prefs:Landroid/content/SharedPreferences;

    invoke-static {v3, v4, v5}, Lcom/android/camera/MenuHelper;->access$100(Landroid/app/Activity;Landroid/content/SharedPreferences;Z)V

    .line 672
    return v5
.end method
