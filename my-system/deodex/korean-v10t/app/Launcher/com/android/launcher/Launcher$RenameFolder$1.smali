.class Lcom/android/launcher/Launcher$RenameFolder$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 1845
    iput-object p1, p0, Lcom/android/launcher/Launcher$RenameFolder$1;->this$1:Lcom/android/launcher/Launcher$RenameFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/android/launcher/Launcher$RenameFolder$1;->this$1:Lcom/android/launcher/Launcher$RenameFolder;

    invoke-static {v0}, Lcom/android/launcher/Launcher$RenameFolder;->access$700(Lcom/android/launcher/Launcher$RenameFolder;)V

    .line 1847
    return-void
.end method
