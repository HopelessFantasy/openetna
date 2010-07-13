.class Lcom/android/contacts/ContactsListActivity$4;
.super Ljava/lang/Object;
.source "ContactsListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ContactsListActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ContactsListActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/ContactsListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 2395
    iput-object p1, p0, Lcom/android/contacts/ContactsListActivity$4;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2396
    packed-switch p2, :pswitch_data_4c

    .line 2411
    :goto_3
    return-void

    .line 2398
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2399
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$4;->this$0:Lcom/android/contacts/ContactsListActivity;

    const-class v2, Lcom/android/contacts/EditContactActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2400
    const-string v1, "com.android.contacts.extra.GROUP_ID"

    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity$4;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-static {v2}, Lcom/android/contacts/ContactsListActivity;->access$100(Lcom/android/contacts/ContactsListActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2401
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$4;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 2404
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_25
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$4;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-static {v1}, Lcom/android/contacts/ContactsListActivity;->access$200(Lcom/android/contacts/ContactsListActivity;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_38

    .line 2405
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$4;->this$0:Lcom/android/contacts/ContactsListActivity;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/contacts/ContactsListActivity;->access$300(Lcom/android/contacts/ContactsListActivity;ZJLjava/lang/String;)Z

    goto :goto_3

    .line 2407
    :cond_38
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$4;->this$0:Lcom/android/contacts/ContactsListActivity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity$4;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-static {v3}, Lcom/android/contacts/ContactsListActivity;->access$100(Lcom/android/contacts/ContactsListActivity;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/contacts/ContactsListActivity$4;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-static {v5}, Lcom/android/contacts/ContactsListActivity;->access$400(Lcom/android/contacts/ContactsListActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/contacts/ContactsListActivity;->access$300(Lcom/android/contacts/ContactsListActivity;ZJLjava/lang/String;)Z

    goto :goto_3

    .line 2396
    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_4
        :pswitch_25
    .end packed-switch
.end method
