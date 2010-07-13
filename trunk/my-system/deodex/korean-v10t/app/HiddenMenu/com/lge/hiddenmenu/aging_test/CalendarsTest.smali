.class public Lcom/lge/hiddenmenu/aging_test/CalendarsTest;
.super Landroid/app/Activity;
.source "CalendarsTest.java"


# static fields
.field public static final Full:I = 0x0

.field private static final GDATA_AUTHORITY:Ljava/lang/String; = "calendar"

.field private static final MAX_DB_COUNT:I = 0x64

.field public static final SERVICE:Ljava/lang/String; = "cl"

.field static final SUCCESS_COLOR:I = -0x550056

.field public static final Shake:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CalendarsTest"


# instance fields
.field private addButton:Landroid/widget/Button;

.field private cal:I

.field private intent:Landroid/content/Intent;

.field private log:Ljava/lang/String;

.field private mCalendarsURLs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:I

.field private mCursor:Landroid/database/Cursor;

.field private mEditText:Landroid/widget/EditText;

.field private mEventsURLs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLabel:Landroid/widget/TextView;

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

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mResolver:Landroid/content/ContentResolver;

    .line 58
    new-instance v0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/aging_test/CalendarsTest$1;-><init>(Lcom/lge/hiddenmenu/aging_test/CalendarsTest;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mCalendarsURLs:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mEventsURLs:Ljava/util/ArrayList;

    .line 64
    iput v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->cal:I

    .line 65
    iput v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->repeat:I

    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/aging_test/CalendarsTest;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/aging_test/CalendarsTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/lge/hiddenmenu/aging_test/CalendarsTest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/aging_test/CalendarsTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->type:I

    return v0
.end method

.method private scrollToBottom()V
    .registers 5

    .prologue
    .line 292
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 293
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    const/16 v2, 0x15

    sub-int v0, v1, v2

    .line 294
    .local v0, textHeight:I
    if-gez v0, :cond_12

    .line 295
    const/4 v0, 0x0

    .line 296
    :cond_12
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mText:Landroid/widget/TextView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineHeight()I

    move-result v3

    mul-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->scrollTo(II)V

    .line 297
    return-void
.end method


# virtual methods
.method public DB_Fill(I)V
    .registers 10
    .parameter "Full_time"

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x0

    .line 153
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, p1, :cond_5c

    .line 159
    invoke-virtual {p0, v7}, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->doUpdateCalendars(I)V

    .line 160
    invoke-virtual {p0, v7}, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->doUpdateEvents(I)V

    .line 162
    invoke-virtual {p0, v6}, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->doDeleteCalendars(I)V

    .line 163
    invoke-virtual {p0, v6}, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->doDeleteEvents(I)V

    .line 165
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 166
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

    .line 167
    .local v2, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mText:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 168
    const-string v3, "CalendarsTest"

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

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 171
    .end local v0           #c:Ljava/lang/CharSequence;
    .end local v2           #s:Ljava/lang/String;
    :cond_5c
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 172
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

    .line 173
    .restart local v2       #s:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mText:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 174
    invoke-direct {p0}, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->scrollToBottom()V

    .line 175
    return-void
.end method

.method public DB_Shake(I)V
    .registers 8
    .parameter "Shake_time"

    .prologue
    .line 124
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, p1, :cond_70

    .line 130
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->repeat:I

    .line 132
    iget v3, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->repeat:I

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->doUpdateCalendars(I)V

    .line 133
    iget v3, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->repeat:I

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->doUpdateEvents(I)V

    .line 135
    iget v3, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->repeat:I

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->doDeleteCalendars(I)V

    .line 136
    iget v3, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->repeat:I

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->doDeleteEvents(I)V

    .line 138
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 139
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

    .line 140
    .local v2, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mText:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 141
    const-string v3, "CalendarsTest"

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

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 145
    .end local v0           #c:Ljava/lang/CharSequence;
    .end local v2           #s:Ljava/lang/String;
    :cond_70
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 146
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

    .line 147
    .restart local v2       #s:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mText:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 148
    invoke-direct {p0}, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->scrollToBottom()V

    .line 149
    return-void
.end method

.method public doDeleteCalendars(I)V
    .registers 5
    .parameter "count"

    .prologue
    const/4 v2, 0x0

    .line 223
    const-string v1, "content://calendar/calendars"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mUri:Landroid/net/Uri;

    .line 224
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v1, v2, v2, v2}, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mCursor:Landroid/database/Cursor;

    .line 225
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 227
    if-nez p1, :cond_30

    .line 231
    :cond_18
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->deleteRow()Z

    .line 232
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->commitUpdates()Z

    .line 234
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_18

    .line 248
    :cond_2a
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 249
    return-void

    .line 238
    :cond_30
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, p1, :cond_3e

    .line 239
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    .line 241
    :cond_3e
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3f
    if-ge v0, p1, :cond_2a

    .line 243
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->deleteRow()Z

    .line 244
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->commitUpdates()Z

    .line 245
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f
.end method

.method public doDeleteEvents(I)V
    .registers 5
    .parameter "count"

    .prologue
    const/4 v2, 0x0

    .line 253
    const-string v1, "content://calendar/events"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mUri:Landroid/net/Uri;

    .line 254
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v1, v2, v2, v2}, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mCursor:Landroid/database/Cursor;

    .line 255
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 257
    if-nez p1, :cond_30

    .line 261
    :cond_18
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->deleteRow()Z

    .line 262
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->commitUpdates()Z

    .line 264
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_18

    .line 278
    :cond_2a
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 279
    return-void

    .line 268
    :cond_30
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, p1, :cond_3e

    .line 269
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    .line 271
    :cond_3e
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3f
    if-ge v0, p1, :cond_2a

    .line 273
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->deleteRow()Z

    .line 274
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->commitUpdates()Z

    .line 275
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f
.end method

.method public doUpdateCalendars(I)V
    .registers 8
    .parameter "count"

    .prologue
    const-string v5, "Events"

    .line 179
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 180
    .local v1, m:Landroid/content/ContentValues;
    const-string v3, "name"

    const-string v4, "Events"

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v3, "displayName"

    const-string v4, "Events"

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v3, "color"

    const-string v4, "0xff123456"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v3, "timezone"

    const-string v4, "Americal/Los_Angeles"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x1

    .local v0, i:I
    :goto_24
    add-int/lit8 v3, p1, 0x1

    if-ge v0, v3, :cond_50

    .line 188
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "content://calendar/calendars"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 190
    .local v2, url:Landroid/net/Uri;
    if-eqz v2, :cond_48

    .line 191
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mCalendarsURLs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->cal:I

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 193
    :cond_48
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "insert failed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 197
    .end local v2           #url:Landroid/net/Uri;
    :cond_50
    return-void
.end method

.method public doUpdateEvents(I)V
    .registers 8
    .parameter "count"

    .prologue
    .line 202
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 203
    .local v1, m:Landroid/content/ContentValues;
    const-string v3, "calendar_id"

    new-instance v4, Ljava/lang/Integer;

    iget v5, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->cal:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    const-string v3, "title"

    const-string v4, "Lunch with Dad."

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v3, "dtstart"

    const v4, 0x44e37238

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    const-string v3, "duration"

    const-string v4, "PT3H"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/4 v0, 0x1

    .local v0, i:I
    :goto_2c
    add-int/lit8 v3, p1, 0x1

    if-ge v0, v3, :cond_54

    .line 210
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "content://calendar/events"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 211
    .local v2, url:Landroid/net/Uri;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 213
    if-eqz v2, :cond_4c

    .line 214
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mEventsURLs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 216
    :cond_4c
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "insert failed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 219
    .end local v2           #url:Landroid/net/Uri;
    :cond_54
    return-void
.end method

.method public getDBCount()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 283
    const-string v1, "content://calendar/calendars"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mUri:Landroid/net/Uri;

    .line 284
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v1, v2, v2, v2}, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mCursor:Landroid/database/Cursor;

    .line 285
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 286
    .local v0, count:I
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 288
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->intent:Landroid/content/Intent;

    .line 72
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->intent:Landroid/content/Intent;

    const-string v3, "TYPE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->type:I

    .line 73
    iput v4, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mCount:I

    .line 74
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mResolver:Landroid/content/ContentResolver;

    .line 75
    const v2, 0x7f030023

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->setContentView(I)V

    .line 77
    const v2, 0x7f070082

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mLabel:Landroid/widget/TextView;

    .line 78
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mLabel:Landroid/widget/TextView;

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const v2, 0x7f070083

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mEditText:Landroid/widget/EditText;

    .line 81
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mEditText:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 82
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 83
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mEditText:Landroid/widget/EditText;

    const/high16 v3, 0x41a0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextSize(F)V

    .line 84
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mEditText:Landroid/widget/EditText;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHeight(I)V

    .line 93
    const v2, 0x7f07001a

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mText:Landroid/widget/TextView;

    .line 94
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 95
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mText:Landroid/widget/TextView;

    const/high16 v3, 0x4140

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 96
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mText:Landroid/widget/TextView;

    const v3, -0x550056

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 98
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 100
    const v2, 0x7f070084

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->addButton:Landroid/widget/Button;

    .line 101
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->addButton:Landroid/widget/Button;

    const-string v3, "start"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 104
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v2, 0x7f030003

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 106
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/CalendarsTest;->addButton:Landroid/widget/Button;

    new-instance v3, Lcom/lge/hiddenmenu/aging_test/CalendarsTest$2;

    invoke-direct {v3, p0}, Lcom/lge/hiddenmenu/aging_test/CalendarsTest$2;-><init>(Lcom/lge/hiddenmenu/aging_test/CalendarsTest;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method
