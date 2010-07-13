.class public Lcom/android/globalsearch/SuggestionCursor;
.super Landroid/database/AbstractCursor;
.source "SuggestionCursor.java"

# interfaces
.implements Lcom/android/globalsearch/SuggestionBacker$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/globalsearch/SuggestionCursor$CursorListener;
    }
.end annotation


# static fields
.field private static final ACTION_MSG_CALL:I = 0x9

.field private static final BACKGROUND_COLOR:I = 0xd

.field private static final COLUMNS:[Ljava/lang/String; = null

.field private static final CURSOR_NOTIFY_WINDOW_MS:I = 0x64

.field private static final DBG:Z = false

.field private static final DUMP_SUGGESTIONS:Z = false

.field private static final EXTRA_CURSOR_RESPOND_CLOSE_CURSOR:Ljava/lang/String; = "cursor_respond_close_cursor"

.field private static final FORMAT:I = 0x1

.field private static final ICON_1:I = 0x4

.field private static final ICON_2:I = 0x5

.field private static final INTENT_ACTION:I = 0x7

.field private static final INTENT_COMPONENT_NAME:I = 0xb

.field private static final INTENT_DATA:I = 0x8

.field private static final INTENT_EXTRA_DATA:I = 0xa

.field private static final QUERY:I = 0x6

.field private static final SHORTCUT_ID:I = 0xc

.field private static final SPEW:Z = false

.field private static final SUGGEST_COLUMN_ACTION_MSG_CALL:Ljava/lang/String; = "suggest_action_msg_call"

.field private static final TAG:Ljava/lang/String; = null

.field private static final TEXT_1:I = 0x2

.field private static final TEXT_2:I = 0x3

.field private static final _ID:I


# instance fields
.field private mBacker:Lcom/android/globalsearch/SuggestionBacker;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/globalsearch/SuggestionData;",
            ">;"
        }
    .end annotation
.end field

.field private final mDelayedExecutor:Lcom/android/globalsearch/DelayedExecutor;

.field private mIncludeSources:Z

.field private mListener:Lcom/android/globalsearch/SuggestionCursor$CursorListener;

.field private mNextNotify:J

.field private final mNotifier:Ljava/lang/Runnable;

.field private mOnMoreCalled:Z

.field private final mQuery:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 49
    const-class v0, Lcom/android/globalsearch/SuggestionCursor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/globalsearch/SuggestionCursor;->TAG:Ljava/lang/String;

    .line 59
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_format"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_icon_2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_intent_action"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "suggest_action_msg_call"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "suggest_intent_component"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "suggest_background_color"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/globalsearch/SuggestionCursor;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/globalsearch/DelayedExecutor;Ljava/lang/String;)V
    .registers 6
    .parameter "delayedExecutor"
    .parameter "query"

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 92
    iput-boolean v2, p0, Lcom/android/globalsearch/SuggestionCursor;->mOnMoreCalled:Z

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/globalsearch/SuggestionCursor;->mNextNotify:J

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/globalsearch/SuggestionCursor;->mData:Ljava/util/ArrayList;

    .line 351
    new-instance v0, Lcom/android/globalsearch/SuggestionCursor$1;

    invoke-direct {v0, p0}, Lcom/android/globalsearch/SuggestionCursor$1;-><init>(Lcom/android/globalsearch/SuggestionCursor;)V

    iput-object v0, p0, Lcom/android/globalsearch/SuggestionCursor;->mNotifier:Ljava/lang/Runnable;

    .line 138
    iput-object p2, p0, Lcom/android/globalsearch/SuggestionCursor;->mQuery:Ljava/lang/String;

    .line 139
    iput-object p1, p0, Lcom/android/globalsearch/SuggestionCursor;->mDelayedExecutor:Lcom/android/globalsearch/DelayedExecutor;

    .line 140
    iput-boolean v2, p0, Lcom/android/globalsearch/SuggestionCursor;->mIncludeSources:Z

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/android/globalsearch/SuggestionCursor;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/globalsearch/SuggestionCursor;->onChange(Z)V

    return-void
.end method

.method private get()Lcom/android/globalsearch/SuggestionData;
    .registers 4

    .prologue
    .line 361
    iget v1, p0, Lcom/android/globalsearch/SuggestionCursor;->mPos:I

    if-gez v1, :cond_c

    .line 362
    new-instance v1, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v2, "Before first row."

    invoke-direct {v1, v2}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 364
    :cond_c
    iget v1, p0, Lcom/android/globalsearch/SuggestionCursor;->mPos:I

    iget-object v2, p0, Lcom/android/globalsearch/SuggestionCursor;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1e

    .line 365
    new-instance v1, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v2, "After last row."

    invoke-direct {v1, v2}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 368
    :cond_1e
    iget-object v1, p0, Lcom/android/globalsearch/SuggestionCursor;->mData:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/globalsearch/SuggestionCursor;->mPos:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/globalsearch/SuggestionData;

    .line 371
    .local v0, suggestion:Lcom/android/globalsearch/SuggestionData;
    return-object v0
.end method

.method private getColumnValue(Lcom/android/globalsearch/SuggestionData;I)Ljava/lang/Object;
    .registers 5
    .parameter "suggestion"
    .parameter "columnIndex"

    .prologue
    .line 433
    packed-switch p2, :pswitch_data_58

    .line 449
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "we musta forgot about one of the columns :-/"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :pswitch_b
    iget v0, p0, Lcom/android/globalsearch/SuggestionCursor;->mPos:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 447
    :goto_11
    return-object v0

    .line 435
    :pswitch_12
    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getFormat()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 436
    :pswitch_17
    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 437
    :pswitch_1c
    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 438
    :pswitch_21
    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getIcon1()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 439
    :pswitch_26
    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getIcon2()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 440
    :pswitch_2b
    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getIntentQuery()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 441
    :pswitch_30
    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getIntentAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 442
    :pswitch_35
    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getIntentData()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 443
    :pswitch_3a
    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getActionMsgCall()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 444
    :pswitch_3f
    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getIntentExtraData()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 445
    :pswitch_44
    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getIntentComponentName()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 446
    :pswitch_49
    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 447
    :pswitch_4e
    invoke-virtual {p1}, Lcom/android/globalsearch/SuggestionData;->getBackgroundColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 433
    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_b
        :pswitch_12
        :pswitch_17
        :pswitch_1c
        :pswitch_21
        :pswitch_26
        :pswitch_2b
        :pswitch_30
        :pswitch_35
        :pswitch_3a
        :pswitch_3f
        :pswitch_44
        :pswitch_49
        :pswitch_4e
    .end packed-switch
.end method

.method private getMoreResultsPosition()I
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionCursor;->mBacker:Lcom/android/globalsearch/SuggestionBacker;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/globalsearch/SuggestionCursor;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionCursor;->mBacker:Lcom/android/globalsearch/SuggestionBacker;

    invoke-virtual {v0}, Lcom/android/globalsearch/SuggestionBacker;->getMoreResultPosition()I

    move-result v0

    goto :goto_a
.end method

.method private isResultsPending()Z
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionCursor;->mBacker:Lcom/android/globalsearch/SuggestionBacker;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionCursor;->mBacker:Lcom/android/globalsearch/SuggestionBacker;

    invoke-virtual {v0}, Lcom/android/globalsearch/SuggestionBacker;->isResultsPending()Z

    move-result v0

    goto :goto_5
.end method

.method private isShowingMore()Z
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionCursor;->mBacker:Lcom/android/globalsearch/SuggestionBacker;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/globalsearch/SuggestionCursor;->mBacker:Lcom/android/globalsearch/SuggestionBacker;

    invoke-virtual {v0}, Lcom/android/globalsearch/SuggestionBacker;->isShowingMore()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private respondClick(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 11
    .parameter "request"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 256
    const-string v5, "DialogCursorProtocol.CLICK.sendPosition"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 257
    .local v3, pos:I
    const-string v5, "DialogCursorProtocol.CLICK.sendDisplayPosition"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 260
    .local v1, maxDisplayed:I
    if-ne v3, v6, :cond_1b

    .line 261
    sget-object v5, Lcom/android/globalsearch/SuggestionCursor;->TAG:Ljava/lang/String;

    const-string v6, "DialogCursorProtocol.CLICK didn\'t come with extra CLICK_SEND_POSITION"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 289
    :goto_1a
    return-object v5

    .line 266
    :cond_1b
    iget-object v5, p0, Lcom/android/globalsearch/SuggestionCursor;->mData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 267
    .local v2, numSuggestions:I
    if-ge v1, v6, :cond_24

    const/4 v1, -0x1

    .line 268
    :cond_24
    if-lt v1, v2, :cond_28

    sub-int v1, v2, v8

    .line 269
    :cond_28
    iget-object v5, p0, Lcom/android/globalsearch/SuggestionCursor;->mData:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v7, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 271
    .local v0, displayedSuggestions:Ljava/util/List;,"Ljava/util/List<Lcom/android/globalsearch/SuggestionData;>;"
    iget-object v5, p0, Lcom/android/globalsearch/SuggestionCursor;->mListener:Lcom/android/globalsearch/SuggestionCursor$CursorListener;

    if-eqz v5, :cond_41

    iget-object v6, p0, Lcom/android/globalsearch/SuggestionCursor;->mListener:Lcom/android/globalsearch/SuggestionCursor$CursorListener;

    iget-object v5, p0, Lcom/android/globalsearch/SuggestionCursor;->mData:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/globalsearch/SuggestionData;

    invoke-interface {v6, v5, v0}, Lcom/android/globalsearch/SuggestionCursor$CursorListener;->onItemClicked(Lcom/android/globalsearch/SuggestionData;Ljava/util/List;)V

    .line 274
    :cond_41
    invoke-direct {p0}, Lcom/android/globalsearch/SuggestionCursor;->getMoreResultsPosition()I

    move-result v5

    if-ne v3, v5, :cond_63

    .line 276
    iget-boolean v5, p0, Lcom/android/globalsearch/SuggestionCursor;->mIncludeSources:Z

    if-nez v5, :cond_61

    move v5, v8

    :goto_4c
    iput-boolean v5, p0, Lcom/android/globalsearch/SuggestionCursor;->mIncludeSources:Z

    .line 277
    invoke-virtual {p0}, Lcom/android/globalsearch/SuggestionCursor;->onNewResults()V

    .line 279
    iget-boolean v5, p0, Lcom/android/globalsearch/SuggestionCursor;->mIncludeSources:Z

    if-eqz v5, :cond_63

    .line 284
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 285
    .local v4, response:Landroid/os/Bundle;
    const-string v5, "DialogCursorProtocol.CLICK.receiveSelectedPosition"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v5, v4

    .line 286
    goto :goto_1a

    .end local v4           #response:Landroid/os/Bundle;
    :cond_61
    move v5, v7

    .line 276
    goto :goto_4c

    .line 289
    :cond_63
    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_1a
.end method

.method private respondPostRefresh(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5
    .parameter "request"

    .prologue
    .line 220
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 221
    .local v0, response:Landroid/os/Bundle;
    const-string v1, "DialogCursorProtocol.POST_REFRESH.isPending"

    invoke-direct {p0}, Lcom/android/globalsearch/SuggestionCursor;->isResultsPending()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 224
    invoke-direct {p0}, Lcom/android/globalsearch/SuggestionCursor;->isShowingMore()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-boolean v1, p0, Lcom/android/globalsearch/SuggestionCursor;->mOnMoreCalled:Z

    if-nez v1, :cond_22

    .line 226
    const-string v1, "DialogCursorProtocol.POST_REFRESH.displayNotify"

    invoke-direct {p0}, Lcom/android/globalsearch/SuggestionCursor;->getMoreResultsPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 230
    :cond_22
    return-object v0
.end method

.method private respondThreshHit(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3
    .parameter "request"

    .prologue
    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/globalsearch/SuggestionCursor;->mOnMoreCalled:Z

    .line 303
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionCursor;->mListener:Lcom/android/globalsearch/SuggestionCursor$CursorListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/globalsearch/SuggestionCursor;->mListener:Lcom/android/globalsearch/SuggestionCursor$CursorListener;

    invoke-interface {v0}, Lcom/android/globalsearch/SuggestionCursor$CursorListener;->onMoreVisible()V

    .line 304
    :cond_c
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public attachBacker(Lcom/android/globalsearch/SuggestionBacker;)V
    .registers 5
    .parameter "backer"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/globalsearch/SuggestionCursor;->mBacker:Lcom/android/globalsearch/SuggestionBacker;

    .line 150
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionCursor;->mBacker:Lcom/android/globalsearch/SuggestionBacker;

    iget-object v1, p0, Lcom/android/globalsearch/SuggestionCursor;->mData:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/android/globalsearch/SuggestionCursor;->mIncludeSources:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/globalsearch/SuggestionBacker;->snapshotSuggestions(Ljava/util/ArrayList;Z)V

    .line 151
    invoke-virtual {p0}, Lcom/android/globalsearch/SuggestionCursor;->onNewResults()V

    .line 152
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 310
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 311
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionCursor;->mListener:Lcom/android/globalsearch/SuggestionCursor$CursorListener;

    if-eqz v0, :cond_c

    .line 312
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionCursor;->mListener:Lcom/android/globalsearch/SuggestionCursor$CursorListener;

    invoke-interface {v0}, Lcom/android/globalsearch/SuggestionCursor$CursorListener;->onClose()V

    .line 314
    :cond_c
    return-void
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/android/globalsearch/SuggestionCursor;->mClosed:Z

    if-nez v0, :cond_e

    .line 319
    sget-object v0, Lcom/android/globalsearch/SuggestionCursor;->TAG:Ljava/lang/String;

    const-string v1, "SuggestionCursor finalized without being closed. Someone is leaking."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {p0}, Lcom/android/globalsearch/SuggestionCursor;->close()V

    .line 322
    :cond_e
    invoke-super {p0}, Landroid/database/AbstractCursor;->finalize()V

    .line 323
    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 170
    sget-object v0, Lcom/android/globalsearch/SuggestionCursor;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionCursor;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .registers 4
    .parameter "column"

    .prologue
    .line 402
    invoke-virtual {p0, p1}, Lcom/android/globalsearch/SuggestionCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .registers 3
    .parameter "column"

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/globalsearch/SuggestionCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .registers 3
    .parameter "column"

    .prologue
    .line 412
    invoke-virtual {p0, p1}, Lcom/android/globalsearch/SuggestionCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .registers 4
    .parameter "column"

    .prologue
    .line 417
    invoke-virtual {p0, p1}, Lcom/android/globalsearch/SuggestionCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .registers 3
    .parameter "column"

    .prologue
    .line 422
    invoke-virtual {p0, p1}, Lcom/android/globalsearch/SuggestionCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/android/globalsearch/SuggestionCursor;->get()Lcom/android/globalsearch/SuggestionData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/globalsearch/SuggestionCursor;->getColumnValue(Lcom/android/globalsearch/SuggestionData;I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public isNull(I)Z
    .registers 3
    .parameter "column"

    .prologue
    .line 455
    invoke-virtual {p0, p1}, Lcom/android/globalsearch/SuggestionCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public declared-synchronized onNewResults()V
    .registers 7

    .prologue
    .line 338
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/globalsearch/SuggestionCursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_11

    .line 339
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 340
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/globalsearch/SuggestionCursor;->mNextNotify:J
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_22

    cmp-long v2, v0, v2

    if-gez v2, :cond_13

    .line 349
    .end local v0           #now:J
    :cond_11
    :goto_11
    monitor-exit p0

    return-void

    .line 344
    .restart local v0       #now:J
    :cond_13
    const-wide/16 v2, 0x64

    add-long/2addr v2, v0

    :try_start_16
    iput-wide v2, p0, Lcom/android/globalsearch/SuggestionCursor;->mNextNotify:J

    .line 347
    iget-object v2, p0, Lcom/android/globalsearch/SuggestionCursor;->mDelayedExecutor:Lcom/android/globalsearch/DelayedExecutor;

    iget-object v3, p0, Lcom/android/globalsearch/SuggestionCursor;->mNotifier:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/android/globalsearch/SuggestionCursor;->mNextNotify:J

    invoke-interface {v2, v3, v4, v5}, Lcom/android/globalsearch/DelayedExecutor;->postAtTime(Ljava/lang/Runnable;J)V
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_22

    goto :goto_11

    .line 338
    .end local v0           #now:J
    :catchall_22
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public prefill(Lcom/android/globalsearch/SuggestionCursor;)V
    .registers 4
    .parameter "other"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionCursor;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "prefilled when we aleady have results"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_10
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionCursor;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 165
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionCursor;->mData:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/globalsearch/SuggestionCursor;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 166
    return-void
.end method

.method public requery()Z
    .registers 4

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionCursor;->mBacker:Lcom/android/globalsearch/SuggestionBacker;

    if-eqz v0, :cond_d

    .line 377
    iget-object v0, p0, Lcom/android/globalsearch/SuggestionCursor;->mBacker:Lcom/android/globalsearch/SuggestionBacker;

    iget-object v1, p0, Lcom/android/globalsearch/SuggestionCursor;->mData:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/android/globalsearch/SuggestionCursor;->mIncludeSources:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/globalsearch/SuggestionBacker;->snapshotSuggestions(Ljava/util/ArrayList;Z)V

    .line 397
    :cond_d
    invoke-super {p0}, Landroid/database/AbstractCursor;->requery()Z

    move-result v0

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6
    .parameter "extras"

    .prologue
    const/4 v2, -0x1

    .line 187
    const-string v1, "cursor_respond_close_cursor"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 188
    invoke-virtual {p0}, Lcom/android/globalsearch/SuggestionCursor;->close()V

    .line 189
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 208
    :goto_e
    return-object v1

    .line 192
    :cond_f
    const-string v1, "DialogCursorProtocol.method"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 194
    .local v0, method:I
    if-ne v0, v2, :cond_21

    .line 195
    sget-object v1, Lcom/android/globalsearch/SuggestionCursor;->TAG:Ljava/lang/String;

    const-string v2, "received unexpectd respond: no DialogCursorProtocol.METHOD specified."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_e

    .line 199
    :cond_21
    packed-switch v0, :pswitch_data_4e

    .line 207
    :pswitch_24
    sget-object v1, Lcom/android/globalsearch/SuggestionCursor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected DialogCursorProtocol.METHOD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_e

    .line 201
    :pswitch_3f
    invoke-direct {p0, p1}, Lcom/android/globalsearch/SuggestionCursor;->respondPostRefresh(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_e

    .line 203
    :pswitch_44
    invoke-direct {p0, p1}, Lcom/android/globalsearch/SuggestionCursor;->respondClick(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_e

    .line 205
    :pswitch_49
    invoke-direct {p0, p1}, Lcom/android/globalsearch/SuggestionCursor;->respondThreshHit(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_e

    .line 199
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_24
        :pswitch_44
        :pswitch_49
    .end packed-switch
.end method

.method public setListener(Lcom/android/globalsearch/SuggestionCursor$CursorListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/globalsearch/SuggestionCursor;->mListener:Lcom/android/globalsearch/SuggestionCursor$CursorListener;

    .line 467
    return-void
.end method
