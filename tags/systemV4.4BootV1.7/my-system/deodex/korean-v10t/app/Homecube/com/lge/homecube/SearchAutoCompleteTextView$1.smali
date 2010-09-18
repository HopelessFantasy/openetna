.class Lcom/lge/homecube/SearchAutoCompleteTextView$1;
.super Landroid/os/Handler;
.source "SearchAutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/SearchAutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/homecube/SearchAutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/lge/homecube/SearchAutoCompleteTextView;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lge/homecube/SearchAutoCompleteTextView$1;->this$0:Lcom/lge/homecube/SearchAutoCompleteTextView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/lge/homecube/SearchAutoCompleteTextView$1;->this$0:Lcom/lge/homecube/SearchAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/lge/homecube/SearchAutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 48
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/homecube/SearchAutoCompleteTextView$1;->this$0:Lcom/lge/homecube/SearchAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/lge/homecube/SearchAutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 50
    :cond_1b
    return-void
.end method
