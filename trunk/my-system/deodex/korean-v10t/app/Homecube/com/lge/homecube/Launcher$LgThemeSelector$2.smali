.class Lcom/lge/homecube/Launcher$LgThemeSelector$2;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/homecube/Launcher$LgThemeSelector;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/homecube/Launcher$LgThemeSelector;


# direct methods
.method constructor <init>(Lcom/lge/homecube/Launcher$LgThemeSelector;)V
    .registers 2
    .parameter

    .prologue
    .line 4587
    iput-object p1, p0, Lcom/lge/homecube/Launcher$LgThemeSelector$2;->this$1:Lcom/lge/homecube/Launcher$LgThemeSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "bykong"

    .line 4588
    iget-object v1, p0, Lcom/lge/homecube/Launcher$LgThemeSelector$2;->this$1:Lcom/lge/homecube/Launcher$LgThemeSelector;

    iget-object v1, v1, Lcom/lge/homecube/Launcher$LgThemeSelector;->this$0:Lcom/lge/homecube/Launcher;

    invoke-virtual {v1, v3}, Lcom/lge/homecube/Launcher;->changeTheme(Z)V

    .line 4589
    if-nez p2, :cond_74

    .line 4591
    iget-object v1, p0, Lcom/lge/homecube/Launcher$LgThemeSelector$2;->this$1:Lcom/lge/homecube/Launcher$LgThemeSelector;

    iget-object v1, v1, Lcom/lge/homecube/Launcher$LgThemeSelector;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v2, p0, Lcom/lge/homecube/Launcher$LgThemeSelector$2;->this$1:Lcom/lge/homecube/Launcher$LgThemeSelector;

    iget-object v2, v2, Lcom/lge/homecube/Launcher$LgThemeSelector;->this$0:Lcom/lge/homecube/Launcher;

    invoke-virtual {v2}, Lcom/lge/homecube/Launcher;->getThemeState()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lge/homecube/Launcher;->setWallpaperTheme(Z)V

    .line 4592
    const-string v1, "bykong"

    const-string v1, "LG Theme : Wallpaper + Icon"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4603
    :goto_24
    iget-object v1, p0, Lcom/lge/homecube/Launcher$LgThemeSelector$2;->this$1:Lcom/lge/homecube/Launcher$LgThemeSelector;

    iget-object v1, v1, Lcom/lge/homecube/Launcher$LgThemeSelector;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v1, v4}, Lcom/lge/homecube/Launcher;->access$3602(Lcom/lge/homecube/Launcher;Z)Z

    .line 4604
    iget-object v1, p0, Lcom/lge/homecube/Launcher$LgThemeSelector$2;->this$1:Lcom/lge/homecube/Launcher$LgThemeSelector;

    iget-object v1, v1, Lcom/lge/homecube/Launcher$LgThemeSelector;->this$0:Lcom/lge/homecube/Launcher;

    iput-boolean v3, v1, Lcom/lge/homecube/Launcher;->mIsRotate:Z

    .line 4605
    iget-object v1, p0, Lcom/lge/homecube/Launcher$LgThemeSelector$2;->this$1:Lcom/lge/homecube/Launcher$LgThemeSelector;

    iget-object v1, v1, Lcom/lge/homecube/Launcher$LgThemeSelector;->this$0:Lcom/lge/homecube/Launcher;

    iput-object v5, v1, Lcom/lge/homecube/Launcher;->mReuseData:Ljava/lang/Object;

    .line 4606
    iget-object v1, p0, Lcom/lge/homecube/Launcher$LgThemeSelector$2;->this$1:Lcom/lge/homecube/Launcher$LgThemeSelector;

    iget-object v1, v1, Lcom/lge/homecube/Launcher$LgThemeSelector;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v1}, Lcom/lge/homecube/Launcher;->access$4900(Lcom/lge/homecube/Launcher;)V

    .line 4607
    iget-object v1, p0, Lcom/lge/homecube/Launcher$LgThemeSelector$2;->this$1:Lcom/lge/homecube/Launcher$LgThemeSelector;

    iget-object v1, v1, Lcom/lge/homecube/Launcher$LgThemeSelector;->this$0:Lcom/lge/homecube/Launcher;

    invoke-virtual {v1, v4}, Lcom/lge/homecube/Launcher;->changeGridSelector(Z)V

    .line 4608
    iget-object v1, p0, Lcom/lge/homecube/Launcher$LgThemeSelector$2;->this$1:Lcom/lge/homecube/Launcher$LgThemeSelector;

    iget-object v1, v1, Lcom/lge/homecube/Launcher$LgThemeSelector;->this$0:Lcom/lge/homecube/Launcher;

    new-instance v2, Lcom/lge/homecube/Launcher$ItemsLoader;

    iget-object v3, p0, Lcom/lge/homecube/Launcher$LgThemeSelector$2;->this$1:Lcom/lge/homecube/Launcher$LgThemeSelector;

    iget-object v3, v3, Lcom/lge/homecube/Launcher$LgThemeSelector;->this$0:Lcom/lge/homecube/Launcher;

    invoke-direct {v2, v3, v5}, Lcom/lge/homecube/Launcher$ItemsLoader;-><init>(Lcom/lge/homecube/Launcher;Lcom/lge/homecube/Launcher$1;)V

    invoke-virtual {v1, v2}, Lcom/lge/homecube/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4609
    iget-object v1, p0, Lcom/lge/homecube/Launcher$LgThemeSelector$2;->this$1:Lcom/lge/homecube/Launcher$LgThemeSelector;

    invoke-static {v1}, Lcom/lge/homecube/Launcher$LgThemeSelector;->access$4800(Lcom/lge/homecube/Launcher$LgThemeSelector;)V

    .line 4612
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.lge.orangephotowidget.orgwidgetview"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 4613
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/homecube/Launcher$LgThemeSelector$2;->this$1:Lcom/lge/homecube/Launcher$LgThemeSelector;

    iget-object v1, v1, Lcom/lge/homecube/Launcher$LgThemeSelector;->this$0:Lcom/lge/homecube/Launcher;

    invoke-virtual {v1, v0}, Lcom/lge/homecube/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 4615
    iget-object v1, p0, Lcom/lge/homecube/Launcher$LgThemeSelector$2;->this$1:Lcom/lge/homecube/Launcher$LgThemeSelector;

    iget-object v1, v1, Lcom/lge/homecube/Launcher$LgThemeSelector;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v1}, Lcom/lge/homecube/Launcher;->access$5000(Lcom/lge/homecube/Launcher;)V

    .line 4617
    return-void

    .line 4596
    .end local v0           #intent:Landroid/content/Intent;
    :cond_74
    const-string v1, "bykong"

    const-string v1, "LG Theme : Icon only"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method
