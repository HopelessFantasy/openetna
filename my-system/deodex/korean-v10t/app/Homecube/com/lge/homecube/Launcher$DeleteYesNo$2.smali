.class Lcom/lge/homecube/Launcher$DeleteYesNo$2;
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
    .line 4550
    iput-object p1, p0, Lcom/lge/homecube/Launcher$DeleteYesNo$2;->this$1:Lcom/lge/homecube/Launcher$DeleteYesNo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 4551
    iget-object v0, p0, Lcom/lge/homecube/Launcher$DeleteYesNo$2;->this$1:Lcom/lge/homecube/Launcher$DeleteYesNo;

    invoke-static {v0}, Lcom/lge/homecube/Launcher$DeleteYesNo;->access$4700(Lcom/lge/homecube/Launcher$DeleteYesNo;)V

    .line 4552
    return-void
.end method
