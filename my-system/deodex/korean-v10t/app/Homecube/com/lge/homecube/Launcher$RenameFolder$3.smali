.class Lcom/lge/homecube/Launcher$RenameFolder$3;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/homecube/Launcher$RenameFolder;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/homecube/Launcher$RenameFolder;


# direct methods
.method constructor <init>(Lcom/lge/homecube/Launcher$RenameFolder;)V
    .registers 2
    .parameter

    .prologue
    .line 3451
    iput-object p1, p0, Lcom/lge/homecube/Launcher$RenameFolder$3;->this$1:Lcom/lge/homecube/Launcher$RenameFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3452
    iget-object v0, p0, Lcom/lge/homecube/Launcher$RenameFolder$3;->this$1:Lcom/lge/homecube/Launcher$RenameFolder;

    invoke-static {v0}, Lcom/lge/homecube/Launcher$RenameFolder;->access$1500(Lcom/lge/homecube/Launcher$RenameFolder;)V

    .line 3453
    return-void
.end method
