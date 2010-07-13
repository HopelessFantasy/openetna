.class public Lcom/lge/hiddenmenu/aging_test/AlarmTest;
.super Landroid/app/Activity;
.source "AlarmTest.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final Full:I = 0x0

.field private static final MAX_DB_COUNT:I = 0x2

.field static final SUCCESS_COLOR:I = -0x550056

.field public static final Shake:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AlarmTest"

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

.field private repeat:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 40
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "hour"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "minutes"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "daysofweek"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "message"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "alert"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->sProjection:[Ljava/lang/String;

    .line 53
    const-string v0, "content://com.google.android.alarmclock/alarm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mResolver:Landroid/content/ContentResolver;

    .line 63
    new-instance v0, Lcom/lge/hiddenmenu/aging_test/AlarmTest$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/aging_test/AlarmTest$1;-><init>(Lcom/lge/hiddenmenu/aging_test/AlarmTest;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mHandler:Landroid/os/Handler;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->repeat:I

    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/aging_test/AlarmTest;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/aging_test/AlarmTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/lge/hiddenmenu/aging_test/AlarmTest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/aging_test/AlarmTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->type:I

    return v0
.end method

.method private scrollToBottom()V
    .registers 5

    .prologue
    .line 187
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 188
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    const/16 v2, 0x15

    sub-int v0, v1, v2

    .line 189
    .local v0, textHeight:I
    if-gez v0, :cond_12

    .line 190
    const/4 v0, 0x0

    .line 191
    :cond_12
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mText:Landroid/widget/TextView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineHeight()I

    move-result v3

    mul-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->scrollTo(II)V

    .line 192
    return-void
.end method


# virtual methods
.method public DB_Fill(I)V
    .registers 8
    .parameter "Full_time"

    .prologue
    .line 150
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, p1, :cond_2d

    .line 153
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->doUpdate(I)V

    .line 154
    const-string v3, "AlarmTest"

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

    .line 156
    :cond_2d
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mText:Landroid/widget/TextView;

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

    const-string v4, "DB Full completed!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mText:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 159
    invoke-direct {p0}, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->scrollToBottom()V

    .line 160
    return-void
.end method

.method public DB_Shake(I)V
    .registers 8
    .parameter "Shake_time"

    .prologue
    .line 126
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, p1, :cond_60

    .line 132
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->repeat:I

    .line 134
    iget v3, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->repeat:I

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->doUpdate(I)V

    .line 136
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 137
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

    .line 138
    .local v2, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mText:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 139
    const-string v3, "AlarmTest"

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

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 142
    .end local v0           #c:Ljava/lang/CharSequence;
    .end local v2           #s:Ljava/lang/String;
    :cond_60
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 143
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

    .line 144
    .restart local v2       #s:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mText:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 145
    invoke-direct {p0}, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->scrollToBottom()V

    .line 146
    return-void
.end method

.method public doUpdate(I)V
    .registers 12
    .parameter "count"

    .prologue
    const/4 v8, 0x0

    const-string v9, "message"

    .line 168
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .line 169
    .local v1, mHour:I
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 171
    .local v2, mMinutes:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1e
    add-int/lit8 v4, p1, 0x1

    if-ge v0, v4, :cond_68

    .line 173
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 175
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "enabled"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    const-string v4, "hour"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    const-string v4, "minutes"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 178
    const-string v4, "daysofweek"

    const-string v5, "Thu"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v4, "message"

    const-string v4, "message"

    invoke-virtual {v3, v9, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v4, "alert"

    const-string v5, "Alert"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v4, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v6, v0

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v3, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 184
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_68
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mResolver:Landroid/content/ContentResolver;

    .line 75
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->intent:Landroid/content/Intent;

    .line 76
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->intent:Landroid/content/Intent;

    const-string v3, "TYPE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->type:I

    .line 77
    iput v4, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mCount:I

    .line 79
    const v2, 0x7f030023

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->setContentView(I)V

    .line 81
    const v2, 0x7f070082

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mLabel:Landroid/widget/TextView;

    .line 82
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mLabel:Landroid/widget/TextView;

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const v2, 0x7f070083

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mEditText:Landroid/widget/EditText;

    .line 85
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mEditText:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 86
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 87
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mEditText:Landroid/widget/EditText;

    const/high16 v3, 0x4170

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextSize(F)V

    .line 88
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mEditText:Landroid/widget/EditText;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHeight(I)V

    .line 97
    const v2, 0x7f07001a

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mText:Landroid/widget/TextView;

    .line 98
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 99
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mText:Landroid/widget/TextView;

    const/high16 v3, 0x4140

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 100
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mText:Landroid/widget/TextView;

    const v3, -0x550056

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 102
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 104
    const v2, 0x7f070084

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->addButton:Landroid/widget/Button;

    .line 105
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->addButton:Landroid/widget/Button;

    const-string v3, "start"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 108
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v2, 0x7f030003

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 110
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/AlarmTest;->addButton:Landroid/widget/Button;

    new-instance v3, Lcom/lge/hiddenmenu/aging_test/AlarmTest$2;

    invoke-direct {v3, p0}, Lcom/lge/hiddenmenu/aging_test/AlarmTest$2;-><init>(Lcom/lge/hiddenmenu/aging_test/AlarmTest;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    return-void
.end method
