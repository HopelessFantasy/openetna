.class Lcom/android/launcher/LauncherModel$DesktopItemsLoader$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/LauncherModel$DesktopItemsLoader;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher/LauncherModel$DesktopItemsLoader;

.field final synthetic val$launcher:Lcom/android/launcher/Launcher;

.field final synthetic val$uiDesktopItems:Ljava/util/ArrayList;

.field final synthetic val$uiDesktopWidgets:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher/LauncherModel$DesktopItemsLoader;Lcom/android/launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 971
    iput-object p1, p0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader$1;->this$1:Lcom/android/launcher/LauncherModel$DesktopItemsLoader;

    iput-object p2, p0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader$1;->val$launcher:Lcom/android/launcher/Launcher;

    iput-object p3, p0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader$1;->val$uiDesktopItems:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader$1;->val$uiDesktopWidgets:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 972
    const-string v0, "HomeLoaders"

    const-string v1, "  ----> onDesktopItemsLoaded()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v0, p0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader$1;->val$launcher:Lcom/android/launcher/Launcher;

    iget-object v1, p0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader$1;->val$uiDesktopItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher/LauncherModel$DesktopItemsLoader$1;->val$uiDesktopWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher/Launcher;->onDesktopItemsLoaded(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 974
    return-void
.end method
