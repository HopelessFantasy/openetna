.class Lcom/lge/homecube/Launcher$AddGroup$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/homecube/Launcher$AddGroup;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/homecube/Launcher$AddGroup;


# direct methods
.method constructor <init>(Lcom/lge/homecube/Launcher$AddGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 4389
    iput-object p1, p0, Lcom/lge/homecube/Launcher$AddGroup$1;->this$1:Lcom/lge/homecube/Launcher$AddGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 4390
    iget-object v0, p0, Lcom/lge/homecube/Launcher$AddGroup$1;->this$1:Lcom/lge/homecube/Launcher$AddGroup;

    invoke-static {v0}, Lcom/lge/homecube/Launcher$AddGroup;->access$4000(Lcom/lge/homecube/Launcher$AddGroup;)V

    .line 4391
    return-void
.end method
