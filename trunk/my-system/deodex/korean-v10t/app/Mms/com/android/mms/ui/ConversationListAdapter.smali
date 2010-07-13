.class public Lcom/android/mms/ui/ConversationListAdapter;
.super Landroid/widget/CursorAdapter;
.source "ConversationListAdapter.java"


# static fields
.field static final COLUMN_DATE:I = 0x3

.field static final COLUMN_DRAFT_THREAD_ID:I = 0x1

.field static final COLUMN_ERROR:I = 0x7

.field static final COLUMN_HAS_ATTACHMENT:I = 0x8

.field static final COLUMN_ID:I = 0x0

.field static final COLUMN_MESSAGE_COUNT:I = 0x1

.field static final COLUMN_MESSAGE_ID:I = 0x1

.field static final COLUMN_MESSAGE_TYPE:I = 0x0

.field static final COLUMN_MMS_DATE:I = 0xa

.field static final COLUMN_MMS_READ:I = 0xb

.field static final COLUMN_MMS_SUBJECT:I = 0x8

.field static final COLUMN_MMS_SUBJECT_CHARSET:I = 0x9

.field static final COLUMN_READ:I = 0x4

.field static final COLUMN_RECIPIENTS_IDS:I = 0x2

.field static final COLUMN_SMS_ADDRESS:I = 0x3

.field static final COLUMN_SMS_BODY:I = 0x4

.field static final COLUMN_SMS_DATE:I = 0x5

.field static final COLUMN_SMS_READ:I = 0x6

.field static final COLUMN_SMS_TYPE:I = 0x7

.field static final COLUMN_SNIPPET:I = 0x5

.field static final COLUMN_SNIPPET_CHARSET:I = 0x6

.field static final COLUMN_THREAD_ID:I = 0x2

.field static final DRAFT_PROJECTION:[Ljava/lang/String; = null

.field static final PROJECTION:[Ljava/lang/String; = null

.field static final SEARCH_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ConversationListAdapter"


# instance fields
.field private final mAsyncLoader:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final mCachingNameStore:Lcom/android/mms/ui/ConversationList$CachingNameStore;

.field private final mFactory:Landroid/view/LayoutInflater;

.field private final mPopStackRunnable:Ljava/lang/Runnable;

.field private final mSimpleMode:Z

.field private final mThingsToLoad:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mThreadDisplayFrom:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "date"

    const-string v6, "_id"

    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "message_count"

    aput-object v1, v0, v4

    const-string v1, "recipient_ids"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "date"

    aput-object v7, v0, v1

    const/4 v1, 0x4

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "snippet_cs"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "error"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "has_attachment"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/ConversationListAdapter;->PROJECTION:[Ljava/lang/String;

    .line 79
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/ui/ConversationListAdapter;->DRAFT_PROJECTION:[Ljava/lang/String;

    .line 86
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v6, v0, v4

    const-string v1, "thread_id"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v7, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "date"

    aput-object v7, v0, v1

    const/16 v1, 0xb

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "fn"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/ConversationListAdapter;->SEARCH_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ZLcom/android/mms/ui/ConversationList$CachingNameStore;)V
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "simple"
    .parameter "nameStore"

    .prologue
    const/4 v1, 0x1

    .line 155
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 134
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mThingsToLoad:Ljava/util/Stack;

    .line 137
    new-instance v0, Lcom/android/mms/ui/ConversationListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListAdapter$1;-><init>(Lcom/android/mms/ui/ConversationListAdapter;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mPopStackRunnable:Ljava/lang/Runnable;

    .line 156
    iput-boolean p3, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSimpleMode:Z

    .line 157
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFactory:Landroid/view/LayoutInflater;

    .line 158
    iput-object p4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCachingNameStore:Lcom/android/mms/ui/ConversationList$CachingNameStore;

    .line 160
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mThreadDisplayFrom:Ljava/util/Map;

    .line 162
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mAsyncLoader:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationListAdapter;)Ljava/util/Stack;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mThingsToLoad:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ConversationListAdapter;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListAdapter;->getFromTextFromMessageThread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ConversationListAdapter;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ConversationListAdapter;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ConversationListAdapter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationListAdapter;->getFromTextFromCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFromTextFromCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "spaceSeparatedRcptIds"
    .parameter "address"

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCachingNameStore:Lcom/android/mms/ui/ConversationList$CachingNameStore;

    invoke-interface {v1, p2}, Lcom/android/mms/ui/ConversationList$CachingNameStore;->getContactNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 174
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f070011

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    :cond_15
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mThreadDisplayFrom:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-object v0
.end method

.method private getFromTextFromMessageThread(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "spaceSeparatedRcptIds"

    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mThreadDisplayFrom:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 190
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_c

    move-object v1, v0

    .line 194
    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private startAsyncDisplayFromLoad(Landroid/content/Context;Lcom/android/mms/ui/ConversationHeader;Lcom/android/mms/ui/ConversationHeaderView;Ljava/lang/String;)V
    .registers 8
    .parameter "context"
    .parameter "ch"
    .parameter "headerView"
    .parameter "spaceSeparatedRcptIds"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mThingsToLoad:Ljava/util/Stack;

    monitor-enter v0

    .line 327
    :try_start_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mThingsToLoad:Ljava/util/Stack;

    new-instance v2, Lcom/android/mms/ui/ConversationListAdapter$2;

    invoke-direct {v2, p0, p1, p4, p2}, Lcom/android/mms/ui/ConversationListAdapter$2;-><init>(Lcom/android/mms/ui/ConversationListAdapter;Landroid/content/Context;Ljava/lang/String;Lcom/android/mms/ui/ConversationHeader;)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_16

    .line 379
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mAsyncLoader:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mPopStackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 380
    return-void

    .line 378
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 35
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 199
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/mms/ui/ConversationHeaderView;

    move/from16 v27, v0

    if-eqz v27, :cond_293

    .line 200
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/mms/ui/ConversationHeaderView;

    move-object/from16 v22, v0

    .line 204
    .local v22, headerView:Lcom/android/mms/ui/ConversationHeaderView;
    const/4 v14, 0x0

    .line 205
    .local v14, messageCount:I
    const/16 v25, 0x0

    .line 206
    .local v25, spaceSeparatedRcptIds:Ljava/lang/String;
    const/16 v24, 0x0

    .line 207
    .local v24, presenceIconResId:I
    const/16 v18, 0x0

    .line 208
    .local v18, cacheEntryInvalid:Z
    const/4 v15, 0x0

    .line 210
    .local v15, hasAttachment:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/ConversationListAdapter;->mSimpleMode:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1bb

    .line 211
    const/16 v27, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 212
    .local v6, threadId:J
    const/16 v27, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 214
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->getFromTextFromMessageThread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 215
    .local v26, tempFrom:Ljava/lang/String;
    const-string v27, "801010101018"

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_17a

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x7f070150

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 224
    .local v8, from:Ljava/lang/String;
    :goto_53
    const/16 v27, 0x5

    const/16 v28, 0x6

    move-object/from16 v0, p3

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v9

    .line 226
    .local v9, subject:Ljava/lang/String;
    const/16 v27, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 227
    .local v19, date:J
    const/16 v27, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    if-eqz v27, :cond_199

    const/16 v27, 0x1

    move/from16 v11, v27

    .line 228
    .local v11, read:Z
    :goto_7b
    const/16 v27, 0x7

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    if-eqz v27, :cond_19f

    const/16 v27, 0x1

    move/from16 v12, v27

    .line 229
    .local v12, error:Z
    :goto_8b
    const/16 v27, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 230
    const/16 v27, 0x8

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    if-eqz v27, :cond_1a5

    const/16 v27, 0x1

    move/from16 v15, v27

    .line 232
    :goto_a5
    const/16 v18, 0x1

    .line 237
    const/16 v27, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getRecipientsByIds(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v16

    .line 239
    .local v16, address:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_119

    .line 240
    const/16 v21, 0x0

    .line 241
    .local v21, entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    invoke-static {}, Lcom/android/mms/util/ContactInfoCache;->getInstance()Lcom/android/mms/util/ContactInfoCache;

    move-result-object v17

    .line 243
    .local v17, cache:Lcom/android/mms/util/ContactInfoCache;
    invoke-static/range {v16 .. v16}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1ab

    .line 244
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/util/ContactInfoCache;->getContactInfoForEmailAddress(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    move-result-object v21

    .line 251
    :goto_d3
    if-eqz v21, :cond_119

    .line 252
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->presenceResId:I

    move/from16 v24, v0

    .line 253
    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->isStale()Z

    move-result v18

    .line 254
    const-string v27, "ConversationListAdapter"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "ConvListAdapter.bindView: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", presence="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", cache invalid="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .end local v16           #address:Ljava/lang/String;
    .end local v17           #cache:Lcom/android/mms/util/ContactInfoCache;
    .end local v21           #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    .end local v26           #tempFrom:Ljava/lang/String;
    :cond_119
    :goto_119
    move-object/from16 v0, p2

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    .line 296
    .local v10, timestamp:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_134

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x7f070012

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 300
    :cond_134
    const-string v27, "ConversationListAdapter"

    const-string v28, "pre-create ConversationHeader"

    invoke-static/range {v27 .. v28}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/DraftCache;->hasDraft(J)Z

    move-result v13

    .line 303
    .local v13, hasDraft:Z
    new-instance v5, Lcom/android/mms/ui/ConversationHeader;

    invoke-direct/range {v5 .. v15}, Lcom/android/mms/ui/ConversationHeader;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZIZ)V

    .line 308
    .local v5, ch:Lcom/android/mms/ui/ConversationHeader;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v27

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move-object v2, v5

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/ConversationHeaderView;->bind(Landroid/content/Context;Lcom/android/mms/ui/ConversationHeader;I)V

    .line 309
    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationHeaderView;->setPresenceIcon(I)V

    .line 313
    if-nez v18, :cond_166

    if-nez v8, :cond_172

    if-eqz v25, :cond_172

    .line 314
    :cond_166
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v5

    move-object/from16 v3, v22

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/ConversationListAdapter;->startAsyncDisplayFromLoad(Landroid/content/Context;Lcom/android/mms/ui/ConversationHeader;Lcom/android/mms/ui/ConversationHeaderView;Ljava/lang/String;)V

    .line 316
    :cond_172
    const-string v27, "ConversationListAdapter"

    const-string v28, "post-bind ConversationHeader"

    invoke-static/range {v27 .. v28}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .end local v5           #ch:Lcom/android/mms/ui/ConversationHeader;
    .end local v6           #threadId:J
    .end local v8           #from:Ljava/lang/String;
    .end local v9           #subject:Ljava/lang/String;
    .end local v10           #timestamp:Ljava/lang/String;
    .end local v11           #read:Z
    .end local v12           #error:Z
    .end local v13           #hasDraft:Z
    .end local v14           #messageCount:I
    .end local v15           #hasAttachment:Z
    .end local v18           #cacheEntryInvalid:Z
    .end local v19           #date:J
    .end local v22           #headerView:Lcom/android/mms/ui/ConversationHeaderView;
    .end local v24           #presenceIconResId:I
    .end local v25           #spaceSeparatedRcptIds:Ljava/lang/String;
    :goto_179
    return-void

    .line 217
    .restart local v6       #threadId:J
    .restart local v14       #messageCount:I
    .restart local v15       #hasAttachment:Z
    .restart local v18       #cacheEntryInvalid:Z
    .restart local v22       #headerView:Lcom/android/mms/ui/ConversationHeaderView;
    .restart local v24       #presenceIconResId:I
    .restart local v25       #spaceSeparatedRcptIds:Ljava/lang/String;
    .restart local v26       #tempFrom:Ljava/lang/String;
    :cond_17a
    const-string v27, "901010101019"

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_195

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x7f070151

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #from:Ljava/lang/String;
    goto/16 :goto_53

    .line 220
    .end local v8           #from:Ljava/lang/String;
    :cond_195
    move-object/from16 v8, v26

    .restart local v8       #from:Ljava/lang/String;
    goto/16 :goto_53

    .line 227
    .restart local v9       #subject:Ljava/lang/String;
    .restart local v19       #date:J
    :cond_199
    const/16 v27, 0x0

    move/from16 v11, v27

    goto/16 :goto_7b

    .line 228
    .restart local v11       #read:Z
    :cond_19f
    const/16 v27, 0x0

    move/from16 v12, v27

    goto/16 :goto_8b

    .line 230
    .restart local v12       #error:Z
    :cond_1a5
    const/16 v27, 0x0

    move/from16 v15, v27

    goto/16 :goto_a5

    .line 247
    .restart local v16       #address:Ljava/lang/String;
    .restart local v17       #cache:Lcom/android/mms/util/ContactInfoCache;
    .restart local v21       #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    :cond_1ab
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/util/ContactInfoCache;->getContactInfoForPhoneNumber(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    move-result-object v21

    goto/16 :goto_d3

    .line 259
    .end local v6           #threadId:J
    .end local v8           #from:Ljava/lang/String;
    .end local v9           #subject:Ljava/lang/String;
    .end local v11           #read:Z
    .end local v12           #error:Z
    .end local v16           #address:Ljava/lang/String;
    .end local v17           #cache:Lcom/android/mms/util/ContactInfoCache;
    .end local v19           #date:J
    .end local v21           #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    .end local v26           #tempFrom:Ljava/lang/String;
    :cond_1bb
    const/16 v27, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 260
    .restart local v6       #threadId:J
    const/16 v27, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 261
    .local v23, msgType:Ljava/lang/String;
    const-string v27, "sms"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_25a

    .line 263
    const/16 v27, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 264
    .restart local v26       #tempFrom:Ljava/lang/String;
    const-string v27, "801010101018"

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_238

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x7f070150

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 273
    .restart local v8       #from:Ljava/lang/String;
    :goto_1fe
    const/16 v27, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 274
    .restart local v9       #subject:Ljava/lang/String;
    const/16 v27, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 278
    .restart local v19       #date:J
    const/16 v27, 0x6

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    if-eqz v27, :cond_255

    const/16 v27, 0x1

    move/from16 v11, v27

    .line 287
    .end local v26           #tempFrom:Ljava/lang/String;
    .restart local v11       #read:Z
    :goto_222
    const/4 v12, 0x0

    .line 288
    .restart local v12       #error:Z
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_119

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x7f070011

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_119

    .line 266
    .end local v8           #from:Ljava/lang/String;
    .end local v9           #subject:Ljava/lang/String;
    .end local v11           #read:Z
    .end local v12           #error:Z
    .end local v19           #date:J
    .restart local v26       #tempFrom:Ljava/lang/String;
    :cond_238
    const-string v27, "901010101019"

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_252

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x7f070151

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #from:Ljava/lang/String;
    goto :goto_1fe

    .line 269
    .end local v8           #from:Ljava/lang/String;
    :cond_252
    move-object/from16 v8, v26

    .restart local v8       #from:Ljava/lang/String;
    goto :goto_1fe

    .line 278
    .restart local v9       #subject:Ljava/lang/String;
    .restart local v19       #date:J
    :cond_255
    const/16 v27, 0x0

    move/from16 v11, v27

    goto :goto_222

    .line 280
    .end local v8           #from:Ljava/lang/String;
    .end local v9           #subject:Ljava/lang/String;
    .end local v19           #date:J
    .end local v26           #tempFrom:Ljava/lang/String;
    :cond_25a
    move-object/from16 v0, p2

    move-wide v1, v6

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 282
    .restart local v8       #from:Ljava/lang/String;
    const/16 v27, 0x8

    const/16 v28, 0x9

    move-object/from16 v0, p3

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v9

    .line 284
    .restart local v9       #subject:Ljava/lang/String;
    const/16 v27, 0xa

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    const-wide/16 v29, 0x3e8

    mul-long v19, v27, v29

    .line 285
    .restart local v19       #date:J
    const/16 v27, 0xb

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    if-eqz v27, :cond_28e

    const/16 v27, 0x1

    move/from16 v11, v27

    .restart local v11       #read:Z
    :goto_28d
    goto :goto_222

    .end local v11           #read:Z
    :cond_28e
    const/16 v27, 0x0

    move/from16 v11, v27

    goto :goto_28d

    .line 318
    .end local v6           #threadId:J
    .end local v8           #from:Ljava/lang/String;
    .end local v9           #subject:Ljava/lang/String;
    .end local v14           #messageCount:I
    .end local v15           #hasAttachment:Z
    .end local v18           #cacheEntryInvalid:Z
    .end local v19           #date:J
    .end local v22           #headerView:Lcom/android/mms/ui/ConversationHeaderView;
    .end local v23           #msgType:Ljava/lang/String;
    .end local v24           #presenceIconResId:I
    .end local v25           #spaceSeparatedRcptIds:Ljava/lang/String;
    :cond_293
    const-string v27, "ConversationListAdapter"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Unexpected bound view: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_179
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 4
    .parameter "cursor"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mThingsToLoad:Ljava/util/Stack;

    monitor-enter v0

    .line 398
    :try_start_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mThingsToLoad:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    .line 399
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 401
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 402
    return-void

    .line 399
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method public isSimpleMode()Z
    .registers 2

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSimpleMode:Z

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 384
    const-string v0, "ConversationListAdapter"

    const-string v1, "inflating new view"

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFactory:Landroid/view/LayoutInflater;

    const v1, 0x7f03000c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
