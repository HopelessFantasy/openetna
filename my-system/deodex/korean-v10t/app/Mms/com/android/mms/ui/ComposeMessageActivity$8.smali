.class Lcom/android/mms/ui/ComposeMessageActivity$8;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1136
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 12
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v7, 0x0

    .line 1138
    if-eqz p3, :cond_36

    .line 1139
    check-cast p3, Lcom/android/mms/ui/RecipientsEditor$RecipientContextMenuInfo;

    .end local p3
    iget-object v3, p3, Lcom/android/mms/ui/RecipientsEditor$RecipientContextMenuInfo;->recipient:Lcom/android/mms/ui/RecipientList$Recipient;

    .line 1140
    .local v3, r:Lcom/android/mms/ui/RecipientList$Recipient;
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v0, v5, v3}, Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/RecipientList$Recipient;)V

    .line 1142
    .local v0, l:Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;
    iget-object v5, v3, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_37

    iget-object v5, v3, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    move-object v4, v5

    .line 1143
    .local v4, title:Ljava/lang/String;
    :goto_19
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1145
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v5, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2900(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/RecipientList$Recipient;)J

    move-result-wide v1

    .line 1146
    .local v1, personId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_3b

    .line 1147
    iput-wide v1, v3, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    .line 1148
    const/16 v5, 0xc

    const v6, 0x7f07006d

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1155
    .end local v0           #l:Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;
    .end local v1           #personId:J
    .end local v3           #r:Lcom/android/mms/ui/RecipientList$Recipient;
    .end local v4           #title:Ljava/lang/String;
    :cond_36
    :goto_36
    return-void

    .line 1142
    .restart local v0       #l:Lcom/android/mms/ui/ComposeMessageActivity$RecipientsMenuClickListener;
    .restart local v3       #r:Lcom/android/mms/ui/RecipientList$Recipient;
    :cond_37
    iget-object v5, v3, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    move-object v4, v5

    goto :goto_19

    .line 1151
    .restart local v1       #personId:J
    .restart local v4       #title:Ljava/lang/String;
    :cond_3b
    const/16 v5, 0xd

    const v6, 0x7f07006e

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_36
.end method
