.class Lcom/android/contacts/EditContactActivity$7;
.super Ljava/lang/Object;
.source "EditContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/EditContactActivity;->createCustomPicker(Lcom/android/contacts/EditContactActivity$EditEntry;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/EditContactActivity;

.field final synthetic val$addTo:Ljava/util/ArrayList;

.field final synthetic val$entry:Lcom/android/contacts/EditContactActivity$EditEntry;

.field final synthetic val$label:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/contacts/EditContactActivity;Landroid/widget/EditText;Lcom/android/contacts/EditContactActivity$EditEntry;Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1768
    iput-object p1, p0, Lcom/android/contacts/EditContactActivity$7;->this$0:Lcom/android/contacts/EditContactActivity;

    iput-object p2, p0, Lcom/android/contacts/EditContactActivity$7;->val$label:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/contacts/EditContactActivity$7;->val$entry:Lcom/android/contacts/EditContactActivity$EditEntry;

    iput-object p4, p0, Lcom/android/contacts/EditContactActivity$7;->val$addTo:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1769
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$7;->val$label:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1770
    .local v0, data:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$7;->val$entry:Lcom/android/contacts/EditContactActivity$EditEntry;

    iget-object v2, p0, Lcom/android/contacts/EditContactActivity$7;->this$0:Lcom/android/contacts/EditContactActivity;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/contacts/EditContactActivity$EditEntry;->setLabel(Landroid/content/Context;ILjava/lang/String;)V

    .line 1771
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$7;->this$0:Lcom/android/contacts/EditContactActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/contacts/EditContactActivity;->access$702(Lcom/android/contacts/EditContactActivity;Z)Z

    .line 1773
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$7;->val$addTo:Ljava/util/ArrayList;

    if-eqz v1, :cond_32

    .line 1774
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$7;->val$addTo:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/contacts/EditContactActivity$7;->val$entry:Lcom/android/contacts/EditContactActivity$EditEntry;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1775
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$7;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-static {v1}, Lcom/android/contacts/EditContactActivity;->access$000(Lcom/android/contacts/EditContactActivity;)V

    .line 1776
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$7;->val$entry:Lcom/android/contacts/EditContactActivity$EditEntry;

    iget-object v1, v1, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    .line 1780
    :goto_31
    return-void

    .line 1778
    :cond_32
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$7;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-static {v1}, Lcom/android/contacts/EditContactActivity;->access$000(Lcom/android/contacts/EditContactActivity;)V

    goto :goto_31
.end method
