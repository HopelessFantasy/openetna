.class Lcom/android/contacts/EditContactActivity$10;
.super Ljava/lang/Object;
.source "EditContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/EditContactActivity;->createGroupSelectionDialog()V
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
    .line 4038
    iput-object p1, p0, Lcom/android/contacts/EditContactActivity$10;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 4039
    iget-object v2, p0, Lcom/android/contacts/EditContactActivity$10;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-static {v2}, Lcom/android/contacts/EditContactActivity;->access$1200(Lcom/android/contacts/EditContactActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/EditContactActivity$GroupEntry;

    .line 4040
    .local v0, entry:Lcom/android/contacts/EditContactActivity$GroupEntry;
    iget-boolean v2, v0, Lcom/android/contacts/EditContactActivity$GroupEntry;->confirm:Z

    iput-boolean v2, v0, Lcom/android/contacts/EditContactActivity$GroupEntry;->check:Z

    goto :goto_a

    .line 4042
    .end local v0           #entry:Lcom/android/contacts/EditContactActivity$GroupEntry;
    :cond_1b
    iget-object v2, p0, Lcom/android/contacts/EditContactActivity$10;->this$0:Lcom/android/contacts/EditContactActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/contacts/EditContactActivity;->access$1302(Lcom/android/contacts/EditContactActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 4043
    iget-object v2, p0, Lcom/android/contacts/EditContactActivity$10;->this$0:Lcom/android/contacts/EditContactActivity;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/contacts/EditContactActivity;->removeDialog(I)V

    .line 4044
    return-void
.end method
