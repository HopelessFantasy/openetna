.class public Lcom/lge/hiddenmenu/aging_test/SyncTest;
.super Landroid/app/Activity;
.source "SyncTest.java"


# static fields
.field public static final Full:I = 0x0

.field private static final MAX_DB_COUNT:I = 0xa

.field static final SUCCESS_COLOR:I = -0x550056

.field public static final Shake:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SyncTest"

.field private static final mUri:Landroid/net/Uri;

.field private static final sHistoryProjection:[Ljava/lang/String;

.field private static final sHistoryProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


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

.field private repeat:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 39
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "stats_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "event"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "source"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "eventTime"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mesg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->sHistoryProjection:[Ljava/lang/String;

    .line 48
    sget-object v0, Landroid/provider/Sync$History;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mUri:Landroid/net/Uri;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->sHistoryProjectionMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    new-instance v0, Lcom/lge/hiddenmenu/aging_test/SyncTest$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/aging_test/SyncTest$1;-><init>(Lcom/lge/hiddenmenu/aging_test/SyncTest;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/aging_test/SyncTest;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/aging_test/SyncTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/lge/hiddenmenu/aging_test/SyncTest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/aging_test/SyncTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->type:I

    return v0
.end method

.method private scrollToBottom()V
    .registers 5

    .prologue
    .line 224
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 225
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    const/16 v2, 0x15

    sub-int v0, v1, v2

    .line 226
    .local v0, textHeight:I
    if-gez v0, :cond_12

    .line 227
    const/4 v0, 0x0

    .line 228
    :cond_12
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mText:Landroid/widget/TextView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineHeight()I

    move-result v3

    mul-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->scrollTo(II)V

    .line 229
    return-void
.end method


# virtual methods
.method public DB_Fill(I)V
    .registers 8
    .parameter "Full_time"

    .prologue
    .line 147
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, p1, :cond_56

    .line 153
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/aging_test/SyncTest;->doUpdate(I)V

    .line 154
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/aging_test/SyncTest;->doDelete(I)V

    .line 156
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 157
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

    .line 158
    .local v2, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mText:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 159
    const-string v3, "SyncTest"

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

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 162
    .end local v0           #c:Ljava/lang/CharSequence;
    .end local v2           #s:Ljava/lang/String;
    :cond_56
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 163
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

    .line 164
    .restart local v2       #s:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mText:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 165
    invoke-direct {p0}, Lcom/lge/hiddenmenu/aging_test/SyncTest;->scrollToBottom()V

    .line 166
    return-void
.end method

.method public DB_Shake(I)V
    .registers 8
    .parameter "Shake_time"

    .prologue
    .line 121
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, p1, :cond_66

    .line 127
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->repeat:I

    .line 129
    iget v3, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->repeat:I

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/aging_test/SyncTest;->doUpdate(I)V

    .line 131
    iget v3, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->repeat:I

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/aging_test/SyncTest;->doDelete(I)V

    .line 133
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 134
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

    .line 135
    .local v2, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mText:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 136
    const-string v3, "SyncTest"

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

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 139
    .end local v0           #c:Ljava/lang/CharSequence;
    .end local v2           #s:Ljava/lang/String;
    :cond_66
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 140
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

    .line 141
    .restart local v2       #s:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mText:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 142
    invoke-direct {p0}, Lcom/lge/hiddenmenu/aging_test/SyncTest;->scrollToBottom()V

    .line 143
    return-void
.end method

.method public doDelete(I)V
    .registers 6
    .parameter "count"

    .prologue
    const/4 v3, 0x0

    .line 189
    sget-object v2, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v2, v3, v3, v3}, Lcom/lge/hiddenmenu/aging_test/SyncTest;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mCursor:Landroid/database/Cursor;

    .line 190
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 191
    .local v0, db_count:I
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 193
    if-nez p1, :cond_26

    .line 195
    const/4 v1, 0x0

    .local v1, i:I
    :goto_17
    if-ge v1, v0, :cond_3e

    .line 196
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->deleteRow()Z

    .line 197
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->commitUpdates()Z

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 202
    .end local v1           #i:I
    :cond_26
    if-le p1, v0, :cond_29

    .line 203
    move p1, v0

    .line 205
    :cond_29
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2a
    if-ge v1, p1, :cond_3e

    .line 207
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->deleteRow()Z

    .line 208
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->commitUpdates()Z

    .line 209
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 212
    :cond_3e
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 213
    return-void
.end method

.method public doUpdate(I)V
    .registers 9
    .parameter "count"

    .prologue
    const/4 v5, 0x0

    const-string v6, "mesg"

    .line 170
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 172
    .local v1, map:Landroid/content/ContentValues;
    const-string v3, "event"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    const-string v3, "eventTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    const-string v3, "source"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    const-string v3, "mesg"

    const-string v3, "mesg"

    invoke-virtual {v1, v6, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/aging_test/SyncTest;->getDBCount()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_33

    .line 184
    :cond_32
    return-void

    .line 180
    :cond_33
    const/4 v0, 0x1

    .local v0, i:I
    :goto_34
    add-int/lit8 v3, p1, 0x1

    if-ge v0, v3, :cond_32

    .line 181
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/aging_test/SyncTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 182
    .local v2, result:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/aging_test/SyncTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_34
.end method

.method public getDBCount()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 217
    sget-object v1, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/lge/hiddenmenu/aging_test/SyncTest;->sHistoryProjection:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/lge/hiddenmenu/aging_test/SyncTest;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mCursor:Landroid/database/Cursor;

    .line 218
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 219
    .local v0, count:I
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 220
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/aging_test/SyncTest;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->intent:Landroid/content/Intent;

    .line 70
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->intent:Landroid/content/Intent;

    const-string v3, "TYPE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->type:I

    .line 71
    iput v4, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mCount:I

    .line 73
    const v2, 0x7f030023

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/SyncTest;->setContentView(I)V

    .line 75
    const v2, 0x7f070082

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/SyncTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mLabel:Landroid/widget/TextView;

    .line 76
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mLabel:Landroid/widget/TextView;

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const v2, 0x7f070083

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/SyncTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mEditText:Landroid/widget/EditText;

    .line 79
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mEditText:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 80
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 81
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mEditText:Landroid/widget/EditText;

    const/high16 v3, 0x41a0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextSize(F)V

    .line 82
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mEditText:Landroid/widget/EditText;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHeight(I)V

    .line 91
    const v2, 0x7f07001a

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/SyncTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mText:Landroid/widget/TextView;

    .line 92
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 93
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mText:Landroid/widget/TextView;

    const/high16 v3, 0x4140

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 94
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mText:Landroid/widget/TextView;

    const v3, -0x550056

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 96
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 98
    const v2, 0x7f070084

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/SyncTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->addButton:Landroid/widget/Button;

    .line 99
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->addButton:Landroid/widget/Button;

    const-string v3, "start"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/SyncTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 102
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v2, 0x7f030003

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 104
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SyncTest;->addButton:Landroid/widget/Button;

    new-instance v3, Lcom/lge/hiddenmenu/aging_test/SyncTest$2;

    invoke-direct {v3, p0}, Lcom/lge/hiddenmenu/aging_test/SyncTest$2;-><init>(Lcom/lge/hiddenmenu/aging_test/SyncTest;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method
