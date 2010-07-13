.class Lcom/bnsoft/simchecker/SimChecker$1;
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
    .line 103
    iput-object p1, p0, Lcom/bnsoft/simchecker/SimChecker$1;->this$0:Lcom/bnsoft/simchecker/SimChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/bnsoft/simchecker/SimChecker$1;->this$0:Lcom/bnsoft/simchecker/SimChecker;

    invoke-static {v0}, Lcom/bnsoft/simchecker/SimCheckListener;->removeSimchangedNotification(Landroid/content/Context;)V

    .line 105
    iget-object v0, p0, Lcom/bnsoft/simchecker/SimChecker$1;->this$0:Lcom/bnsoft/simchecker/SimChecker;

    invoke-virtual {v0}, Lcom/bnsoft/simchecker/SimChecker;->finish()V

    .line 106
    return-void
.end method
