.class Lcom/android/contacts/EditGroupActivity$5;
.super Ljava/lang/Object;
.source "EditGroupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/EditGroupActivity;->showAddAttachmentDialog()V
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
    .line 1069
    iput-object p1, p0, Lcom/android/contacts/EditGroupActivity$5;->this$0:Lcom/android/contacts/EditGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1070
    iget-object v2, p0, Lcom/android/contacts/EditGroupActivity$5;->this$0:Lcom/android/contacts/EditGroupActivity;

    invoke-static {v2}, Lcom/android/contacts/EditGroupActivity;->access$300(Lcom/android/contacts/EditGroupActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/IconListAdapter$IconListItem;

    .line 1071
    .local v1, item:Lcom/android/contacts/IconListAdapter$IconListItem;
    invoke-virtual {v1}, Lcom/android/contacts/IconListAdapter$IconListItem;->getID()I

    move-result v2

    packed-switch v2, :pswitch_data_28

    .line 1082
    :goto_13
    return-void

    .line 1073
    :pswitch_14
    iget-object v2, p0, Lcom/android/contacts/EditGroupActivity$5;->this$0:Lcom/android/contacts/EditGroupActivity;

    invoke-static {v2}, Lcom/android/contacts/EditGroupActivity;->access$400(Lcom/android/contacts/EditGroupActivity;)V

    goto :goto_13

    .line 1076
    :pswitch_1a
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1077
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/contacts/EditGroupActivity$5;->this$0:Lcom/android/contacts/EditGroupActivity;

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Lcom/android/contacts/EditGroupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_13

    .line 1071
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_14
        :pswitch_1a
    .end packed-switch
.end method
