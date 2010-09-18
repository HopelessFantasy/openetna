.class Lcom/android/contacts/EditGroupActivity$3;
.super Ljava/lang/Object;
.source "EditGroupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/EditGroupActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/EditGroupActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/EditGroupActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 670
    iput-object p1, p0, Lcom/android/contacts/EditGroupActivity$3;->this$0:Lcom/android/contacts/EditGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    const-string v6, "onCreateDialog onClick: "

    const-string v5, "EditGroupActivity"

    const-string v4, ":"

    .line 671
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.LOCAL_ASSIGN_MEMBERS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 672
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "EditGroupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateDialog onClick: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/EditGroupActivity$3;->this$0:Lcom/android/contacts/EditGroupActivity;

    invoke-static {v3}, Lcom/android/contacts/EditGroupActivity;->access$200(Lcom/android/contacts/EditGroupActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const-string v2, "EditGroupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateDialog onClick: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/EditGroupActivity$3;->this$0:Lcom/android/contacts/EditGroupActivity;

    invoke-static {v3}, Lcom/android/contacts/EditGroupActivity;->access$100(Lcom/android/contacts/EditGroupActivity;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://contacts/groups/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/EditGroupActivity$3;->this$0:Lcom/android/contacts/EditGroupActivity;

    invoke-static {v3}, Lcom/android/contacts/EditGroupActivity;->access$100(Lcom/android/contacts/EditGroupActivity;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/no_members/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 675
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "com.android.contacts.extra.TITLE_EXTRA"

    iget-object v3, p0, Lcom/android/contacts/EditGroupActivity$3;->this$0:Lcom/android/contacts/EditGroupActivity;

    invoke-static {v3}, Lcom/android/contacts/EditGroupActivity;->access$200(Lcom/android/contacts/EditGroupActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 677
    iget-object v2, p0, Lcom/android/contacts/EditGroupActivity$3;->this$0:Lcom/android/contacts/EditGroupActivity;

    const-class v3, Lcom/android/contacts/SearchActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 678
    iget-object v2, p0, Lcom/android/contacts/EditGroupActivity$3;->this$0:Lcom/android/contacts/EditGroupActivity;

    invoke-virtual {v2, v0}, Lcom/android/contacts/EditGroupActivity;->startActivity(Landroid/content/Intent;)V

    .line 679
    iget-object v2, p0, Lcom/android/contacts/EditGroupActivity$3;->this$0:Lcom/android/contacts/EditGroupActivity;

    invoke-virtual {v2}, Lcom/android/contacts/EditGroupActivity;->finish()V

    .line 680
    return-void
.end method
