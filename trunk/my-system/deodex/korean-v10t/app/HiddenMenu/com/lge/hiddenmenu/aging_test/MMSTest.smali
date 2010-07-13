.class public Lcom/lge/hiddenmenu/aging_test/MMSTest;
.super Landroid/app/Activity;
.source "MMSTest.java"


# static fields
.field public static final Full:I = 0x0

.field private static final MAX_DB_COUNT:I = 0xc8

.field static final SUCCESS_COLOR:I = -0x550056

.field public static final Shake:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MMSTest"


# instance fields
.field private addButton:Landroid/widget/Button;

.field private intent:Landroid/content/Intent;

.field private log:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field private mCount:I

.field private mCursor:Landroid/database/Cursor;

.field private mEditText:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field protected mInboxMsgAddrUri:Landroid/net/Uri;

.field protected mInboxMsgPartsUri:Landroid/net/Uri;

.field protected mInboxMsgUri:Landroid/net/Uri;

.field private mLabel:Landroid/widget/TextView;

.field protected mMsgs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mParts:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mResolver:Landroid/content/ContentResolver;

.field private mText:Landroid/widget/TextView;

.field private mUri:Landroid/net/Uri;

.field private repeat:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mContext:Landroid/content/Context;

    .line 46
    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mResolver:Landroid/content/ContentResolver;

    .line 56
    new-instance v0, Lcom/lge/hiddenmenu/aging_test/MMSTest$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/aging_test/MMSTest$1;-><init>(Lcom/lge/hiddenmenu/aging_test/MMSTest;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mMsgs:Ljava/util/Vector;

    .line 63
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mParts:Ljava/util/Vector;

    .line 65
    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mInboxMsgUri:Landroid/net/Uri;

    .line 66
    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mInboxMsgPartsUri:Landroid/net/Uri;

    .line 67
    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mInboxMsgAddrUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/aging_test/MMSTest;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/aging_test/MMSTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/lge/hiddenmenu/aging_test/MMSTest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/aging_test/MMSTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->type:I

    return v0
.end method

.method private scrollToBottom()V
    .registers 5

    .prologue
    .line 276
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 277
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    const/16 v2, 0x15

    sub-int v0, v1, v2

    .line 278
    .local v0, textHeight:I
    if-gez v0, :cond_12

    .line 279
    const/4 v0, 0x0

    .line 280
    :cond_12
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mText:Landroid/widget/TextView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineHeight()I

    move-result v3

    mul-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->scrollTo(II)V

    .line 281
    return-void
.end method


# virtual methods
.method public DB_Fill(I)V
    .registers 9
    .parameter "Full_time"

    .prologue
    const/4 v6, 0x0

    .line 156
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, p1, :cond_91

    .line 162
    const/16 v3, 0xc8

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/aging_test/MMSTest;->doUpdate(I)V

    .line 163
    sget-object v3, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v6, v3}, Lcom/lge/hiddenmenu/aging_test/MMSTest;->doDelete(ILandroid/net/Uri;)V

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mInboxMsgUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/addr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v6, v3}, Lcom/lge/hiddenmenu/aging_test/MMSTest;->doDelete(ILandroid/net/Uri;)V

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mInboxMsgUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/part"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v6, v3}, Lcom/lge/hiddenmenu/aging_test/MMSTest;->doDelete(ILandroid/net/Uri;)V

    .line 167
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 168
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

    .line 169
    .local v2, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mText:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 170
    const-string v3, "MMSTest"

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

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    .line 173
    .end local v0           #c:Ljava/lang/CharSequence;
    .end local v2           #s:Ljava/lang/String;
    :cond_91
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 174
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

    .line 175
    .restart local v2       #s:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mText:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 176
    invoke-direct {p0}, Lcom/lge/hiddenmenu/aging_test/MMSTest;->scrollToBottom()V

    .line 177
    return-void
.end method

.method public DB_Shake(I)V
    .registers 8
    .parameter "Shake_time"

    .prologue
    .line 128
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, p1, :cond_a5

    .line 134
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->repeat:I

    .line 136
    iget v3, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->repeat:I

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/aging_test/MMSTest;->doUpdate(I)V

    .line 137
    iget v3, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->repeat:I

    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v4}, Lcom/lge/hiddenmenu/aging_test/MMSTest;->doDelete(ILandroid/net/Uri;)V

    .line 138
    iget v3, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->repeat:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mInboxMsgUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/addr"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/lge/hiddenmenu/aging_test/MMSTest;->doDelete(ILandroid/net/Uri;)V

    .line 139
    iget v3, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->repeat:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mInboxMsgUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/part"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/lge/hiddenmenu/aging_test/MMSTest;->doDelete(ILandroid/net/Uri;)V

    .line 141
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 142
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

    .line 143
    .local v2, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mText:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 145
    const-string v3, "MMSTest"

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

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    .line 148
    .end local v0           #c:Ljava/lang/CharSequence;
    .end local v2           #s:Ljava/lang/String;
    :cond_a5
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 149
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

    .line 150
    .restart local v2       #s:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mText:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 151
    invoke-direct {p0}, Lcom/lge/hiddenmenu/aging_test/MMSTest;->scrollToBottom()V

    .line 152
    return-void
.end method

.method public doDelete(ILandroid/net/Uri;)V
    .registers 5
    .parameter "count"
    .parameter "mUri"

    .prologue
    const/4 v1, 0x0

    .line 238
    invoke-virtual {p0, p2, v1, v1, v1}, Lcom/lge/hiddenmenu/aging_test/MMSTest;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mCursor:Landroid/database/Cursor;

    .line 239
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 241
    if-nez p1, :cond_26

    .line 245
    :cond_e
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->deleteRow()Z

    .line 246
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->commitUpdates()Z

    .line 248
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_e

    .line 262
    :cond_20
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 263
    return-void

    .line 252
    :cond_26
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, p1, :cond_34

    .line 253
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    .line 255
    :cond_34
    const/4 v0, 0x0

    .local v0, i:I
    :goto_35
    if-ge v0, p1, :cond_20

    .line 257
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->deleteRow()Z

    .line 258
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->commitUpdates()Z

    .line 259
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_35
.end method

.method public doUpdate(I)V
    .registers 15
    .parameter "count"

    .prologue
    const/16 v8, 0x6a

    const/4 v9, 0x3

    const-string v12, "type"

    const-string v11, "charset"

    const-string v10, "address"

    .line 181
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    const/16 v7, 0xc8

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    .line 183
    .local v4, repeat:I
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/aging_test/MMSTest;->getInboxDBCount()I

    move-result v6

    const/16 v7, 0xc8

    if-lt v6, v7, :cond_1f

    .line 234
    :cond_1e
    return-void

    .line 187
    :cond_1f
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 188
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "v"

    const/16 v7, 0x13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    const-string v6, "m_type"

    const/16 v7, 0x84

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    const-string v6, "msg_box"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    const-string v6, "sub"

    const-string v7, "SUBJECT_4_UNIT_TEST"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v6, "sub_cs"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    iget-object v6, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mInboxMsgUri:Landroid/net/Uri;

    .line 195
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mInboxMsgUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/addr"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mInboxMsgAddrUri:Landroid/net/Uri;

    .line 196
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mInboxMsgUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/part"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mInboxMsgPartsUri:Landroid/net/Uri;

    .line 197
    iget-object v6, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mInboxMsgUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 198
    .local v1, id:Ljava/lang/Long;
    iget-object v6, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mMsgs:Ljava/util/Vector;

    invoke-virtual {v6, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v5, Landroid/content/ContentValues;

    .end local v5           #values:Landroid/content/ContentValues;
    invoke-direct {v5, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 202
    .restart local v5       #values:Landroid/content/ContentValues;
    const-string v6, "address"

    const-string v6, "111111"

    invoke-virtual {v5, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v6, "charset"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    const-string v6, "type"

    const/16 v6, 0x89

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    iget-object v6, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mResolver:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mInboxMsgAddrUri:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 207
    new-instance v5, Landroid/content/ContentValues;

    .end local v5           #values:Landroid/content/ContentValues;
    invoke-direct {v5, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 208
    .restart local v5       #values:Landroid/content/ContentValues;
    const-string v6, "address"

    const-string v6, "222222"

    invoke-virtual {v5, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v6, "charset"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    const-string v6, "type"

    const/16 v6, 0x97

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    iget-object v6, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mResolver:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mInboxMsgAddrUri:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 212
    new-instance v5, Landroid/content/ContentValues;

    .end local v5           #values:Landroid/content/ContentValues;
    invoke-direct {v5, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 213
    .restart local v5       #values:Landroid/content/ContentValues;
    const-string v6, "address"

    const-string v6, "333333"

    invoke-virtual {v5, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v6, "charset"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    const-string v6, "type"

    const/16 v6, 0x97

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    iget-object v6, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mResolver:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mInboxMsgAddrUri:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 218
    new-instance v5, Landroid/content/ContentValues;

    .end local v5           #values:Landroid/content/ContentValues;
    invoke-direct {v5, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 219
    .restart local v5       #values:Landroid/content/ContentValues;
    const-string v6, "address"

    const-string v6, ""

    invoke-virtual {v5, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v6, "charset"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    const-string v6, "type"

    const/16 v6, 0x82

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    iget-object v6, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mResolver:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mInboxMsgAddrUri:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 225
    const/4 v0, 0x0

    .local v0, i:I
    :goto_149
    if-ge v0, v9, :cond_1e

    .line 226
    new-instance v5, Landroid/content/ContentValues;

    .end local v5           #values:Landroid/content/ContentValues;
    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 227
    .restart local v5       #values:Landroid/content/ContentValues;
    const-string v6, "seq"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    const-string v6, "ct"

    const-string v7, "image/jpeg"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v6, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mResolver:Landroid/content/ContentResolver;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mInboxMsgUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/part"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 231
    .local v3, partUri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 232
    .local v2, partId:Ljava/lang/Long;
    iget-object v6, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mParts:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_149
.end method

.method public getInboxDBCount()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 267
    sget-object v1, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mUri:Landroid/net/Uri;

    .line 268
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v1, v2, v2, v2}, Lcom/lge/hiddenmenu/aging_test/MMSTest;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mCursor:Landroid/database/Cursor;

    .line 269
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 270
    .local v0, count:I
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 272
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/aging_test/MMSTest;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->intent:Landroid/content/Intent;

    .line 76
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->intent:Landroid/content/Intent;

    const-string v3, "TYPE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->type:I

    .line 77
    iput v4, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mCount:I

    .line 78
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/aging_test/MMSTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mResolver:Landroid/content/ContentResolver;

    .line 80
    const v2, 0x7f030023

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/MMSTest;->setContentView(I)V

    .line 82
    const v2, 0x7f070082

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/MMSTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mLabel:Landroid/widget/TextView;

    .line 83
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mLabel:Landroid/widget/TextView;

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const v2, 0x7f070083

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/MMSTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mEditText:Landroid/widget/EditText;

    .line 86
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mEditText:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 87
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 88
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mEditText:Landroid/widget/EditText;

    const/high16 v3, 0x41a0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextSize(F)V

    .line 89
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mEditText:Landroid/widget/EditText;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHeight(I)V

    .line 98
    const v2, 0x7f07001a

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/MMSTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mText:Landroid/widget/TextView;

    .line 99
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 100
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mText:Landroid/widget/TextView;

    const/high16 v3, 0x4140

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 101
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mText:Landroid/widget/TextView;

    const v3, -0x550056

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 103
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 105
    const v2, 0x7f070084

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/MMSTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->addButton:Landroid/widget/Button;

    .line 106
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->addButton:Landroid/widget/Button;

    const-string v3, "start"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/MMSTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 109
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v2, 0x7f030003

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 111
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/MMSTest;->addButton:Landroid/widget/Button;

    new-instance v3, Lcom/lge/hiddenmenu/aging_test/MMSTest$2;

    invoke-direct {v3, p0}, Lcom/lge/hiddenmenu/aging_test/MMSTest$2;-><init>(Lcom/lge/hiddenmenu/aging_test/MMSTest;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    return-void
.end method
