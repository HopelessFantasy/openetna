.class public abstract Landroid/text/method/MetaKeyKeyListener;
.super Ljava/lang/Object;
.source "MetaKeyKeyListener.java"


# static fields
.field private static final ALT:Ljava/lang/Object; = null

.field private static final CAP:Ljava/lang/Object; = null

.field private static final LOCKED:I = 0x4000011

.field private static final LOCKED_SHIFT:I = 0x8

.field public static final META_ALT_LOCKED:I = 0x200

.field private static final META_ALT_MASK:J = 0x20202000202L

.field public static final META_ALT_ON:I = 0x2

.field private static final META_ALT_PRESSED:J = 0x200000000L

.field private static final META_ALT_RELEASED:J = 0x20000000000L

.field private static final META_ALT_USED:J = 0x2000000L

.field public static final META_CAP_LOCKED:I = 0x100

.field private static final META_CAP_PRESSED:J = 0x100000000L

.field private static final META_CAP_RELEASED:J = 0x10000000000L

.field private static final META_CAP_USED:J = 0x1000000L

.field public static final META_SELECTING:I = 0x10000

.field private static final META_SHIFT_MASK:J = 0x10101000101L

.field public static final META_SHIFT_ON:I = 0x1

.field public static final META_SYM_LOCKED:I = 0x400

.field private static final META_SYM_MASK:J = 0x40404000404L

.field public static final META_SYM_ON:I = 0x4

.field private static final META_SYM_PRESSED:J = 0x400000000L

.field private static final META_SYM_RELEASED:J = 0x40000000000L

.field private static final META_SYM_USED:J = 0x4000000L

.field private static final PRESSED:I = 0x1000011

.field private static final PRESSED_SHIFT:I = 0x20

.field private static final RELEASED:I = 0x2000011

.field private static final RELEASED_SHIFT:I = 0x28

.field private static final SELECTING:Ljava/lang/Object; = null

.field private static final SHIFT_KEY_SYS_FILE:Ljava/lang/String; = "/sys/devices/platform/android-keyled/shift"

.field private static final SYM:Ljava/lang/Object; = null

.field private static final USED:I = 0x3000011

.field private static final USED_SHIFT:I = 0x18

.field private static iShiftLocked:I

.field private static isShiftKeyDownNnotKeyUp:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 85
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    .line 86
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    .line 87
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    .line 88
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    .line 93
    sput v1, Landroid/text/method/MetaKeyKeyListener;->iShiftLocked:I

    .line 94
    sput v1, Landroid/text/method/MetaKeyKeyListener;->isShiftKeyDownNnotKeyUp:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method public static WriteShiftKeyState(I)V
    .registers 6
    .parameter "state"

    .prologue
    .line 99
    const/4 v3, 0x1

    if-ne p0, v3, :cond_1b

    .line 100
    const-string v0, "1"

    .line 105
    .local v0, data:Ljava/lang/String;
    :goto_5
    :try_start_5
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/sys/devices/platform/android-keyled/shift"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 106
    .local v2, f_writer:Ljava/io/BufferedWriter;
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 107
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1a} :catch_1e

    .line 113
    .end local v2           #f_writer:Ljava/io/BufferedWriter;
    :goto_1a
    return-void

    .line 102
    .end local v0           #data:Ljava/lang/String;
    :cond_1b
    const-string v0, "0"

    .restart local v0       #data:Ljava/lang/String;
    goto :goto_5

    .line 109
    :catch_1e
    move-exception v3

    move-object v1, v3

    .line 111
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a
.end method

.method private static adjust(JIJ)J
    .registers 12
    .parameter "state"
    .parameter "what"
    .parameter "mask"

    .prologue
    const-wide/16 v5, 0x0

    const-wide/16 v3, -0x1

    .line 496
    int-to-long v0, p2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    cmp-long v0, v0, v5

    if-eqz v0, :cond_18

    .line 497
    xor-long v0, p3, v3

    and-long/2addr v0, p0

    int-to-long v2, p2

    or-long/2addr v0, v2

    int-to-long v2, p2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 500
    :goto_17
    return-wide v0

    .line 498
    :cond_18
    int-to-long v0, p2

    const/16 v2, 0x28

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    cmp-long v0, v0, v5

    if-eqz v0, :cond_25

    .line 499
    xor-long v0, p3, v3

    and-long/2addr v0, p0

    goto :goto_17

    :cond_25
    move-wide v0, p0

    .line 500
    goto :goto_17
.end method

.method private static adjust(Landroid/text/Spannable;Ljava/lang/Object;)V
    .registers 5
    .parameter "content"
    .parameter "what"

    .prologue
    const/4 v2, 0x0

    .line 237
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 239
    .local v0, current:I
    const v1, 0x1000011

    if-ne v0, v1, :cond_11

    .line 240
    const v1, 0x3000011

    invoke-interface {p0, p1, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 243
    :cond_10
    :goto_10
    return-void

    .line 241
    :cond_11
    const v1, 0x2000011

    if-ne v0, v1, :cond_10

    .line 242
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_10
.end method

.method public static adjustMetaAfterKeypress(J)J
    .registers 5
    .parameter "state"

    .prologue
    .line 489
    const/4 v0, 0x1

    const-wide v1, 0x10101000101L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->adjust(JIJ)J

    move-result-wide p0

    .line 490
    const/4 v0, 0x2

    const-wide v1, 0x20202000202L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->adjust(JIJ)J

    move-result-wide p0

    .line 491
    const/4 v0, 0x4

    const-wide v1, 0x40404000404L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->adjust(JIJ)J

    move-result-wide p0

    .line 492
    return-wide p0
.end method

.method public static adjustMetaAfterKeypress(Landroid/text/Spannable;)V
    .registers 2
    .parameter "content"

    .prologue
    .line 214
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 215
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 216
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 217
    return-void
.end method

.method public static clearMetaKeyState(Landroid/text/Editable;I)V
    .registers 4
    .parameter "content"
    .parameter "states"

    .prologue
    const/4 v1, 0x0

    .line 400
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_f

    .line 402
    sput v1, Landroid/text/method/MetaKeyKeyListener;->iShiftLocked:I

    .line 403
    invoke-static {v1}, Landroid/text/method/MetaKeyKeyListener;->WriteShiftKeyState(I)V

    .line 404
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 407
    :cond_f
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_18

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 408
    :cond_18
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_21

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 409
    :cond_21
    const/high16 v0, 0x1

    and-int/2addr v0, p1

    if-eqz v0, :cond_2b

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 410
    :cond_2b
    return-void
.end method

.method private static getActive(JIII)I
    .registers 9
    .parameter "state"
    .parameter "meta"
    .parameter "on"
    .parameter "lock"

    .prologue
    const-wide/16 v2, 0x0

    .line 473
    shl-int/lit8 v0, p2, 0x8

    int-to-long v0, v0

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    move v0, p4

    .line 478
    :goto_b
    return v0

    .line 475
    :cond_c
    int-to-long v0, p2

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    move v0, p3

    .line 476
    goto :goto_b

    .line 478
    :cond_14
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I
    .registers 9
    .parameter "text"
    .parameter "meta"
    .parameter "on"
    .parameter "lock"

    .prologue
    const/4 v4, 0x0

    .line 192
    instance-of v3, p0, Landroid/text/Spanned;

    if-nez v3, :cond_7

    move v3, v4

    .line 204
    :goto_6
    return v3

    .line 196
    :cond_7
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v2, v0

    .line 197
    .local v2, sp:Landroid/text/Spanned;
    invoke-interface {v2, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 199
    .local v1, flag:I
    const v3, 0x4000011

    if-ne v1, v3, :cond_16

    move v3, p3

    .line 200
    goto :goto_6

    .line 201
    :cond_16
    if-eqz v1, :cond_1a

    move v3, p2

    .line 202
    goto :goto_6

    :cond_1a
    move v3, v4

    .line 204
    goto :goto_6
.end method

.method public static getIME()Z
    .registers 2

    .prologue
    .line 117
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 118
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->useIME()Z

    move-result v1

    return v1
.end method

.method public static final getMetaState(J)I
    .registers 6
    .parameter "state"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 443
    const/16 v0, 0x100

    invoke-static {p0, p1, v1, v1, v0}, Landroid/text/method/MetaKeyKeyListener;->getActive(JIII)I

    move-result v0

    const/16 v1, 0x200

    invoke-static {p0, p1, v2, v2, v1}, Landroid/text/method/MetaKeyKeyListener;->getActive(JIII)I

    move-result v1

    or-int/2addr v0, v1

    const/16 v1, 0x400

    invoke-static {p0, p1, v3, v3, v1}, Landroid/text/method/MetaKeyKeyListener;->getActive(JIII)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static final getMetaState(JI)I
    .registers 5
    .parameter "state"
    .parameter "meta"

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 457
    packed-switch p2, :pswitch_data_16

    .line 468
    :pswitch_5
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 459
    :pswitch_7
    invoke-static {p0, p1, p2, v0, v1}, Landroid/text/method/MetaKeyKeyListener;->getActive(JIII)I

    move-result v0

    goto :goto_6

    .line 462
    :pswitch_c
    invoke-static {p0, p1, p2, v0, v1}, Landroid/text/method/MetaKeyKeyListener;->getActive(JIII)I

    move-result v0

    goto :goto_6

    .line 465
    :pswitch_11
    invoke-static {p0, p1, p2, v0, v1}, Landroid/text/method/MetaKeyKeyListener;->getActive(JIII)I

    move-result v0

    goto :goto_6

    .line 457
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_7
        :pswitch_c
        :pswitch_5
        :pswitch_11
    .end packed-switch
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;)I
    .registers 6
    .parameter "text"

    .prologue
    const/high16 v4, 0x1

    .line 157
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    const/4 v1, 0x1

    const/16 v2, 0x100

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    const/4 v2, 0x2

    const/16 v3, 0x200

    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    const/4 v2, 0x4

    const/16 v3, 0x400

    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v1, v4, v4}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;I)I
    .registers 5
    .parameter "text"
    .parameter "meta"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 172
    sparse-switch p1, :sswitch_data_24

    .line 186
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 174
    :sswitch_7
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_6

    .line 177
    :sswitch_e
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_6

    .line 180
    :sswitch_15
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_6

    .line 183
    :sswitch_1c
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_6

    .line 172
    nop

    :sswitch_data_24
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_e
        0x4 -> :sswitch_15
        0x10000 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static getShiftPushedState()I
    .registers 1

    .prologue
    .line 129
    sget v0, Landroid/text/method/MetaKeyKeyListener;->isShiftKeyDownNnotKeyUp:I

    return v0
.end method

.method public static getShiftState()I
    .registers 1

    .prologue
    .line 124
    sget v0, Landroid/text/method/MetaKeyKeyListener;->iShiftLocked:I

    return v0
.end method

.method public static handleKeyDown(JILandroid/view/KeyEvent;)J
    .registers 7
    .parameter "state"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 507
    const/16 v0, 0x3b

    if-eq p2, v0, :cond_9

    const/16 v0, 0x3c

    if-ne p2, v0, :cond_19

    .line 509
    :cond_9
    const/4 v0, 0x0

    sput v0, Landroid/text/method/MetaKeyKeyListener;->iShiftLocked:I

    .line 510
    invoke-static {v2}, Landroid/text/method/MetaKeyKeyListener;->WriteShiftKeyState(I)V

    .line 512
    const-wide v0, 0x10101000101L

    invoke-static {p0, p1, v2, v0, v1}, Landroid/text/method/MetaKeyKeyListener;->press(JIJ)J

    move-result-wide v0

    .line 524
    :goto_18
    return-wide v0

    .line 515
    :cond_19
    const/16 v0, 0x39

    if-eq p2, v0, :cond_25

    const/16 v0, 0x3a

    if-eq p2, v0, :cond_25

    const/16 v0, 0x4e

    if-ne p2, v0, :cond_30

    .line 517
    :cond_25
    const/4 v0, 0x2

    const-wide v1, 0x20202000202L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->press(JIJ)J

    move-result-wide v0

    goto :goto_18

    .line 520
    :cond_30
    const/16 v0, 0x3f

    if-ne p2, v0, :cond_3f

    .line 521
    const/4 v0, 0x4

    const-wide v1, 0x40404000404L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->press(JIJ)J

    move-result-wide v0

    goto :goto_18

    :cond_3f
    move-wide v0, p0

    .line 524
    goto :goto_18
.end method

.method public static handleKeyUp(JILandroid/view/KeyEvent;)J
    .registers 7
    .parameter "state"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 545
    const/16 v0, 0x3b

    if-eq p2, v0, :cond_8

    const/16 v0, 0x3c

    if-ne p2, v0, :cond_13

    .line 546
    :cond_8
    const/4 v0, 0x1

    const-wide v1, 0x10101000101L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->release(JIJ)J

    move-result-wide v0

    .line 558
    :goto_12
    return-wide v0

    .line 549
    :cond_13
    const/16 v0, 0x39

    if-eq p2, v0, :cond_1f

    const/16 v0, 0x3a

    if-eq p2, v0, :cond_1f

    const/16 v0, 0x4e

    if-ne p2, v0, :cond_2a

    .line 551
    :cond_1f
    const/4 v0, 0x2

    const-wide v1, 0x20202000202L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->release(JIJ)J

    move-result-wide v0

    goto :goto_12

    .line 554
    :cond_2a
    const/16 v0, 0x3f

    if-ne p2, v0, :cond_39

    .line 555
    const/4 v0, 0x4

    const-wide v1, 0x40404000404L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->release(JIJ)J

    move-result-wide v0

    goto :goto_12

    :cond_39
    move-wide v0, p0

    .line 558
    goto :goto_12
.end method

.method public static isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .registers 3
    .parameter "text"
    .parameter "what"

    .prologue
    .line 224
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    if-eq p1, v0, :cond_10

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    if-eq p1, v0, :cond_10

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    if-eq p1, v0, :cond_10

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-ne p1, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .registers 3
    .parameter "text"
    .parameter "what"

    .prologue
    .line 233
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static press(JIJ)J
    .registers 14
    .parameter "state"
    .parameter "what"
    .parameter "mask"

    .prologue
    const-wide/16 v7, -0x1

    const/16 v6, 0x20

    const/16 v5, 0x8

    const-wide/16 v3, 0x0

    .line 528
    int-to-long v0, p2

    shl-long/2addr v0, v6

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_10

    .line 538
    :cond_f
    :goto_f
    return-wide p0

    .line 530
    :cond_10
    int-to-long v0, p2

    const/16 v2, 0x28

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_23

    .line 531
    xor-long v0, p3, v7

    and-long/2addr v0, p0

    int-to-long v2, p2

    or-long/2addr v0, v2

    int-to-long v2, p2

    shl-long/2addr v2, v5

    or-long p0, v0, v2

    goto :goto_f

    .line 532
    :cond_23
    int-to-long v0, p2

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-nez v0, :cond_f

    .line 534
    int-to-long v0, p2

    shl-long/2addr v0, v5

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_37

    .line 535
    xor-long v0, p3, v7

    and-long/2addr p0, v0

    goto :goto_f

    .line 537
    :cond_37
    int-to-long v0, p2

    or-long/2addr v0, p0

    int-to-long v2, p2

    shl-long/2addr v2, v6

    or-long p0, v0, v2

    goto :goto_f
.end method

.method private press(Landroid/text/Editable;Ljava/lang/Object;)V
    .registers 9
    .parameter "content"
    .parameter "what"

    .prologue
    const v5, 0x4000011

    const v4, 0x1000011

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 294
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 296
    .local v0, state:I
    if-ne v0, v4, :cond_f

    .line 329
    :cond_e
    :goto_e
    return-void

    .line 301
    :cond_f
    const v1, 0x2000011

    if-ne v0, v1, :cond_21

    .line 303
    sget v1, Landroid/text/method/MetaKeyKeyListener;->isShiftKeyDownNnotKeyUp:I

    if-ne v1, v3, :cond_1d

    .line 305
    sput v3, Landroid/text/method/MetaKeyKeyListener;->iShiftLocked:I

    .line 306
    invoke-static {v3}, Landroid/text/method/MetaKeyKeyListener;->WriteShiftKeyState(I)V

    .line 308
    :cond_1d
    invoke-interface {p1, p2, v2, v2, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_e

    .line 310
    :cond_21
    const v1, 0x3000011

    if-eq v0, v1, :cond_e

    .line 314
    if-ne v0, v5, :cond_35

    .line 316
    sget v1, Landroid/text/method/MetaKeyKeyListener;->isShiftKeyDownNnotKeyUp:I

    if-ne v1, v3, :cond_31

    .line 318
    sput v2, Landroid/text/method/MetaKeyKeyListener;->iShiftLocked:I

    .line 319
    invoke-static {v2}, Landroid/text/method/MetaKeyKeyListener;->WriteShiftKeyState(I)V

    .line 322
    :cond_31
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_e

    .line 326
    :cond_35
    invoke-interface {p1, p2, v2, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_e
.end method

.method private static release(JIJ)J
    .registers 10
    .parameter "state"
    .parameter "what"
    .parameter "mask"

    .prologue
    const-wide/16 v3, 0x0

    .line 562
    int-to-long v0, p2

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_10

    .line 563
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p3

    and-long/2addr p0, v0

    .line 566
    :cond_f
    :goto_f
    return-wide p0

    .line 564
    :cond_10
    int-to-long v0, p2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_f

    .line 565
    int-to-long v0, p2

    or-long/2addr v0, p0

    int-to-long v2, p2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long p0, v0, v2

    goto :goto_f
.end method

.method private release(Landroid/text/Editable;Ljava/lang/Object;)V
    .registers 7
    .parameter "content"
    .parameter "what"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 374
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 376
    .local v0, current:I
    const v1, 0x3000011

    if-ne v0, v1, :cond_12

    .line 379
    invoke-static {v2}, Landroid/text/method/MetaKeyKeyListener;->WriteShiftKeyState(I)V

    .line 380
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 392
    :cond_11
    :goto_11
    return-void

    .line 382
    :cond_12
    const v1, 0x1000011

    if-ne v0, v1, :cond_11

    .line 384
    sget v1, Landroid/text/method/MetaKeyKeyListener;->isShiftKeyDownNnotKeyUp:I

    if-ne v1, v3, :cond_20

    .line 386
    sput v2, Landroid/text/method/MetaKeyKeyListener;->iShiftLocked:I

    .line 387
    invoke-static {v3}, Landroid/text/method/MetaKeyKeyListener;->WriteShiftKeyState(I)V

    .line 389
    :cond_20
    const v1, 0x2000011

    invoke-interface {p1, p2, v2, v2, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_11
.end method

.method private static resetLock(JIJ)J
    .registers 9
    .parameter "state"
    .parameter "what"
    .parameter "mask"

    .prologue
    .line 424
    int-to-long v0, p2

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 425
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p3

    and-long/2addr p0, v0

    .line 427
    :cond_f
    return-wide p0
.end method

.method private static resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V
    .registers 4
    .parameter "content"
    .parameter "what"

    .prologue
    .line 257
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 259
    .local v0, current:I
    const v1, 0x4000011

    if-ne v0, v1, :cond_c

    .line 260
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 261
    :cond_c
    return-void
.end method

.method public static resetLockedMeta(J)J
    .registers 5
    .parameter "state"

    .prologue
    .line 417
    const/4 v0, 0x1

    const-wide v1, 0x10101000101L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->resetLock(JIJ)J

    move-result-wide p0

    .line 418
    const/4 v0, 0x2

    const-wide v1, 0x20202000202L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->resetLock(JIJ)J

    move-result-wide p0

    .line 419
    const/4 v0, 0x4

    const-wide v1, 0x40404000404L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->resetLock(JIJ)J

    move-result-wide p0

    .line 420
    return-wide p0
.end method

.method protected static resetLockedMeta(Landroid/text/Spannable;)V
    .registers 2
    .parameter "content"

    .prologue
    .line 250
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 251
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 252
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 253
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 254
    return-void
.end method

.method public static resetMetaState(Landroid/text/Spannable;)V
    .registers 2
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 139
    sput v0, Landroid/text/method/MetaKeyKeyListener;->iShiftLocked:I

    .line 140
    invoke-static {v0}, Landroid/text/method/MetaKeyKeyListener;->WriteShiftKeyState(I)V

    .line 142
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 143
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 144
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 145
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method public static startSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .registers 5
    .parameter "view"
    .parameter "content"

    .prologue
    const/4 v2, 0x0

    .line 336
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    const v1, 0x1000011

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 337
    return-void
.end method

.method public static stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .registers 3
    .parameter "view"
    .parameter "content"

    .prologue
    .line 345
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 346
    return-void
.end method


# virtual methods
.method public clearMetaKeyState(JI)J
    .registers 7
    .parameter "state"
    .parameter "which"

    .prologue
    .line 570
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_e

    .line 571
    const/4 v0, 0x1

    const-wide v1, 0x10101000101L

    invoke-static {p1, p2, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->resetLock(JIJ)J

    move-result-wide p1

    .line 572
    :cond_e
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1c

    .line 573
    const/4 v0, 0x2

    const-wide v1, 0x20202000202L

    invoke-static {p1, p2, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->resetLock(JIJ)J

    move-result-wide p1

    .line 574
    :cond_1c
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2a

    .line 575
    const/4 v0, 0x4

    const-wide v1, 0x40404000404L

    invoke-static {p1, p2, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->resetLock(JIJ)J

    move-result-wide p1

    .line 576
    :cond_2a
    return-wide p1
.end method

.method public clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .registers 4
    .parameter "view"
    .parameter "content"
    .parameter "states"

    .prologue
    .line 395
    invoke-static {p2, p3}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    .line 396
    return-void
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 269
    const/16 v0, 0x3b

    if-eq p3, v0, :cond_a

    const/16 v0, 0x3c

    if-ne p3, v0, :cond_16

    .line 271
    :cond_a
    sput v1, Landroid/text/method/MetaKeyKeyListener;->isShiftKeyDownNnotKeyUp:I

    .line 272
    invoke-static {v1}, Landroid/text/method/MetaKeyKeyListener;->WriteShiftKeyState(I)V

    .line 274
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, v0}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    move v0, v1

    .line 290
    :goto_15
    return v0

    .line 277
    :cond_16
    sput v2, Landroid/text/method/MetaKeyKeyListener;->isShiftKeyDownNnotKeyUp:I

    .line 279
    const/16 v0, 0x39

    if-eq p3, v0, :cond_24

    const/16 v0, 0x3a

    if-eq p3, v0, :cond_24

    const/16 v0, 0x4e

    if-ne p3, v0, :cond_2b

    .line 281
    :cond_24
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, v0}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    move v0, v1

    .line 282
    goto :goto_15

    .line 285
    :cond_2b
    const/16 v0, 0x3f

    if-ne p3, v0, :cond_36

    .line 286
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, v0}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    move v0, v1

    .line 287
    goto :goto_15

    :cond_36
    move v0, v2

    .line 290
    goto :goto_15
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 353
    const/16 v0, 0x3b

    if-eq p3, v0, :cond_a

    const/16 v0, 0x3c

    if-ne p3, v0, :cond_13

    .line 354
    :cond_a
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, v0}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 355
    sput v2, Landroid/text/method/MetaKeyKeyListener;->isShiftKeyDownNnotKeyUp:I

    move v0, v1

    .line 370
    :goto_12
    return v0

    .line 359
    :cond_13
    const/16 v0, 0x39

    if-eq p3, v0, :cond_1f

    const/16 v0, 0x3a

    if-eq p3, v0, :cond_1f

    const/16 v0, 0x4e

    if-ne p3, v0, :cond_26

    .line 361
    :cond_1f
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, v0}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;)V

    move v0, v1

    .line 362
    goto :goto_12

    .line 365
    :cond_26
    const/16 v0, 0x3f

    if-ne p3, v0, :cond_31

    .line 366
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, v0}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;)V

    move v0, v1

    .line 367
    goto :goto_12

    :cond_31
    move v0, v2

    .line 370
    goto :goto_12
.end method
