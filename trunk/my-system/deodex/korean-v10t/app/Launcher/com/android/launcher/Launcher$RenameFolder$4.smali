.class Lcom/android/launcher/Launcher$RenameFolder$4;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/Launcher$RenameFolder;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher/Launcher$RenameFolder;


# direct methods
.method constructor <init>(Lcom/android/launcher/Launcher$RenameFolder;)V
    .registers 2
    .parameter

    .prologue
    .line 1867
    iput-object p1, p0, Lcom/android/launcher/Launcher$RenameFolder$4;->this$1:Lcom/android/launcher/Launcher$RenameFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/android/launcher/Launcher$RenameFolder$4;->this$1:Lcom/android/launcher/Launcher$RenameFolder;

    iget-object v0, v0, Lcom/android/launcher/Launcher$RenameFolder;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->access$900(Lcom/android/launcher/Launcher;)Lcom/android/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/Workspace;->lock()V

    .line 1869
    return-void
.end method
