.class Lcom/bnsoft/simchecker/SimChecker$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SimChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bnsoft/simchecker/SimChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field public isFinished:Z

.field final synthetic this$0:Lcom/bnsoft/simchecker/SimChecker;


# direct methods
.method public constructor <init>(Lcom/bnsoft/simchecker/SimChecker;Landroid/content/ContentResolver;)V
    .registers 4
    .parameter
    .parameter "cr"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/bnsoft/simchecker/SimChecker$QueryHandler;->this$0:Lcom/bnsoft/simchecker/SimChecker;

    .line 126
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bnsoft/simchecker/SimChecker$QueryHandler;->isFinished:Z

    .line 127
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .registers 5
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/bnsoft/simchecker/SimChecker$QueryHandler;->this$0:Lcom/bnsoft/simchecker/SimChecker;

    invoke-static {v0}, Lcom/bnsoft/simchecker/SimChecker;->access$300(Lcom/bnsoft/simchecker/SimChecker;)V

    .line 163
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .registers 5
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/bnsoft/simchecker/SimChecker$QueryHandler;->this$0:Lcom/bnsoft/simchecker/SimChecker;

    invoke-static {v0}, Lcom/bnsoft/simchecker/SimChecker;->access$300(Lcom/bnsoft/simchecker/SimChecker;)V

    .line 151
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 6
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/bnsoft/simchecker/SimChecker$QueryHandler;->this$0:Lcom/bnsoft/simchecker/SimChecker;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/bnsoft/simchecker/SimChecker;->removeDialog(I)V

    .line 133
    if-eqz p3, :cond_1b

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1b

    .line 136
    invoke-static {}, Lcom/bnsoft/simchecker/SimChecker;->access$000()Lcom/bnsoft/simchecker/SimImportThread;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bnsoft/simchecker/SimImportThread;->setCursor(Landroid/database/Cursor;)V

    .line 137
    iget-object v0, p0, Lcom/bnsoft/simchecker/SimChecker$QueryHandler;->this$0:Lcom/bnsoft/simchecker/SimChecker;

    invoke-static {v0}, Lcom/bnsoft/simchecker/SimChecker;->access$200(Lcom/bnsoft/simchecker/SimChecker;)V

    .line 144
    :goto_1a
    return-void

    .line 142
    :cond_1b
    iget-object v0, p0, Lcom/bnsoft/simchecker/SimChecker$QueryHandler;->this$0:Lcom/bnsoft/simchecker/SimChecker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bnsoft/simchecker/SimChecker;->FinishedImport(I)V

    goto :goto_1a
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .registers 5
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/bnsoft/simchecker/SimChecker$QueryHandler;->this$0:Lcom/bnsoft/simchecker/SimChecker;

    invoke-static {v0}, Lcom/bnsoft/simchecker/SimChecker;->access$300(Lcom/bnsoft/simchecker/SimChecker;)V

    .line 157
    return-void
.end method
