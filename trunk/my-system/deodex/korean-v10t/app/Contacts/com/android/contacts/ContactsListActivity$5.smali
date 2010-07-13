.class Lcom/android/contacts/ContactsListActivity$5;
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
    .line 2420
    iput-object p1, p0, Lcom/android/contacts/ContactsListActivity$5;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2421
    packed-switch p2, :pswitch_data_12

    .line 2429
    :goto_3
    return-void

    .line 2423
    :pswitch_4
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$5;->this$0:Lcom/android/contacts/ContactsListActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/contacts/ContactsListActivity;->access$500(Lcom/android/contacts/ContactsListActivity;Z)V

    goto :goto_3

    .line 2426
    :pswitch_b
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$5;->this$0:Lcom/android/contacts/ContactsListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/contacts/ContactsListActivity;->access$500(Lcom/android/contacts/ContactsListActivity;Z)V

    goto :goto_3

    .line 2421
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_4
        :pswitch_b
    .end packed-switch
.end method
