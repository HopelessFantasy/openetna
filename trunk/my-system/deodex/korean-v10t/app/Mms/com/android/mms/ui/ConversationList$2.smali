.class Lcom/android/mms/ui/ConversationList$2;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .registers 2
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$2;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 16
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 444
    iget-object v8, p0, Lcom/android/mms/ui/ConversationList$2;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v8}, Lcom/android/mms/ui/ConversationList;->access$000(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 445
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_ad

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_ad

    iget-object v8, p0, Lcom/android/mms/ui/ConversationList$2;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v8}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Z

    move-result v8

    if-nez v8, :cond_ad

    .line 446
    iget-object v8, p0, Lcom/android/mms/ui/ConversationList$2;->this$0:Lcom/android/mms/ui/ConversationList;

    const/4 v9, 0x2

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/mms/ui/MessageUtils;->getRecipientsByIds(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, address:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/util/ContactInfoCache;->getInstance()Lcom/android/mms/util/ContactInfoCache;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/ConversationList$2;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v8, v9, v1}, Lcom/android/mms/util/ContactInfoCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x3b

    const/16 v10, 0x2c

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 455
    .local v4, from:Ljava/lang/CharSequence;
    const-string v8, "801010101018"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ae

    .line 456
    iget-object v8, p0, Lcom/android/mms/ui/ConversationList$2;->this$0:Lcom/android/mms/ui/ConversationList;

    const v9, 0x7f070150

    invoke-virtual {v8, v9}, Lcom/android/mms/ui/ConversationList;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 465
    :goto_4c
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v5, v0

    .line 467
    .local v5, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v8, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-lez v8, :cond_ad

    .line 468
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const v11, 0x7f07000c

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 471
    iget-object v8, p0, Lcom/android/mms/ui/ConversationList$2;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v8, v2}, Lcom/android/mms/ui/ConversationList;->access$200(Lcom/android/mms/ui/ConversationList;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    .line 473
    .local v7, recipient:Ljava/lang/String;
    const-string v8, "801010101018"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_73

    const-string v8, "901010101019"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c7

    :cond_73
    const/4 v8, 0x1

    move v6, v8

    .line 477
    .local v6, isServiceMessage:Z
    :goto_75
    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a4

    if-nez v6, :cond_a4

    const-string v8, "CH"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a4

    .line 481
    invoke-static {}, Lcom/android/mms/util/ContactInfoCache;->getInstance()Lcom/android/mms/util/ContactInfoCache;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/ConversationList$2;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v8, v9, v7}, Lcom/android/mms/util/ContactInfoCache;->getContactInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    move-result-object v3

    .line 484
    .local v3, entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    if-eqz v3, :cond_ca

    iget-wide v8, v3, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->person_id:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_ca

    .line 485
    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    const v11, 0x7f07006d

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 490
    .end local v3           #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    :cond_a4
    :goto_a4
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f07000a

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 493
    .end local v1           #address:Ljava/lang/String;
    .end local v4           #from:Ljava/lang/CharSequence;
    .end local v5           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v6           #isServiceMessage:Z
    .end local v7           #recipient:Ljava/lang/String;
    :cond_ad
    return-void

    .line 457
    .restart local v1       #address:Ljava/lang/String;
    .restart local v4       #from:Ljava/lang/CharSequence;
    :cond_ae
    const-string v8, "901010101019"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c3

    .line 458
    iget-object v8, p0, Lcom/android/mms/ui/ConversationList$2;->this$0:Lcom/android/mms/ui/ConversationList;

    const v9, 0x7f070151

    invoke-virtual {v8, v9}, Lcom/android/mms/ui/ConversationList;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_4c

    .line 460
    :cond_c3
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_4c

    .line 473
    .restart local v5       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .restart local v7       #recipient:Ljava/lang/String;
    :cond_c7
    const/4 v8, 0x0

    move v6, v8

    goto :goto_75

    .line 487
    .restart local v3       #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    .restart local v6       #isServiceMessage:Z
    :cond_ca
    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    const v11, 0x7f07006e

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_a4
.end method
