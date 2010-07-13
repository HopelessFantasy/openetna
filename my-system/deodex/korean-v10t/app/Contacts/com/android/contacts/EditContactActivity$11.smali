.class Lcom/android/contacts/EditContactActivity$11;
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
    .line 4024
    iput-object p1, p0, Lcom/android/contacts/EditContactActivity$11;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v3, 0x1

    .line 4025
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$11;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-static {v1}, Lcom/android/contacts/EditContactActivity;->access$1200(Lcom/android/contacts/EditContactActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/EditContactActivity$11;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-static {v2}, Lcom/android/contacts/EditContactActivity;->access$1200(Lcom/android/contacts/EditContactActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/EditContactActivity$GroupEntry;

    iget-boolean v1, v1, Lcom/android/contacts/EditContactActivity$GroupEntry;->check:Z

    if-ne v1, v3, :cond_32

    .line 4026
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4027
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$11;->this$0:Lcom/android/contacts/EditContactActivity;

    const-class v2, Lcom/android/contacts/EditGroupActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4028
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$11;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-virtual {v1, v0, v3}, Lcom/android/contacts/EditContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4034
    .end local v0           #intent:Landroid/content/Intent;
    :goto_31
    return-void

    .line 4030
    :cond_32
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$11;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-static {v1}, Lcom/android/contacts/EditContactActivity;->access$1400(Lcom/android/contacts/EditContactActivity;)V

    .line 4031
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$11;->this$0:Lcom/android/contacts/EditContactActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/contacts/EditContactActivity;->access$1302(Lcom/android/contacts/EditContactActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 4032
    iget-object v1, p0, Lcom/android/contacts/EditContactActivity$11;->this$0:Lcom/android/contacts/EditContactActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/contacts/EditContactActivity;->removeDialog(I)V

    goto :goto_31
.end method
