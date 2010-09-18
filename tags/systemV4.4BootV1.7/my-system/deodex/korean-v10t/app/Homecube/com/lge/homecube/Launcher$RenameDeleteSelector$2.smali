.class Lcom/lge/homecube/Launcher$RenameDeleteSelector$2;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/homecube/Launcher$RenameDeleteSelector;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/homecube/Launcher$RenameDeleteSelector;


# direct methods
.method constructor <init>(Lcom/lge/homecube/Launcher$RenameDeleteSelector;)V
    .registers 2
    .parameter

    .prologue
    .line 4514
    iput-object p1, p0, Lcom/lge/homecube/Launcher$RenameDeleteSelector$2;->this$1:Lcom/lge/homecube/Launcher$RenameDeleteSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 4516
    if-nez p2, :cond_f

    .line 4517
    iget-object v0, p0, Lcom/lge/homecube/Launcher$RenameDeleteSelector$2;->this$1:Lcom/lge/homecube/Launcher$RenameDeleteSelector;

    iget-object v0, v0, Lcom/lge/homecube/Launcher$RenameDeleteSelector;->this$0:Lcom/lge/homecube/Launcher;

    invoke-virtual {v0}, Lcom/lge/homecube/Launcher;->showRenameDialogAllApps()V

    .line 4520
    :goto_9
    iget-object v0, p0, Lcom/lge/homecube/Launcher$RenameDeleteSelector$2;->this$1:Lcom/lge/homecube/Launcher$RenameDeleteSelector;

    invoke-static {v0}, Lcom/lge/homecube/Launcher$RenameDeleteSelector;->access$4600(Lcom/lge/homecube/Launcher$RenameDeleteSelector;)V

    .line 4521
    return-void

    .line 4519
    :cond_f
    iget-object v0, p0, Lcom/lge/homecube/Launcher$RenameDeleteSelector$2;->this$1:Lcom/lge/homecube/Launcher$RenameDeleteSelector;

    iget-object v0, v0, Lcom/lge/homecube/Launcher$RenameDeleteSelector;->this$0:Lcom/lge/homecube/Launcher;

    invoke-virtual {v0}, Lcom/lge/homecube/Launcher;->showDeleteYesNoDialog()V

    goto :goto_9
.end method
