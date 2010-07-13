.class Lcom/lge/homecube/Launcher$ResetGroup$3;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/homecube/Launcher$ResetGroup;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/homecube/Launcher$ResetGroup;


# direct methods
.method constructor <init>(Lcom/lge/homecube/Launcher$ResetGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 4484
    iput-object p1, p0, Lcom/lge/homecube/Launcher$ResetGroup$3;->this$1:Lcom/lge/homecube/Launcher$ResetGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 4485
    iget-object v0, p0, Lcom/lge/homecube/Launcher$ResetGroup$3;->this$1:Lcom/lge/homecube/Launcher$ResetGroup;

    iget-object v0, v0, Lcom/lge/homecube/Launcher$ResetGroup;->this$0:Lcom/lge/homecube/Launcher;

    invoke-virtual {v0}, Lcom/lge/homecube/Launcher;->ResetGroup()V

    .line 4486
    iget-object v0, p0, Lcom/lge/homecube/Launcher$ResetGroup$3;->this$1:Lcom/lge/homecube/Launcher$ResetGroup;

    invoke-static {v0}, Lcom/lge/homecube/Launcher$ResetGroup;->access$4400(Lcom/lge/homecube/Launcher$ResetGroup;)V

    .line 4487
    return-void
.end method
