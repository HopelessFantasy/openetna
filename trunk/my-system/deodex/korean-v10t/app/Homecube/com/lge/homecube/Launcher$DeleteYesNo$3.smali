.class Lcom/lge/homecube/Launcher$DeleteYesNo$3;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/homecube/Launcher$DeleteYesNo;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/homecube/Launcher$DeleteYesNo;


# direct methods
.method constructor <init>(Lcom/lge/homecube/Launcher$DeleteYesNo;)V
    .registers 2
    .parameter

    .prologue
    .line 4557
    iput-object p1, p0, Lcom/lge/homecube/Launcher$DeleteYesNo$3;->this$1:Lcom/lge/homecube/Launcher$DeleteYesNo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 4558
    iget-object v0, p0, Lcom/lge/homecube/Launcher$DeleteYesNo$3;->this$1:Lcom/lge/homecube/Launcher$DeleteYesNo;

    iget-object v0, v0, Lcom/lge/homecube/Launcher$DeleteYesNo;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v1, p0, Lcom/lge/homecube/Launcher$DeleteYesNo$3;->this$1:Lcom/lge/homecube/Launcher$DeleteYesNo;

    iget-object v1, v1, Lcom/lge/homecube/Launcher$DeleteYesNo;->this$0:Lcom/lge/homecube/Launcher;

    invoke-static {v1}, Lcom/lge/homecube/Launcher;->access$3900(Lcom/lge/homecube/Launcher;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/homecube/Launcher;->DeleteGroup(I)V

    .line 4559
    iget-object v0, p0, Lcom/lge/homecube/Launcher$DeleteYesNo$3;->this$1:Lcom/lge/homecube/Launcher$DeleteYesNo;

    invoke-static {v0}, Lcom/lge/homecube/Launcher$DeleteYesNo;->access$4700(Lcom/lge/homecube/Launcher$DeleteYesNo;)V

    .line 4560
    return-void
.end method
