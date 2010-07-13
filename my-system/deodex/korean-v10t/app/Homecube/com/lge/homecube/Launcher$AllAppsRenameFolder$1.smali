.class Lcom/lge/homecube/Launcher$AllAppsRenameFolder$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/homecube/Launcher$AllAppsRenameFolder;


# direct methods
.method constructor <init>(Lcom/lge/homecube/Launcher$AllAppsRenameFolder;)V
    .registers 2
    .parameter

    .prologue
    .line 4289
    iput-object p1, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder$1;->this$1:Lcom/lge/homecube/Launcher$AllAppsRenameFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 4290
    iget-object v0, p0, Lcom/lge/homecube/Launcher$AllAppsRenameFolder$1;->this$1:Lcom/lge/homecube/Launcher$AllAppsRenameFolder;

    invoke-static {v0}, Lcom/lge/homecube/Launcher$AllAppsRenameFolder;->access$3700(Lcom/lge/homecube/Launcher$AllAppsRenameFolder;)V

    .line 4291
    return-void
.end method
