.class Lcom/lge/android/memo/DialogTextEditor$3;
.super Ljava/lang/Object;
.source "DialogTextEditor.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/android/memo/DialogTextEditor;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/android/memo/DialogTextEditor;


# direct methods
.method constructor <init>(Lcom/lge/android/memo/DialogTextEditor;)V
    .registers 2
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/lge/android/memo/DialogTextEditor$3;->this$0:Lcom/lge/android/memo/DialogTextEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 395
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 375
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 11
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    const/4 v4, 0x1

    const-string v5, "\n"

    .line 377
    iget-object v2, p0, Lcom/lge/android/memo/DialogTextEditor$3;->this$0:Lcom/lge/android/memo/DialogTextEditor;

    iget-object v2, v2, Lcom/lge/android/memo/DialogTextEditor;->mText:Lcom/lge/android/memo/NoteEditor;

    invoke-virtual {v2}, Lcom/lge/android/memo/NoteEditor;->getLineCount()I

    move-result v2

    invoke-static {v2}, Lcom/lge/android/memo/DialogTextEditor;->access$202(I)I

    .line 379
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, operatorCode:Ljava/lang/String;
    const-string v2, "Cellcom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 382
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_41

    .line 383
    iget-object v2, p0, Lcom/lge/android/memo/DialogTextEditor$3;->this$0:Lcom/lge/android/memo/DialogTextEditor;

    iget-object v2, v2, Lcom/lge/android/memo/DialogTextEditor;->mText:Lcom/lge/android/memo/NoteEditor;

    const-string v3, "\n"

    invoke-virtual {v2, v5}, Lcom/lge/android/memo/NoteEditor;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v2, p0, Lcom/lge/android/memo/DialogTextEditor$3;->this$0:Lcom/lge/android/memo/DialogTextEditor;

    iget-object v2, v2, Lcom/lge/android/memo/DialogTextEditor;->mText:Lcom/lge/android/memo/NoteEditor;

    invoke-virtual {v2, v4}, Lcom/lge/android/memo/NoteEditor;->setSelection(I)V

    .line 393
    :cond_30
    :goto_30
    iget-object v2, p0, Lcom/lge/android/memo/DialogTextEditor$3;->this$0:Lcom/lge/android/memo/DialogTextEditor;

    iget-object v3, p0, Lcom/lge/android/memo/DialogTextEditor$3;->this$0:Lcom/lge/android/memo/DialogTextEditor;

    iget-object v3, v3, Lcom/lge/android/memo/DialogTextEditor;->mText:Lcom/lge/android/memo/NoteEditor;

    invoke-virtual {v3}, Lcom/lge/android/memo/NoteEditor;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lge/android/memo/DialogTextEditor;->mOriginalContent:Ljava/lang/String;

    .line 394
    return-void

    .line 386
    :cond_41
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_30

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, setText:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/android/memo/DialogTextEditor$3;->this$0:Lcom/lge/android/memo/DialogTextEditor;

    iget-object v2, v2, Lcom/lge/android/memo/DialogTextEditor;->mText:Lcom/lge/android/memo/NoteEditor;

    invoke-virtual {v2, v1}, Lcom/lge/android/memo/NoteEditor;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v2, p0, Lcom/lge/android/memo/DialogTextEditor$3;->this$0:Lcom/lge/android/memo/DialogTextEditor;

    iget-object v2, v2, Lcom/lge/android/memo/DialogTextEditor;->mText:Lcom/lge/android/memo/NoteEditor;

    invoke-virtual {v2, v4}, Lcom/lge/android/memo/NoteEditor;->setSelection(I)V

    goto :goto_30
.end method
