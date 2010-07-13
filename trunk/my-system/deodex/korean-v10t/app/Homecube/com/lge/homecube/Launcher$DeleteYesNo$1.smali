.class Lcom/lge/homecube/Launcher$DeleteYesNo$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 4544
    iput-object p1, p0, Lcom/lge/homecube/Launcher$DeleteYesNo$1;->this$1:Lcom/lge/homecube/Launcher$DeleteYesNo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 4545
    iget-object v0, p0, Lcom/lge/homecube/Launcher$DeleteYesNo$1;->this$1:Lcom/lge/homecube/Launcher$DeleteYesNo;

    invoke-static {v0}, Lcom/lge/homecube/Launcher$DeleteYesNo;->access$4700(Lcom/lge/homecube/Launcher$DeleteYesNo;)V

    .line 4546
    return-void
.end method
