.class Lcom/android/mms/ui/ConversationListAdapter$2;
.super Ljava/lang/Object;
.source "ConversationListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListAdapter;->startAsyncDisplayFromLoad(Landroid/content/Context;Lcom/android/mms/ui/ConversationHeader;Lcom/android/mms/ui/ConversationHeaderView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListAdapter;

.field final synthetic val$ch:Lcom/android/mms/ui/ConversationHeader;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$spaceSeparatedRcptIds:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListAdapter;Landroid/content/Context;Ljava/lang/String;Lcom/android/mms/ui/ConversationHeader;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListAdapter$2;->this$0:Lcom/android/mms/ui/ConversationListAdapter;

    iput-object p2, p0, Lcom/android/mms/ui/ConversationListAdapter$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/mms/ui/ConversationListAdapter$2;->val$spaceSeparatedRcptIds:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/mms/ui/ConversationListAdapter$2;->val$ch:Lcom/android/mms/ui/ConversationHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 329
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListAdapter$2;->val$context:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListAdapter$2;->val$spaceSeparatedRcptIds:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/android/mms/ui/MessageUtils;->getRecipientsByIds(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, addresses:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListAdapter$2;->this$0:Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListAdapter$2;->val$spaceSeparatedRcptIds:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/mms/ui/ConversationListAdapter;->access$100(Lcom/android/mms/ui/ConversationListAdapter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 336
    .local v6, tempFromText:Ljava/lang/String;
    const-string v7, "801010101018"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_87

    .line 337
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListAdapter$2;->this$0:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-static {v7}, Lcom/android/mms/ui/ConversationListAdapter;->access$200(Lcom/android/mms/ui/ConversationListAdapter;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f070150

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 345
    .local v4, fromText:Ljava/lang/String;
    :goto_26
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_34

    .line 346
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListAdapter$2;->this$0:Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListAdapter$2;->val$spaceSeparatedRcptIds:Ljava/lang/String;

    invoke-static {v7, v8, v1}, Lcom/android/mms/ui/ConversationListAdapter;->access$400(Lcom/android/mms/ui/ConversationListAdapter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 349
    :cond_34
    const/4 v5, 0x0

    .line 351
    .local v5, presenceIconResId:I
    if-eqz v1, :cond_81

    const/16 v7, 0x3b

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_81

    .line 353
    const/4 v3, 0x0

    .line 354
    .local v3, entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    invoke-static {}, Lcom/android/mms/util/ContactInfoCache;->getInstance()Lcom/android/mms/util/ContactInfoCache;

    move-result-object v2

    .line 355
    .local v2, cache:Lcom/android/mms/util/ContactInfoCache;
    move-object v0, v1

    .line 357
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9f

    .line 358
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListAdapter$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v7, v0, v9}, Lcom/android/mms/util/ContactInfoCache;->getContactInfoForEmailAddress(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    move-result-object v3

    .line 365
    :goto_51
    if-eqz v3, :cond_55

    .line 366
    iget v5, v3, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->presenceResId:I

    .line 369
    :cond_55
    const-string v7, "ConversationListAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ConvListAdapter.startAsyncDisplayFromLoad: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", presence="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", cacheEntry="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #cache:Lcom/android/mms/util/ContactInfoCache;
    .end local v3           #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    :cond_81
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListAdapter$2;->val$ch:Lcom/android/mms/ui/ConversationHeader;

    invoke-virtual {v7, v4, v5}, Lcom/android/mms/ui/ConversationHeader;->setFromAndPresence(Ljava/lang/String;I)V

    .line 376
    return-void

    .line 338
    .end local v4           #fromText:Ljava/lang/String;
    .end local v5           #presenceIconResId:I
    :cond_87
    const-string v7, "901010101019"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 339
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListAdapter$2;->this$0:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-static {v7}, Lcom/android/mms/ui/ConversationListAdapter;->access$300(Lcom/android/mms/ui/ConversationListAdapter;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f070151

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #fromText:Ljava/lang/String;
    goto :goto_26

    .line 341
    .end local v4           #fromText:Ljava/lang/String;
    :cond_9d
    move-object v4, v6

    .restart local v4       #fromText:Ljava/lang/String;
    goto :goto_26

    .line 361
    .restart local v0       #address:Ljava/lang/String;
    .restart local v2       #cache:Lcom/android/mms/util/ContactInfoCache;
    .restart local v3       #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    .restart local v5       #presenceIconResId:I
    :cond_9f
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListAdapter$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v7, v0, v9}, Lcom/android/mms/util/ContactInfoCache;->getContactInfoForPhoneNumber(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    move-result-object v3

    goto :goto_51
.end method
