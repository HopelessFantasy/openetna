.class public Lcom/lge/hiddenmenu/aging_test/SMSTest;
.super Landroid/app/Activity;
.source "SMSTest.java"


# static fields
.field public static final Full:I = 0x0

.field private static final MAX_DB_COUNT:I = 0xc8

.field static final SUCCESS_COLOR:I = -0x550056

.field public static final Shake:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SMSTest"


# instance fields
.field private addButton:Landroid/widget/Button;

.field private intent:Landroid/content/Intent;

.field private log:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCount:I

.field private mCursor:Landroid/database/Cursor;

.field private mEditText:Landroid/widget/EditText;

.field private mLabel:Landroid/widget/TextView;

.field private mText:Landroid/widget/TextView;

.field private repeat:I

.field private type:I

.field private urls:[Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/aging_test/SMSTest;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/aging_test/SMSTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/lge/hiddenmenu/aging_test/SMSTest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/aging_test/SMSTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->type:I

    return v0
.end method

.method private scrollToBottom()V
    .registers 5

    .prologue
    .line 228
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 229
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    const/16 v2, 0x15

    sub-int v0, v1, v2

    .line 230
    .local v0, textHeight:I
    if-gez v0, :cond_12

    .line 231
    const/4 v0, 0x0

    .line 232
    :cond_12
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mText:Landroid/widget/TextView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineHeight()I

    move-result v3

    mul-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->scrollTo(II)V

    .line 233
    return-void
.end method


# virtual methods
.method public DB_Fill(I)V
    .registers 8
    .parameter "Full_time"

    .prologue
    .line 138
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, p1, :cond_52

    .line 144
    const/16 v3, 0xc8

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/aging_test/SMSTest;->doUpdate(I)V

    .line 147
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 148
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

    .line 149
    .local v2, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mText:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 150
    const-string v3, "SMSTest"

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

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 153
    .end local v0           #c:Ljava/lang/CharSequence;
    .end local v2           #s:Ljava/lang/String;
    :cond_52
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 154
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

    .line 155
    .restart local v2       #s:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mText:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 156
    invoke-direct {p0}, Lcom/lge/hiddenmenu/aging_test/SMSTest;->scrollToBottom()V

    .line 157
    return-void
.end method

.method public DB_Shake(I)V
    .registers 8
    .parameter "Shake_time"

    .prologue
    .line 112
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, p1, :cond_66

    .line 118
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->repeat:I

    .line 120
    iget v3, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->repeat:I

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/aging_test/SMSTest;->doUpdate(I)V

    .line 122
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/aging_test/SMSTest;->doDelete(I)V

    .line 124
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 125
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

    .line 126
    .local v2, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mText:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 127
    const-string v3, "SMSTest"

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

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 130
    .end local v0           #c:Ljava/lang/CharSequence;
    .end local v2           #s:Ljava/lang/String;
    :cond_66
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 131
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

    .line 132
    .restart local v2       #s:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mText:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 133
    invoke-direct {p0}, Lcom/lge/hiddenmenu/aging_test/SMSTest;->scrollToBottom()V

    .line 134
    return-void
.end method

.method public doDelete(I)V
    .registers 6
    .parameter "count"

    .prologue
    const/4 v3, 0x0

    .line 200
    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    .line 201
    .local v2, mUri:Landroid/net/Uri;
    invoke-virtual {p0, v2, v3, v3, v3}, Lcom/lge/hiddenmenu/aging_test/SMSTest;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mCursor:Landroid/database/Cursor;

    .line 202
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 203
    .local v0, db_count:I
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 205
    if-nez p1, :cond_26

    .line 207
    const/4 v1, 0x0

    .local v1, i:I
    :goto_17
    if-ge v1, v0, :cond_3e

    .line 208
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->deleteRow()Z

    .line 209
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->commitUpdates()Z

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 214
    .end local v1           #i:I
    :cond_26
    if-le p1, v0, :cond_29

    .line 215
    move p1, v0

    .line 217
    :cond_29
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2a
    if-ge v1, p1, :cond_3e

    .line 219
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->deleteRow()Z

    .line 220
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->commitUpdates()Z

    .line 221
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 224
    :cond_3e
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 225
    return-void
.end method

.method public doUpdate(I)V
    .registers 14
    .parameter "count"

    .prologue
    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 162
    .local v10, now:J
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/net/Uri;

    iput-object v0, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->urls:[Landroid/net/Uri;

    .line 163
    const/16 v0, 0xa

    new-array v7, v0, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x7b2

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x7b3

    const/4 v2, 0x2

    const/16 v3, 0xd

    const/16 v4, 0x10

    const/16 v5, 0x23

    const/4 v6, 0x3

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    const/4 v8, 0x2

    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x7ba

    const/16 v2, 0xa

    const/16 v3, 0x16

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    const/4 v8, 0x3

    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x7bc

    const/4 v2, 0x1

    const/16 v3, 0xb

    const/16 v4, 0xa

    const/16 v5, 0x16

    const/16 v6, 0x1e

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    const/4 v0, 0x4

    const-wide/32 v1, 0x19bfcc00

    sub-long v1, v10, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x5

    const-wide/32 v1, 0xa4cb800

    sub-long v1, v10, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x6

    const-wide/32 v1, 0x112a880

    sub-long v1, v10, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x7

    const-wide/32 v1, 0x1b7740

    sub-long v1, v10, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    const/16 v0, 0x8

    const-wide/32 v1, 0x493e0

    sub-long v1, v10, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    const/16 v0, 0x9

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    .line 176
    .local v7, dates:[Ljava/lang/String;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 177
    .local v9, map:Landroid/content/ContentValues;
    const-string v0, "address"

    const-string v1, "+15045551337"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v0, "read"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    const/4 v8, 0x0

    .local v8, i:I
    :goto_cf
    iget-object v0, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->urls:[Landroid/net/Uri;

    array-length v0, v0

    if-ge v8, v0, :cond_108

    .line 182
    const-string v0, "body"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Test "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v0, "date"

    aget-object v1, v7, v8

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->urls:[Landroid/net/Uri;

    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v8

    .line 180
    add-int/lit8 v8, v8, 0x1

    goto :goto_cf

    .line 187
    :cond_108
    return-void
.end method

.method public getDBCount()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 191
    sget-object v1, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    .line 192
    .local v1, mUri:Landroid/net/Uri;
    invoke-virtual {p0, v1, v2, v2, v2}, Lcom/lge/hiddenmenu/aging_test/SMSTest;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mCursor:Landroid/database/Cursor;

    .line 193
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 194
    .local v0, count:I
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 195
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/aging_test/SMSTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mContentResolver:Landroid/content/ContentResolver;

    .line 60
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/aging_test/SMSTest;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->intent:Landroid/content/Intent;

    .line 61
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->intent:Landroid/content/Intent;

    const-string v3, "TYPE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->type:I

    .line 62
    iput v4, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mCount:I

    .line 64
    const v2, 0x7f030023

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/SMSTest;->setContentView(I)V

    .line 66
    const v2, 0x7f070082

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/SMSTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mLabel:Landroid/widget/TextView;

    .line 67
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mLabel:Landroid/widget/TextView;

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const v2, 0x7f070083

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/SMSTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mEditText:Landroid/widget/EditText;

    .line 70
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mEditText:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 71
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 72
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mEditText:Landroid/widget/EditText;

    const/high16 v3, 0x41a0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextSize(F)V

    .line 73
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mEditText:Landroid/widget/EditText;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHeight(I)V

    .line 82
    const v2, 0x7f07001a

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/SMSTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mText:Landroid/widget/TextView;

    .line 83
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 84
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mText:Landroid/widget/TextView;

    const/high16 v3, 0x4140

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 85
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mText:Landroid/widget/TextView;

    const v3, -0x550056

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 87
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 89
    const v2, 0x7f070084

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/SMSTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->addButton:Landroid/widget/Button;

    .line 90
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->addButton:Landroid/widget/Button;

    const-string v3, "start"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/SMSTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 93
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v2, 0x7f030003

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 95
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SMSTest;->addButton:Landroid/widget/Button;

    new-instance v3, Lcom/lge/hiddenmenu/aging_test/SMSTest$1;

    invoke-direct {v3, p0}, Lcom/lge/hiddenmenu/aging_test/SMSTest$1;-><init>(Lcom/lge/hiddenmenu/aging_test/SMSTest;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method
