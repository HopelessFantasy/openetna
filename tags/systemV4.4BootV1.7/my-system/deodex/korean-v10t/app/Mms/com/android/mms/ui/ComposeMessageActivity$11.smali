.class Lcom/android/mms/ui/ComposeMessageActivity$11;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->initRecipientsEditor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 2117
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$11;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 2123
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$11;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_28

    .line 2125
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$11;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2127
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_28

    .line 2128
    :cond_1f
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$11;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 2131
    .end local v0           #inputManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_28
    return-void
.end method
