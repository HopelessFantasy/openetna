.class public Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;
.super Landroid/app/Activity;
.source "SubscribedfeedsTest.java"


# static fields
.field public static final Full:I = 0x0

.field private static final GDATA_AUTHORITY:Ljava/lang/String; = "calendar"

.field private static final MAX_DB_COUNT:I = 0xa

.field public static final SERVICE:Ljava/lang/String; = "cl"

.field static final SUCCESS_COLOR:I = -0x550056

.field public static final Shake:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SubscribedfeedsTest"

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private addButton:Landroid/widget/Button;

.field private intent:Landroid/content/Intent;

.field private log:Ljava/lang/String;

.field private mCount:I

.field private mCursor:Landroid/database/Cursor;

.field private mEditText:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mLabel:Landroid/widget/TextView;

.field private mText:Landroid/widget/TextView;

.field private mUri:Landroid/net/Uri;

.field private repeat:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 40
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_sync_account"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_sync_time"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_sync_version"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_sync_local_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_sync_dirty"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_sync_mark"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "feed"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "authority"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "service"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    new-instance v0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest$1;-><init>(Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->type:I

    return v0
.end method

.method private scrollToBottom()V
    .registers 5

    .prologue
    .line 216
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 217
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    const/16 v2, 0x15

    sub-int v0, v1, v2

    .line 218
    .local v0, textHeight:I
    if-gez v0, :cond_12

    .line 219
    const/4 v0, 0x0

    .line 220
    :cond_12
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mText:Landroid/widget/TextView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineHeight()I

    move-result v3

    mul-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->scrollTo(II)V

    .line 221
    return-void
.end method


# virtual methods
.method public DB_Fill(I)V
    .registers 8
    .parameter "Full_time"

    .prologue
    .line 152
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, p1, :cond_56

    .line 158
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->doUpdate(I)V

    .line 159
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->doDelete(I)V

    .line 161
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 162
    .local v0, c:Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DB Fill .....\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mText:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 164
    const-string v3, "SubscribedfeedsTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DB Fill ....."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 167
    .end local v0           #c:Ljava/lang/CharSequence;
    .end local v2           #s:Ljava/lang/String;
    :cond_56
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 168
    .restart local v0       #c:Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DB Full completed!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .restart local v2       #s:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mText:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 170
    invoke-direct {p0}, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->scrollToBottom()V

    .line 171
    return-void
.end method

.method public DB_Shake(I)V
    .registers 8
    .parameter "Shake_time"

    .prologue
    .line 125
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, p1, :cond_66

    .line 131
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->repeat:I

    .line 133
    iget v3, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->repeat:I

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->doUpdate(I)V

    .line 135
    iget v3, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->repeat:I

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->doDelete(I)V

    .line 137
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 138
    .local v0, c:Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DB update .....\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mText:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 141
    const-string v3, "SubscribedfeedsTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DB update ....."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 144
    .end local v0           #c:Ljava/lang/CharSequence;
    .end local v2           #s:Ljava/lang/String;
    :cond_66
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 145
    .restart local v0       #c:Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DB Shake completed!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    .restart local v2       #s:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mText:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 147
    invoke-direct {p0}, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->scrollToBottom()V

    .line 148
    return-void
.end method

.method public doDelete(I)V
    .registers 6
    .parameter "count"

    .prologue
    .line 183
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_11

    .line 185
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "account"

    const-string v3, "calendar"

    invoke-static {v1, v2, v3}, Landroid/provider/SubscribedFeeds;->deleteFeeds(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 187
    :cond_11
    return-void
.end method

.method public doDeleteAll()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 191
    sget-object v0, Landroid/provider/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mUri:Landroid/net/Uri;

    .line 192
    iget-object v0, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mUri:Landroid/net/Uri;

    sget-object v1, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mCursor:Landroid/database/Cursor;

    .line 193
    iget-object v0, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 195
    iget-object v0, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2a

    .line 199
    :cond_18
    iget-object v0, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deleteRow()Z

    .line 201
    iget-object v0, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_18

    .line 202
    iget-object v0, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 204
    :cond_2a
    return-void
.end method

.method public doUpdate(I)V
    .registers 8
    .parameter "count"

    .prologue
    .line 175
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    add-int/lit8 v1, p1, 0x1

    if-ge v0, v1, :cond_17

    .line 177
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://"

    const-string v3, "account"

    const-string v4, "calendar"

    const-string v5, "cl"

    invoke-static {v1, v2, v3, v4, v5}, Landroid/provider/SubscribedFeeds;->addFeed(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 179
    :cond_17
    return-void
.end method

.method public getDBCount()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 208
    sget-object v1, Landroid/provider/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mUri:Landroid/net/Uri;

    .line 209
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mCursor:Landroid/database/Cursor;

    .line 210
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 211
    .local v0, count:I
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 212
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->intent:Landroid/content/Intent;

    .line 74
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->intent:Landroid/content/Intent;

    const-string v3, "TYPE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->type:I

    .line 75
    iput v4, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mCount:I

    .line 77
    const v2, 0x7f030023

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->setContentView(I)V

    .line 79
    const v2, 0x7f070082

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mLabel:Landroid/widget/TextView;

    .line 80
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mLabel:Landroid/widget/TextView;

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v2, 0x7f070083

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mEditText:Landroid/widget/EditText;

    .line 83
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mEditText:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 84
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 85
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mEditText:Landroid/widget/EditText;

    const/high16 v3, 0x41a0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextSize(F)V

    .line 86
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mEditText:Landroid/widget/EditText;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHeight(I)V

    .line 95
    const v2, 0x7f07001a

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mText:Landroid/widget/TextView;

    .line 96
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 97
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mText:Landroid/widget/TextView;

    const/high16 v3, 0x4140

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 98
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mText:Landroid/widget/TextView;

    const v3, -0x550056

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 100
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 102
    const v2, 0x7f070084

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->addButton:Landroid/widget/Button;

    .line 103
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->addButton:Landroid/widget/Button;

    const-string v3, "start"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 105
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 106
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v2, 0x7f030003

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 108
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;->addButton:Landroid/widget/Button;

    new-instance v3, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest$2;

    invoke-direct {v3, p0}, Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest$2;-><init>(Lcom/lge/hiddenmenu/aging_test/SubscribedfeedsTest;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-void
.end method
