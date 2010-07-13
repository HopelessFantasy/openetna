.class Lcom/android/contacts/EditContactActivity$5;
.super Ljava/lang/Object;
.source "EditContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/EditContactActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/EditContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/EditContactActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1616
    iput-object p1, p0, Lcom/android/contacts/EditContactActivity$5;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1617
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity$5;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-static {v0}, Lcom/android/contacts/EditContactActivity;->access$500(Lcom/android/contacts/EditContactActivity;)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 1618
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity$5;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-static {v0}, Lcom/android/contacts/EditContactActivity;->access$500(Lcom/android/contacts/EditContactActivity;)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1619
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity$5;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-static {v0}, Lcom/android/contacts/EditContactActivity;->access$500(Lcom/android/contacts/EditContactActivity;)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1620
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity$5;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-static {v0}, Lcom/android/contacts/EditContactActivity;->access$500(Lcom/android/contacts/EditContactActivity;)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v0

    iput-object v2, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->data2:Ljava/lang/String;

    .line 1621
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity$5;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-static {v0}, Lcom/android/contacts/EditContactActivity;->access$500(Lcom/android/contacts/EditContactActivity;)Lcom/android/contacts/EditContactActivity$EditEntry;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/contacts/EditContactActivity$EditEntry;->isDeleted:Z

    .line 1623
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity$5;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-static {v0, v2}, Lcom/android/contacts/EditContactActivity;->access$502(Lcom/android/contacts/EditContactActivity;Lcom/android/contacts/EditContactActivity$EditEntry;)Lcom/android/contacts/EditContactActivity$EditEntry;

    .line 1624
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity$5;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-static {v0, v2}, Lcom/android/contacts/EditContactActivity;->access$602(Lcom/android/contacts/EditContactActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1625
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity$5;->this$0:Lcom/android/contacts/EditContactActivity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/contacts/EditContactActivity;->removeDialog(I)V

    .line 1626
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity$5;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-virtual {v0, v3}, Lcom/android/contacts/EditContactActivity;->removeDialog(I)V

    .line 1628
    :cond_4f
    iget-object v0, p0, Lcom/android/contacts/EditContactActivity$5;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-static {v0}, Lcom/android/contacts/EditContactActivity;->access$000(Lcom/android/contacts/EditContactActivity;)V

    .line 1629
    return-void
.end method
