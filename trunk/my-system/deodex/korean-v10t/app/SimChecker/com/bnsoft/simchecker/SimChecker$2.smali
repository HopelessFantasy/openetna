.class Lcom/bnsoft/simchecker/SimChecker$2;
.super Ljava/lang/Object;
.source "SimChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bnsoft/simchecker/SimChecker;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bnsoft/simchecker/SimChecker;


# direct methods
.method constructor <init>(Lcom/bnsoft/simchecker/SimChecker;)V
    .registers 2
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/bnsoft/simchecker/SimChecker$2;->this$0:Lcom/bnsoft/simchecker/SimChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/bnsoft/simchecker/SimChecker$2;->this$0:Lcom/bnsoft/simchecker/SimChecker;

    invoke-static {v0}, Lcom/bnsoft/simchecker/SimCheckListener;->removeSimchangedNotification(Landroid/content/Context;)V

    .line 95
    new-instance v0, Lcom/bnsoft/simchecker/SimImportThread;

    iget-object v1, p0, Lcom/bnsoft/simchecker/SimChecker$2;->this$0:Lcom/bnsoft/simchecker/SimChecker;

    iget-object v2, p0, Lcom/bnsoft/simchecker/SimChecker$2;->this$0:Lcom/bnsoft/simchecker/SimChecker;

    invoke-direct {v0, v1, v2}, Lcom/bnsoft/simchecker/SimImportThread;-><init>(Landroid/app/Activity;Lcom/bnsoft/simchecker/SimImportThread$FinishedImportCallBack;)V

    invoke-static {v0}, Lcom/bnsoft/simchecker/SimChecker;->access$002(Lcom/bnsoft/simchecker/SimImportThread;)Lcom/bnsoft/simchecker/SimImportThread;

    .line 96
    iget-object v0, p0, Lcom/bnsoft/simchecker/SimChecker$2;->this$0:Lcom/bnsoft/simchecker/SimChecker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bnsoft/simchecker/SimChecker;->access$102(Lcom/bnsoft/simchecker/SimChecker;Z)Z

    .line 97
    iget-object v0, p0, Lcom/bnsoft/simchecker/SimChecker$2;->this$0:Lcom/bnsoft/simchecker/SimChecker;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/bnsoft/simchecker/SimChecker;->showDialog(I)V

    .line 98
    return-void
.end method
