.class Lcom/lge/homecube/LauncherModel$DesktopItemsLoader$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;

.field final synthetic val$launcher:Lcom/lge/homecube/Launcher;


# direct methods
.method constructor <init>(Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;Lcom/lge/homecube/Launcher;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 910
    iput-object p1, p0, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader$1;->this$1:Lcom/lge/homecube/LauncherModel$DesktopItemsLoader;

    iput-object p2, p0, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader$1;->val$launcher:Lcom/lge/homecube/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 911
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel$DesktopItemsLoader$1;->val$launcher:Lcom/lge/homecube/Launcher;

    invoke-virtual {v0}, Lcom/lge/homecube/Launcher;->onDesktopItemsLoaded()V

    .line 912
    return-void
.end method
