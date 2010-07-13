.class Lcom/android/contacts/EditContactActivity$8;
.super Ljava/lang/Object;
.source "EditContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/EditContactActivity;->showAddAttachmentDialog()V
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
    .line 3235
    iput-object p1, p0, Lcom/android/contacts/EditContactActivity$8;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3236
    iget-object v2, p0, Lcom/android/contacts/EditContactActivity$8;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-static {v2}, Lcom/android/contacts/EditContactActivity;->access$800(Lcom/android/contacts/EditContactActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/IconListAdapter$IconListItem;

    .line 3237
    .local v1, item:Lcom/android/contacts/IconListAdapter$IconListItem;
    invoke-virtual {v1}, Lcom/android/contacts/IconListAdapter$IconListItem;->getID()I

    move-result v2

    packed-switch v2, :pswitch_data_2a

    .line 3248
    :goto_13
    return-void

    .line 3239
    :pswitch_14
    iget-object v2, p0, Lcom/android/contacts/EditContactActivity$8;->this$0:Lcom/android/contacts/EditContactActivity;

    invoke-static {v2}, Lcom/android/contacts/EditContactActivity;->access$900(Lcom/android/contacts/EditContactActivity;)V

    goto :goto_13

    .line 3242
    :pswitch_1a
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3243
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/contacts/EditContactActivity$8;->this$0:Lcom/android/contacts/EditContactActivity;

    const/16 v3, 0xbce

    invoke-virtual {v2, v0, v3}, Lcom/android/contacts/EditContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_13

    .line 3237
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_14
        :pswitch_1a
    .end packed-switch
.end method
