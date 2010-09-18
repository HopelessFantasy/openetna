.class public Lcom/lge/hiddenmenu/aging_test/SettingsTest;
.super Landroid/app/Activity;
.source "SettingsTest.java"


# static fields
.field private static final Bluetooth_Device_CONTENT_URI:Landroid/net/Uri; = null

.field public static final Full:I = 0x0

.field private static final MAX_Bluetooth_Devices_DB_COUNT:I = 0x32

.field private static final MAX_Bookmarks_DB_COUNT:I = 0x32

.field private static final MAX_Gservices_DB_COUNT:I = 0x32

.field private static final MAX_System_DB_COUNT:I = 0x32

.field static final SUCCESS_COLOR:I = -0x550056

.field public static final Shake:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SettingsTest"

.field private static final bluetooth_devices_sProjection:[Ljava/lang/String;

.field private static final bookmarks_sProjection:[Ljava/lang/String;

.field private static final gservices_sProjection:[Ljava/lang/String;

.field private static final system_sProjection:[Ljava/lang/String;


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
    .registers 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "_id"

    .line 37
    const-string v0, "content://settings/bluetooth_devices"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->Bluetooth_Device_CONTENT_URI:Landroid/net/Uri;

    .line 42
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v7, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "value"

    aput-object v1, v0, v5

    sput-object v0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->system_sProjection:[Ljava/lang/String;

    .line 48
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v7, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "folder"

    aput-object v1, v0, v5

    const-string v1, "intent"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "shortcut"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ordering"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->bookmarks_sProjection:[Ljava/lang/String;

    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v7, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "addr"

    aput-object v1, v0, v5

    const-string v1, "channel"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->bluetooth_devices_sProjection:[Ljava/lang/String;

    .line 73
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v7, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "value"

    aput-object v1, v0, v5

    sput-object v0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->gservices_sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    new-instance v0, Lcom/lge/hiddenmenu/aging_test/SettingsTest$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/aging_test/SettingsTest$1;-><init>(Lcom/lge/hiddenmenu/aging_test/SettingsTest;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/aging_test/SettingsTest;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/aging_test/SettingsTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/lge/hiddenmenu/aging_test/SettingsTest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/aging_test/SettingsTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->type:I

    return v0
.end method

.method private scrollToBottom()V
    .registers 5

    .prologue
    .line 530
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 531
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    const/16 v2, 0x15

    sub-int v0, v1, v2

    .line 532
    .local v0, textHeight:I
    if-gez v0, :cond_12

    .line 533
    const/4 v0, 0x0

    .line 534
    :cond_12
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mText:Landroid/widget/TextView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineHeight()I

    move-result v3

    mul-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->scrollTo(II)V

    .line 535
    return-void
.end method


# virtual methods
.method public DB_Fill(I)V
    .registers 10
    .parameter "Full_time"

    .prologue
    const/16 v7, 0x32

    const/4 v6, 0x0

    .line 193
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, p1, :cond_68

    .line 199
    invoke-virtual {p0, v7}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->doInsert_System(I)V

    .line 200
    invoke-virtual {p0, v6}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->doDelete_System(I)V

    .line 202
    invoke-virtual {p0, v7}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->doInsert_Gservices(I)V

    .line 203
    invoke-virtual {p0, v6}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->doDelete_Gservices(I)V

    .line 205
    invoke-virtual {p0, v7}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->doInsert_Bookmarks(I)V

    .line 206
    invoke-virtual {p0, v6}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->doDelete_Bookmarks(I)V

    .line 212
    invoke-virtual {p0, v7}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->doInsert_Bluetooth_Devices(I)V

    .line 213
    invoke-virtual {p0, v6}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->doDelete_Bluetooth_Device(I)V

    .line 215
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 216
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

    .line 217
    .local v2, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mText:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 218
    const-string v3, "SettingsTest"

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

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 221
    .end local v0           #c:Ljava/lang/CharSequence;
    .end local v2           #s:Ljava/lang/String;
    :cond_68
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 222
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

    .line 223
    .restart local v2       #s:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mText:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 224
    invoke-direct {p0}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->scrollToBottom()V

    .line 225
    return-void
.end method

.method public DB_Shake(I)V
    .registers 9
    .parameter "Shake_time"

    .prologue
    const/16 v6, 0x32

    .line 150
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, p1, :cond_ac

    .line 157
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->repeat:I

    .line 158
    iget v3, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->repeat:I

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->doInsert_System(I)V

    .line 159
    iget v3, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->repeat:I

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->doDelete_System(I)V

    .line 161
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->repeat:I

    .line 162
    iget v3, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->repeat:I

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->doInsert_Gservices(I)V

    .line 163
    iget v3, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->repeat:I

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->doDelete_Gservices(I)V

    .line 165
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->repeat:I

    .line 166
    iget v3, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->repeat:I

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->doInsert_Bookmarks(I)V

    .line 167
    iget v3, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->repeat:I

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->doDelete_Bookmarks(I)V

    .line 174
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->repeat:I

    .line 175
    iget v3, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->repeat:I

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->doInsert_Bluetooth_Devices(I)V

    .line 176
    iget v3, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->repeat:I

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->doDelete_Bluetooth_Device(I)V

    .line 178
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 179
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

    .line 180
    .local v2, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mText:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 182
    const-string v3, "SettingsTest"

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

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    .line 185
    .end local v0           #c:Ljava/lang/CharSequence;
    .end local v2           #s:Ljava/lang/String;
    :cond_ac
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 186
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

    .line 187
    .restart local v2       #s:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mText:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 188
    invoke-direct {p0}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->scrollToBottom()V

    .line 189
    return-void
.end method

.method public doDeleteAll()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 472
    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->doDelete_System(I)V

    .line 473
    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->doDelete_Gservices(I)V

    .line 474
    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->doDelete_Bluetooth_Device(I)V

    .line 476
    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->doDelete_Bookmarks(I)V

    .line 477
    return-void
.end method

.method public doDelete_Bluetooth_Device(I)V
    .registers 6
    .parameter "count"

    .prologue
    const/4 v3, 0x0

    .line 438
    sget-object v1, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->Bluetooth_Device_CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mUri:Landroid/net/Uri;

    .line 439
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->bluetooth_devices_sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    .line 441
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_14

    .line 468
    :goto_13
    return-void

    .line 444
    :cond_14
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 446
    if-nez p1, :cond_33

    .line 450
    :cond_1b
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->deleteRow()Z

    .line 451
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->commitUpdates()Z

    .line 453
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 467
    :cond_2d
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_13

    .line 457
    :cond_33
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, p1, :cond_41

    .line 458
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    .line 460
    :cond_41
    const/4 v0, 0x0

    .local v0, i:I
    :goto_42
    if-ge v0, p1, :cond_2d

    .line 462
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->deleteRow()Z

    .line 463
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->commitUpdates()Z

    .line 464
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 460
    add-int/lit8 v0, v0, 0x1

    goto :goto_42
.end method

.method public doDelete_Bookmarks(I)V
    .registers 6
    .parameter "count"

    .prologue
    const/4 v3, 0x0

    .line 404
    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mUri:Landroid/net/Uri;

    .line 405
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->bookmarks_sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    .line 407
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_14

    .line 434
    :goto_13
    return-void

    .line 410
    :cond_14
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 412
    if-nez p1, :cond_33

    .line 416
    :cond_1b
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->deleteRow()Z

    .line 417
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->commitUpdates()Z

    .line 419
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 433
    :cond_2d
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_13

    .line 423
    :cond_33
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, p1, :cond_41

    .line 424
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    .line 426
    :cond_41
    const/4 v0, 0x0

    .local v0, i:I
    :goto_42
    if-ge v0, p1, :cond_2d

    .line 428
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->deleteRow()Z

    .line 429
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->commitUpdates()Z

    .line 430
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_42
.end method

.method public doDelete_Gservices(I)V
    .registers 6
    .parameter "count"

    .prologue
    const/4 v3, 0x0

    .line 344
    sget-object v1, Landroid/provider/Settings$Gservices;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mUri:Landroid/net/Uri;

    .line 345
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->gservices_sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    .line 346
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 348
    if-nez p1, :cond_2e

    .line 352
    :cond_16
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->deleteRow()Z

    .line 353
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->commitUpdates()Z

    .line 355
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_16

    .line 369
    :cond_28
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 370
    return-void

    .line 359
    :cond_2e
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, p1, :cond_3c

    .line 360
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    .line 362
    :cond_3c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3d
    if-ge v0, p1, :cond_28

    .line 364
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->deleteRow()Z

    .line 365
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->commitUpdates()Z

    .line 366
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d
.end method

.method public doDelete_System(I)V
    .registers 6
    .parameter "count"

    .prologue
    const/4 v3, 0x0

    .line 314
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mUri:Landroid/net/Uri;

    .line 315
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->system_sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    .line 316
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 318
    if-nez p1, :cond_2e

    .line 322
    :cond_16
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->deleteRow()Z

    .line 323
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->commitUpdates()Z

    .line 325
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_16

    .line 339
    :cond_28
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 340
    return-void

    .line 329
    :cond_2e
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, p1, :cond_3c

    .line 330
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    .line 332
    :cond_3c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3d
    if-ge v0, p1, :cond_28

    .line 334
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->deleteRow()Z

    .line 335
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->commitUpdates()Z

    .line 336
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d
.end method

.method public doInsert_Bluetooth_Devices(I)V
    .registers 9
    .parameter "count"

    .prologue
    const-string v6, "type"

    const-string v5, "addr"

    .line 296
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 297
    .local v0, bluetooth_device_map:Landroid/content/ContentValues;
    const-string v3, "name"

    const-string v4, "device"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v3, "addr"

    const-string v3, "addr"

    invoke-virtual {v0, v5, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v3, "channel"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 300
    const-string v3, "type"

    const-string v3, "type"

    invoke-virtual {v0, v6, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->getDBCount_Bluetooth_Device()I

    move-result v3

    const/16 v4, 0x32

    if-ne v3, v4, :cond_31

    .line 310
    :cond_30
    return-void

    .line 305
    :cond_31
    const/4 v1, 0x1

    .local v1, i:I
    :goto_32
    add-int/lit8 v3, p1, 0x1

    if-ge v1, v3, :cond_30

    .line 306
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->Bluetooth_Device_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 307
    .local v2, result:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_32
.end method

.method public doInsert_Bookmarks(I)V
    .registers 10
    .parameter "count"

    .prologue
    const/4 v5, 0x1

    const-string v7, "title"

    const-string v6, "intent"

    const-string v4, "folder"

    .line 260
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 261
    .local v0, bookmarks_map:Landroid/content/ContentValues;
    const-string v3, "title"

    const-string v3, "title"

    invoke-virtual {v0, v7, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v3, "folder"

    const-string v3, "folder"

    invoke-virtual {v0, v4, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v3, "intent"

    const-string v3, "intent"

    invoke-virtual {v0, v6, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v3, "shortcut"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 265
    const-string v3, "ordering"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 268
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->getDBCount_Bookmarks()I

    move-result v3

    const/16 v4, 0x32

    if-ne v3, v4, :cond_3c

    .line 275
    :cond_3b
    return-void

    .line 271
    :cond_3c
    const/4 v1, 0x1

    .local v1, i:I
    :goto_3d
    add-int/lit8 v3, p1, 0x1

    if-ge v1, v3, :cond_3b

    .line 272
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 273
    .local v2, result:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d
.end method

.method public doInsert_Gservices(I)V
    .registers 8
    .parameter "count"

    .prologue
    const-string v5, "value"

    const-string v4, "name"

    .line 245
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 246
    .local v0, gservices_map:Landroid/content/ContentValues;
    const-string v3, "name"

    const-string v3, "name"

    invoke-virtual {v0, v4, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v3, "value"

    const-string v3, "value"

    invoke-virtual {v0, v5, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->getDBCount_Gservices()I

    move-result v3

    const/16 v4, 0x32

    if-ne v3, v4, :cond_20

    .line 256
    :cond_1f
    return-void

    .line 252
    :cond_20
    const/4 v1, 0x1

    .local v1, i:I
    :goto_21
    add-int/lit8 v3, p1, 0x1

    if-ge v1, v3, :cond_1f

    .line 253
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Settings$Gservices;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 254
    .local v2, result:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_21
.end method

.method public doInsert_System(I)V
    .registers 10
    .parameter "count"

    .prologue
    const-string v7, "value"

    .line 229
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->getDBCount_System()I

    move-result v3

    const/16 v4, 0x32

    if-ne v3, v4, :cond_b

    .line 241
    :cond_a
    return-void

    .line 232
    :cond_b
    const/4 v0, 0x1

    .local v0, i:I
    :goto_c
    add-int/lit8 v3, p1, 0x1

    if-ge v0, v3, :cond_a

    .line 234
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 235
    .local v2, system_map:Landroid/content/ContentValues;
    const-string v3, "name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v3, "value"

    const-string v3, "value"

    invoke-virtual {v2, v7, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 239
    .local v1, result:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public getDBCount_Bluetooth_Device()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 501
    sget-object v1, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->Bluetooth_Device_CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mUri:Landroid/net/Uri;

    .line 502
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->bluetooth_devices_sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    .line 503
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 504
    .local v0, count:I
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 506
    return v0
.end method

.method public getDBCount_Bookmarks()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 521
    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mUri:Landroid/net/Uri;

    .line 522
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->bookmarks_sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    .line 523
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 524
    .local v0, count:I
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 526
    return v0
.end method

.method public getDBCount_Gservices()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 491
    sget-object v1, Landroid/provider/Settings$Gservices;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mUri:Landroid/net/Uri;

    .line 492
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->gservices_sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    .line 493
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 494
    .local v0, count:I
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 496
    return v0
.end method

.method public getDBCount_System()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 481
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mUri:Landroid/net/Uri;

    .line 482
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->system_sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    .line 483
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 484
    .local v0, count:I
    iget-object v1, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 486
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->intent:Landroid/content/Intent;

    .line 99
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->intent:Landroid/content/Intent;

    const-string v3, "TYPE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->type:I

    .line 100
    iput v4, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mCount:I

    .line 102
    const v2, 0x7f030023

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->setContentView(I)V

    .line 104
    const v2, 0x7f070082

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mLabel:Landroid/widget/TextView;

    .line 105
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mLabel:Landroid/widget/TextView;

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const v2, 0x7f070083

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mEditText:Landroid/widget/EditText;

    .line 108
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mEditText:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 109
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 110
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mEditText:Landroid/widget/EditText;

    const/high16 v3, 0x41a0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextSize(F)V

    .line 111
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mEditText:Landroid/widget/EditText;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHeight(I)V

    .line 120
    const v2, 0x7f07001a

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mText:Landroid/widget/TextView;

    .line 121
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 122
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mText:Landroid/widget/TextView;

    const/high16 v3, 0x4140

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 123
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mText:Landroid/widget/TextView;

    const v3, -0x550056

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 125
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 127
    const v2, 0x7f070084

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->addButton:Landroid/widget/Button;

    .line 128
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->addButton:Landroid/widget/Button;

    const-string v3, "start"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 130
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 131
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v2, 0x7f030003

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 133
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/lge/hiddenmenu/aging_test/SettingsTest;->addButton:Landroid/widget/Button;

    new-instance v3, Lcom/lge/hiddenmenu/aging_test/SettingsTest$2;

    invoke-direct {v3, p0}, Lcom/lge/hiddenmenu/aging_test/SettingsTest$2;-><init>(Lcom/lge/hiddenmenu/aging_test/SettingsTest;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-void
.end method
