.class Lcom/bnsoft/simchecker/SimChecker$3;
.super Ljava/lang/Object;
.source "SimChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bnsoft/simchecker/SimChecker;->FinishedImport(I)V
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
    .line 198
    iput-object p1, p0, Lcom/bnsoft/simchecker/SimChecker$3;->this$0:Lcom/bnsoft/simchecker/SimChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 200
    iget-object v0, p0, Lcom/bnsoft/simchecker/SimChecker$3;->this$0:Lcom/bnsoft/simchecker/SimChecker;

    const v1, 0x7f040009

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 201
    iget-object v0, p0, Lcom/bnsoft/simchecker/SimChecker$3;->this$0:Lcom/bnsoft/simchecker/SimChecker;

    invoke-virtual {v0}, Lcom/bnsoft/simchecker/SimChecker;->finish()V

    .line 202
    return-void
.end method
