.class public Lcom/lge/hiddenmenu/aging_test/DownloadTest;
.super Landroid/app/Activity;
.source "DownloadTest.java"


# static fields
.field public static final Full:I = 0x0

.field private static final MAX_DB_COUNT:I = 0x64

.field static final SUCCESS_COLOR:I = -0x550056

.field public static final Shake:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DownloadsTest"

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

.field protected mResolver:Landroid/content/ContentResolver;

.field private mText:Landroid/widget/TextView;

.field private mUri:Landroid/net/Uri;

.field private repeat:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "uri"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "hint"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mResolver:Landroid/content/ContentResolver;

    .line 54
    new-instance v0, Lcom/lge/hiddenmenu/aging_test/DownloadTest$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/aging_test/DownloadTest$1;-><init>(Lcom/lge/hiddenmenu/aging_test/DownloadTest;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mHandler:Landroid/os/Handler;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->repeat:I

    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/aging_test/DownloadTest;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/aging_test/DownloadTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/lge/hiddenmenu/aging_test/DownloadTest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/aging_test/DownloadTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->type:I

    return v0
.end method

.method private scrollToBottom()V
    .registers 5

    .prologue
    .line 222
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 223
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    const/16 v2, 0x15

    sub-int v0, v1, v2

    .line 224
    .local v0, textHeight:I
    if-gez v0, :cond_12

    .line 225
    const/4 v0, 0x0

    .line 226
    :cond_12
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mText:Landroid/widget/TextView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineHeight()I

    move-result v3

    mul-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->scrollTo(II)V

    .line 227
    return-void
.end method


# virtual methods
.method public DB_Fill(I)V
    .registers 8
    .parameter "Full_time"

    .prologue
    .line 144
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, p1, :cond_56

    .line 150
    const/16 v3, 0x64

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->doUpdate(I)V

    .line 151
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->doDelete(I)V

    .line 153
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 154
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

    .line 155
    .local v2, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mText:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 156
    const-string v3, "DownloadsTest"

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

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 159
    .end local v0           #c:Ljava/lang/CharSequence;
    .end local v2           #s:Ljava/lang/String;
    :cond_56
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 160
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

    .line 161
    .restart local v2       #s:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mText:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 162
    invoke-direct {p0}, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->scrollToBottom()V

    .line 163
    return-void
.end method

.method public DB_Shake(I)V
    .registers 8
    .parameter "Shake_time"

    .prologue
    .line 118
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, p1, :cond_66

    .line 124
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->repeat:I

    .line 126
    iget v3, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->repeat:I

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->doUpdate(I)V

    .line 128
    iget v3, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->repeat:I

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->doDelete(I)V

    .line 130
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 131
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

    .line 132
    .local v2, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mText:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 133
    const-string v3, "DownloadsTest"

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

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 136
    .end local v0           #c:Ljava/lang/CharSequence;
    .end local v2           #s:Ljava/lang/String;
    :cond_66
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 137
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

    .line 138
    .restart local v2       #s:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mText:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 139
    invoke-direct {p0}, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->scrollToBottom()V

    .line 140
    return-void
.end method

.method public doDelete(I)V
    .registers 6
    .parameter "count"

    .prologue
    const/4 v3, 0x0

    .line 183
    sget-object v1, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mUri:Landroid/net/Uri;

    .line 184
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mCursor:Landroid/database/Cursor;

    .line 185
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 187
    if-nez p1, :cond_2e

    .line 191
    :cond_16
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->deleteRow()Z

    .line 192
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->commitUpdates()Z

    .line 194
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_16

    .line 208
    :cond_28
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 209
    return-void

    .line 198
    :cond_2e
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, p1, :cond_3c

    .line 199
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    .line 201
    :cond_3c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3d
    if-ge v0, p1, :cond_28

    .line 203
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->deleteRow()Z

    .line 204
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->commitUpdates()Z

    .line 205
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d
.end method

.method public doUpdate(I)V
    .registers 8
    .parameter "count"

    .prologue
    const/4 v5, 0x0

    .line 167
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 168
    .local v1, m:Landroid/content/ContentValues;
    const-string v3, "uri"

    const-string v4, "DOWNLOAD URI"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v3, "filename"

    const-string v4, "FILE NAME"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v3, "control"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    const-string v3, "status"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    const/4 v0, 0x1

    .local v0, i:I
    :goto_27
    add-int/lit8 v3, p1, 0x1

    if-ge v0, v3, :cond_3c

    .line 177
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 178
    .local v2, url:Landroid/net/Uri;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 180
    .end local v2           #url:Landroid/net/Uri;
    :cond_3c
    return-void
.end method

.method public getDBCount()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 213
    sget-object v1, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mUri:Landroid/net/Uri;

    .line 214
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mCursor:Landroid/database/Cursor;

    .line 215
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 216
    .local v0, count:I
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 218
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->intent:Landroid/content/Intent;

    .line 65
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->intent:Landroid/content/Intent;

    const-string v3, "TYPE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->type:I

    .line 66
    iput v4, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mCount:I

    .line 68
    const v2, 0x7f030023

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mResolver:Landroid/content/ContentResolver;

    .line 72
    const v2, 0x7f070082

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mLabel:Landroid/widget/TextView;

    .line 73
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mLabel:Landroid/widget/TextView;

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const v2, 0x7f070083

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mEditText:Landroid/widget/EditText;

    .line 76
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mEditText:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 77
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 78
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mEditText:Landroid/widget/EditText;

    const/high16 v3, 0x41a0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextSize(F)V

    .line 79
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mEditText:Landroid/widget/EditText;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHeight(I)V

    .line 88
    const v2, 0x7f07001a

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mText:Landroid/widget/TextView;

    .line 89
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 90
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mText:Landroid/widget/TextView;

    const/high16 v3, 0x4140

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 91
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mText:Landroid/widget/TextView;

    const v3, -0x550056

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 93
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 95
    const v2, 0x7f070084

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->addButton:Landroid/widget/Button;

    .line 96
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->addButton:Landroid/widget/Button;

    const-string v3, "start"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 99
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v2, 0x7f030003

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 101
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/DownloadTest;->addButton:Landroid/widget/Button;

    new-instance v3, Lcom/lge/hiddenmenu/aging_test/DownloadTest$2;

    invoke-direct {v3, p0}, Lcom/lge/hiddenmenu/aging_test/DownloadTest$2;-><init>(Lcom/lge/hiddenmenu/aging_test/DownloadTest;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-void
.end method
