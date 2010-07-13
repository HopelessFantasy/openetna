.class Lcom/android/launcher/Launcher$RenameFolder$3;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 1858
    iput-object p1, p0, Lcom/android/launcher/Launcher$RenameFolder$3;->this$1:Lcom/android/launcher/Launcher$RenameFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/android/launcher/Launcher$RenameFolder$3;->this$1:Lcom/android/launcher/Launcher$RenameFolder;

    invoke-static {v0}, Lcom/android/launcher/Launcher$RenameFolder;->access$800(Lcom/android/launcher/Launcher$RenameFolder;)V

    .line 1860
    return-void
.end method
