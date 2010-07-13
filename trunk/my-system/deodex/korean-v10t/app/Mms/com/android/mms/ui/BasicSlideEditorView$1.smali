.class Lcom/android/mms/ui/BasicSlideEditorView$1;
.super Ljava/lang/Object;
.source "BasicSlideEditorView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BasicSlideEditorView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BasicSlideEditorView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BasicSlideEditorView;)V
    .registers 2
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/mms/ui/BasicSlideEditorView$1;->this$0:Lcom/android/mms/ui/BasicSlideEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 87
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 76
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView$1;->this$0:Lcom/android/mms/ui/BasicSlideEditorView;

    invoke-static {v0}, Lcom/android/mms/ui/BasicSlideEditorView;->access$000(Lcom/android/mms/ui/BasicSlideEditorView;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView$1;->this$0:Lcom/android/mms/ui/BasicSlideEditorView;

    invoke-static {v0}, Lcom/android/mms/ui/BasicSlideEditorView;->access$100(Lcom/android/mms/ui/BasicSlideEditorView;)Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView$1;->this$0:Lcom/android/mms/ui/BasicSlideEditorView;

    invoke-static {v0}, Lcom/android/mms/ui/BasicSlideEditorView;->access$100(Lcom/android/mms/ui/BasicSlideEditorView;)Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;->onTextChanged(Ljava/lang/String;)V

    .line 83
    :cond_1d
    return-void
.end method
