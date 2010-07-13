.class final Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecipientsMenuClickListener"
.end annotation


# instance fields
.field private final mRecipient:Lcom/android/mms/ui/RecipientList$Recipient;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/RecipientList$Recipient;)V
    .registers 3
    .parameter
    .parameter "recipient"

    .prologue
    .line 1161
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1162
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->mRecipient:Lcom/android/mms/ui/RecipientList$Recipient;

    .line 1163
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 1166
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_24

    .line 1178
    const/4 v1, 0x0

    :goto_9
    return v1

    .line 1169
    :pswitch_a
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->mRecipient:Lcom/android/mms/ui/RecipientList$Recipient;

    iget-wide v2, v2, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3000(Lcom/android/mms/ui/ComposeMessageActivity;J)V

    move v1, v4

    .line 1170
    goto :goto_9

    .line 1173
    :pswitch_15
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->mRecipient:Lcom/android/mms/ui/RecipientList$Recipient;

    iget-object v1, v1, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1174
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    move v1, v4

    .line 1175
    goto :goto_9

    .line 1166
    :pswitch_data_24
    .packed-switch 0xc
        :pswitch_a
        :pswitch_15
    .end packed-switch
.end method
