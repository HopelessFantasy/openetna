.class public final Landroid/provider/Gmail$ConversationCursor;
.super Landroid/provider/Gmail$MailCursor;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Gmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConversationCursor"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mConversationIdIndex:I

.field private mDateIndex:I

.field private mForceAllUnreadIndex:I

.field private mFromIndex:I

.field private mHasAttachmentsIndex:I

.field private mHasMessagesWithErrorsIndex:I

.field private mLabelIdsIndex:I

.field private mLabelIdsSplitter:Landroid/text/TextUtils$StringSplitter;

.field private mLabelMap:Landroid/provider/Gmail$LabelMap;

.field private mMaxMessageIdIndex:I

.field private mNumMessagesIndex:I

.field private mPersonalLevelIndex:I

.field private mSnippetIndex:I

.field private mSubjectIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2251
    const-class v0, Landroid/provider/Gmail;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Landroid/provider/Gmail$ConversationCursor;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(Landroid/provider/Gmail;Ljava/lang/String;Landroid/database/Cursor;)V
    .registers 6
    .parameter "gmail"
    .parameter "account"
    .parameter "cursor"

    .prologue
    .line 2271
    invoke-direct {p0, p2, p3}, Landroid/provider/Gmail$MailCursor;-><init>(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 2268
    invoke-static {}, Landroid/provider/Gmail;->newConversationLabelIdsSplitter()Landroid/text/TextUtils$StringSplitter;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/Gmail$ConversationCursor;->mLabelIdsSplitter:Landroid/text/TextUtils$StringSplitter;

    .line 2272
    invoke-virtual {p1, p2}, Landroid/provider/Gmail;->getLabelMap(Ljava/lang/String;)Landroid/provider/Gmail$LabelMap;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/Gmail$ConversationCursor;->mLabelMap:Landroid/provider/Gmail$LabelMap;

    .line 2274
    iget-object v0, p0, Landroid/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/provider/Gmail$ConversationCursor;->mConversationIdIndex:I

    .line 2276
    iget-object v0, p0, Landroid/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "subject"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/provider/Gmail$ConversationCursor;->mSubjectIndex:I

    .line 2277
    iget-object v0, p0, Landroid/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "snippet"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/provider/Gmail$ConversationCursor;->mSnippetIndex:I

    .line 2278
    iget-object v0, p0, Landroid/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "fromAddress"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/provider/Gmail$ConversationCursor;->mFromIndex:I

    .line 2279
    iget-object v0, p0, Landroid/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "date"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/provider/Gmail$ConversationCursor;->mDateIndex:I

    .line 2280
    iget-object v0, p0, Landroid/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "personalLevel"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/provider/Gmail$ConversationCursor;->mPersonalLevelIndex:I

    .line 2282
    iget-object v0, p0, Landroid/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "labelIds"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/provider/Gmail$ConversationCursor;->mLabelIdsIndex:I

    .line 2284
    iget-object v0, p0, Landroid/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "numMessages"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/provider/Gmail$ConversationCursor;->mNumMessagesIndex:I

    .line 2285
    iget-object v0, p0, Landroid/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "maxMessageId"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/provider/Gmail$ConversationCursor;->mMaxMessageIdIndex:I

    .line 2286
    iget-object v0, p0, Landroid/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "hasAttachments"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/provider/Gmail$ConversationCursor;->mHasAttachmentsIndex:I

    .line 2288
    iget-object v0, p0, Landroid/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "hasMessagesWithErrors"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/provider/Gmail$ConversationCursor;->mHasMessagesWithErrorsIndex:I

    .line 2290
    iget-object v0, p0, Landroid/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "forceAllUnread"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/provider/Gmail$ConversationCursor;->mForceAllUnreadIndex:I

    .line 2292
    return-void
.end method

.method synthetic constructor <init>(Landroid/provider/Gmail;Ljava/lang/String;Landroid/database/Cursor;Landroid/provider/Gmail$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 2251
    invoke-direct {p0, p1, p2, p3}, Landroid/provider/Gmail$ConversationCursor;-><init>(Landroid/provider/Gmail;Ljava/lang/String;Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public becomeActiveNetworkCursor()V
    .registers 6

    .prologue
    .line 2321
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2322
    .local v0, input:Landroid/os/Bundle;
    const-string v3, "command"

    const-string v4, "activate"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2323
    iget-object v3, p0, Landroid/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 2324
    .local v1, output:Landroid/os/Bundle;
    const-string v3, "commandResponse"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2325
    .local v2, response:Ljava/lang/String;
    sget-boolean v3, Landroid/provider/Gmail$ConversationCursor;->$assertionsDisabled:Z

    if-nez v3, :cond_2a

    const-string v3, "ok"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2326
    :cond_2a
    return-void
.end method

.method public getConversationId()J
    .registers 3

    .prologue
    .line 2355
    iget-object v0, p0, Landroid/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Landroid/provider/Gmail$ConversationCursor;->mConversationIdIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateMs()J
    .registers 3

    .prologue
    .line 2447
    iget-object v0, p0, Landroid/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Landroid/provider/Gmail$ConversationCursor;->mDateIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getForceAllUnread()Z
    .registers 3

    .prologue
    .line 2459
    iget-object v0, p0, Landroid/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Landroid/provider/Gmail$ConversationCursor;->mForceAllUnreadIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Landroid/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Landroid/provider/Gmail$ConversationCursor;->mForceAllUnreadIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public getFromSnippetInstructions()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2364
    iget v0, p0, Landroid/provider/Gmail$ConversationCursor;->mFromIndex:I

    invoke-virtual {p0, v0}, Landroid/provider/Gmail$ConversationCursor;->getStringInColumn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabelIds()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2409
    iget-object v0, p0, Landroid/provider/Gmail$ConversationCursor;->mLabelIdsSplitter:Landroid/text/TextUtils$StringSplitter;

    invoke-virtual {p0}, Landroid/provider/Gmail$ConversationCursor;->getRawLabelIds()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 2410
    iget-object v0, p0, Landroid/provider/Gmail$ConversationCursor;->mLabelIdsSplitter:Landroid/text/TextUtils$StringSplitter;

    invoke-static {v0}, Landroid/provider/Gmail;->getLabelIdsFromLabelIdsString(Landroid/text/TextUtils$StringSplitter;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getLabels()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2401
    invoke-virtual {p0}, Landroid/provider/Gmail$ConversationCursor;->getRawLabelIds()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/Gmail$ConversationCursor;->mLabelMap:Landroid/provider/Gmail$LabelMap;

    invoke-virtual {p0, v0, v1}, Landroid/provider/Gmail$ConversationCursor;->getLabels(Ljava/lang/String;Landroid/provider/Gmail$LabelMap;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getLabels(Ljava/lang/String;Landroid/provider/Gmail$LabelMap;)Ljava/util/Set;
    .registers 4
    .parameter "rawLabelIds"
    .parameter "labelMap"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/provider/Gmail$LabelMap;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2420
    iget-object v0, p0, Landroid/provider/Gmail$ConversationCursor;->mLabelIdsSplitter:Landroid/text/TextUtils$StringSplitter;

    invoke-interface {v0, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 2421
    iget-object v0, p0, Landroid/provider/Gmail$ConversationCursor;->mLabelIdsSplitter:Landroid/text/TextUtils$StringSplitter;

    invoke-static {p2, v0}, Landroid/provider/Gmail;->getCanonicalNamesFromLabelIdsString(Landroid/provider/Gmail$LabelMap;Landroid/text/TextUtils$StringSplitter;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getMaxServerMessageId()J
    .registers 3

    .prologue
    .line 2443
    iget-object v0, p0, Landroid/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Landroid/provider/Gmail$ConversationCursor;->mMaxMessageIdIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumMessages()I
    .registers 3

    .prologue
    .line 2436
    iget-object v0, p0, Landroid/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Landroid/provider/Gmail$ConversationCursor;->mNumMessagesIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getPersonalLevel()Landroid/provider/Gmail$PersonalLevel;
    .registers 4

    .prologue
    .line 2391
    iget-object v1, p0, Landroid/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Landroid/provider/Gmail$ConversationCursor;->mPersonalLevelIndex:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2392
    .local v0, personalLevelInt:I
    invoke-static {v0}, Landroid/provider/Gmail$PersonalLevel;->fromInt(I)Landroid/provider/Gmail$PersonalLevel;

    move-result-object v1

    return-object v1
.end method

.method public getRawLabelIds()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2429
    iget-object v0, p0, Landroid/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Landroid/provider/Gmail$ConversationCursor;->mLabelIdsIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2382
    iget v0, p0, Landroid/provider/Gmail$ConversationCursor;->mSnippetIndex:I

    invoke-virtual {p0, v0}, Landroid/provider/Gmail$ConversationCursor;->getStringInColumn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Landroid/provider/Gmail$CursorStatus;
    .registers 4

    .prologue
    .line 2300
    iget-object v2, p0, Landroid/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2301
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "status"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2302
    .local v1, stringStatus:Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Gmail$CursorStatus;->valueOf(Ljava/lang/String;)Landroid/provider/Gmail$CursorStatus;

    move-result-object v2

    return-object v2
.end method

.method public getSubject()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2373
    iget v0, p0, Landroid/provider/Gmail$ConversationCursor;->mSubjectIndex:I

    invoke-virtual {p0, v0}, Landroid/provider/Gmail$ConversationCursor;->getStringInColumn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAttachments()Z
    .registers 3

    .prologue
    .line 2451
    iget-object v0, p0, Landroid/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Landroid/provider/Gmail$ConversationCursor;->mHasAttachmentsIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hasMessagesWithErrors()Z
    .registers 3

    .prologue
    .line 2455
    iget-object v0, p0, Landroid/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Landroid/provider/Gmail$ConversationCursor;->mHasMessagesWithErrorsIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected onCursorPositionChanged()V
    .registers 1

    .prologue
    .line 2296
    invoke-super {p0}, Landroid/provider/Gmail$MailCursor;->onCursorPositionChanged()V

    .line 2297
    return-void
.end method

.method public retry()V
    .registers 6

    .prologue
    .line 2307
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2308
    .local v0, input:Landroid/os/Bundle;
    const-string v3, "command"

    const-string v4, "retry"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2309
    iget-object v3, p0, Landroid/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 2310
    .local v1, output:Landroid/os/Bundle;
    const-string v3, "commandResponse"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2311
    .local v2, response:Ljava/lang/String;
    sget-boolean v3, Landroid/provider/Gmail$ConversationCursor;->$assertionsDisabled:Z

    if-nez v3, :cond_2a

    const-string v3, "ok"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2312
    :cond_2a
    return-void
.end method

.method public setContentsVisibleToUser(Z)V
    .registers 7
    .parameter "visible"

    .prologue
    .line 2340
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2341
    .local v0, input:Landroid/os/Bundle;
    const-string v3, "command"

    const-string v4, "setVisible"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2342
    const-string v3, "visible"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2343
    iget-object v3, p0, Landroid/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 2344
    .local v1, output:Landroid/os/Bundle;
    const-string v3, "commandResponse"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2345
    .local v2, response:Ljava/lang/String;
    sget-boolean v3, Landroid/provider/Gmail$ConversationCursor;->$assertionsDisabled:Z

    if-nez v3, :cond_2f

    const-string v3, "ok"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2346
    :cond_2f
    return-void
.end method
