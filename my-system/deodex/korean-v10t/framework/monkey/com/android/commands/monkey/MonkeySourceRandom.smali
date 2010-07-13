.class public Lcom/android/commands/monkey/MonkeySourceRandom;
.super Ljava/lang/Object;
.source "MonkeySourceRandom.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeyEventSource;


# static fields
.field public static final FACTORZ_COUNT:I = 0x9

.field public static final FACTOR_ANYTHING:I = 0x8

.field public static final FACTOR_APPSWITCH:I = 0x6

.field public static final FACTOR_FLIP:I = 0x7

.field public static final FACTOR_MAJORNAV:I = 0x4

.field public static final FACTOR_MOTION:I = 0x1

.field public static final FACTOR_NAV:I = 0x3

.field public static final FACTOR_SYSOPS:I = 0x5

.field public static final FACTOR_TOUCH:I = 0x0

.field public static final FACTOR_TRACKBALL:I = 0x2

.field private static final KEY_NAMES:[Ljava/lang/String;

.field private static final MAJOR_NAV_KEYS:[I

.field private static final NAV_KEYS:[I

.field private static final SYS_KEYS:[I


# instance fields
.field private mEventCount:I

.field private mFactors:[F

.field private mKeyboardOpen:Z

.field private mMainApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

.field private mRandom:Ljava/util/Random;

.field private mThrottle:J

.field private mVerbose:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 36
    new-array v0, v4, [I

    fill-array-data v0, :array_242

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceRandom;->NAV_KEYS:[I

    .line 44
    new-array v0, v3, [I

    fill-array-data v0, :array_24e

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceRandom;->MAJOR_NAV_KEYS:[I

    .line 49
    new-array v0, v5, [I

    fill-array-data v0, :array_256

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    .line 56
    const/16 v0, 0x5d

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "KEYCODE_UNKNOWN"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "KEYCODE_SOFT_LEFT"

    aput-object v2, v0, v1

    const-string v1, "KEYCODE_SOFT_RIGHT"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "KEYCODE_HOME"

    aput-object v2, v0, v1

    const-string v1, "KEYCODE_BACK"

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const-string v2, "KEYCODE_CALL"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "KEYCODE_ENDCALL"

    aput-object v2, v0, v1

    const-string v1, "KEYCODE_0"

    aput-object v1, v0, v5

    const/16 v1, 0x8

    const-string v2, "KEYCODE_1"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "KEYCODE_2"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "KEYCODE_3"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "KEYCODE_4"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "KEYCODE_5"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "KEYCODE_6"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "KEYCODE_7"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "KEYCODE_8"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "KEYCODE_9"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "KEYCODE_STAR"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "KEYCODE_POUND"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "KEYCODE_DPAD_UP"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "KEYCODE_DPAD_DOWN"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "KEYCODE_DPAD_LEFT"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "KEYCODE_DPAD_RIGHT"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "KEYCODE_DPAD_CENTER"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "KEYCODE_VOLUME_UP"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "KEYCODE_VOLUME_DOWN"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "KEYCODE_POWER"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "KEYCODE_CAMERA"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "KEYCODE_CLEAR"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "KEYCODE_A"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "KEYCODE_B"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "KEYCODE_C"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "KEYCODE_D"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "KEYCODE_E"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "KEYCODE_F"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "KEYCODE_G"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "KEYCODE_H"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "KEYCODE_I"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "KEYCODE_J"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "KEYCODE_K"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "KEYCODE_L"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "KEYCODE_M"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "KEYCODE_N"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "KEYCODE_O"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "KEYCODE_P"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "KEYCODE_Q"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "KEYCODE_R"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "KEYCODE_S"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "KEYCODE_T"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "KEYCODE_U"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "KEYCODE_V"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "KEYCODE_W"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "KEYCODE_X"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "KEYCODE_Y"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "KEYCODE_Z"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "KEYCODE_COMMA"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "KEYCODE_PERIOD"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "KEYCODE_ALT_LEFT"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "KEYCODE_ALT_RIGHT"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "KEYCODE_SHIFT_LEFT"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "KEYCODE_SHIFT_RIGHT"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "KEYCODE_TAB"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "KEYCODE_SPACE"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "KEYCODE_SYM"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "KEYCODE_EXPLORER"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "KEYCODE_ENVELOPE"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "KEYCODE_ENTER"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "KEYCODE_DEL"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "KEYCODE_GRAVE"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "KEYCODE_MINUS"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "KEYCODE_EQUALS"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "KEYCODE_LEFT_BRACKET"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "KEYCODE_RIGHT_BRACKET"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "KEYCODE_BACKSLASH"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "KEYCODE_SEMICOLON"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "KEYCODE_APOSTROPHE"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "KEYCODE_SLASH"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "KEYCODE_AT"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "KEYCODE_NUM"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "KEYCODE_HEADSETHOOK"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "KEYCODE_FOCUS"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "KEYCODE_PLUS"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "KEYCODE_MENU"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "KEYCODE_NOTIFICATION"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "KEYCODE_SEARCH"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "KEYCODE_PLAYPAUSE"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "KEYCODE_STOP"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "KEYCODE_NEXTSONG"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "KEYCODE_PREVIOUSSONG"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "KEYCODE_REWIND"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "KEYCODE_FORWARD"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "KEYCODE_MUTE"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "TAG_LAST_KEYCODE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceRandom;->KEY_NAMES:[Ljava/lang/String;

    return-void

    .line 36
    :array_242
    .array-data 0x4
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
    .end array-data

    .line 44
    :array_24e
    .array-data 0x4
        0x52t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
    .end array-data

    .line 49
    :array_256
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(JLjava/util/ArrayList;J)V
    .registers 13
    .parameter "seed"
    .parameter
    .parameter "throttle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p3, MainApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const-wide/16 v5, 0x0

    const/high16 v4, 0x4000

    const/4 v1, 0x0

    const/high16 v3, 0x4170

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    .line 170
    iput v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mEventCount:I

    .line 173
    iput v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mVerbose:I

    .line 174
    iput-wide v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mThrottle:J

    .line 176
    iput-boolean v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mKeyboardOpen:Z

    .line 209
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aput v3, v0, v1

    .line 210
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v1, 0x1

    const/high16 v2, 0x4120

    aput v2, v0, v1

    .line 211
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v1, 0x2

    aput v3, v0, v1

    .line 212
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v1, 0x3

    const/high16 v2, 0x41c8

    aput v2, v0, v1

    .line 213
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 214
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v1, 0x5

    aput v4, v0, v1

    .line 215
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v1, 0x6

    aput v4, v0, v1

    .line 216
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v1, 0x7

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 217
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 219
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    .line 220
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    cmp-long v1, p1, v5

    if-nez v1, :cond_67

    const-wide/16 v1, -0x1

    :goto_5a
    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    .line 221
    iput-object p3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/ArrayList;

    .line 222
    new-instance v0, Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-direct {v0, p4, p5}, Lcom/android/commands/monkey/MonkeyEventQueue;-><init>(J)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    .line 223
    return-void

    :cond_67
    move-wide v1, p1

    .line 220
    goto :goto_5a
.end method

.method private adjustEventFactors()Z
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x0

    const/high16 v11, 0x42c8

    const/16 v10, 0x9

    .line 230
    const/4 v6, 0x0

    .line 231
    .local v6, userSum:F
    const/4 v1, 0x0

    .line 232
    .local v1, defaultSum:F
    const/4 v0, 0x0

    .line 233
    .local v0, defaultCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_a
    if-ge v4, v10, :cond_24

    .line 234
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v7, v7, v4

    cmpg-float v7, v7, v9

    if-gtz v7, :cond_1c

    .line 235
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v7, v7, v4

    sub-float/2addr v6, v7

    .line 233
    :goto_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 237
    :cond_1c
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v7, v7, v4

    add-float/2addr v1, v7

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 243
    :cond_24
    cmpl-float v7, v6, v11

    if-lez v7, :cond_31

    .line 244
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "** Event weights > 100%"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v7, v12

    .line 282
    :goto_30
    return v7

    .line 249
    :cond_31
    if-nez v0, :cond_4a

    const v7, 0x42c7cccd

    cmpg-float v7, v6, v7

    if-ltz v7, :cond_41

    const v7, 0x42c83333

    cmpl-float v7, v6, v7

    if-lez v7, :cond_4a

    .line 250
    :cond_41
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "** Event weights != 100%"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v7, v12

    .line 251
    goto :goto_30

    .line 255
    :cond_4a
    sub-float v3, v11, v6

    .line 256
    .local v3, defaultsTarget:F
    div-float v2, v3, v1

    .line 259
    .local v2, defaultsAdjustment:F
    const/4 v4, 0x0

    :goto_4f
    if-ge v4, v10, :cond_6d

    .line 260
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v7, v7, v4

    cmpg-float v7, v7, v9

    if-gtz v7, :cond_65

    .line 261
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    iget-object v8, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v8, v8, v4

    neg-float v8, v8

    aput v8, v7, v4

    .line 259
    :goto_62
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 263
    :cond_65
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v8, v7, v4

    mul-float/2addr v8, v2

    aput v8, v7, v4

    goto :goto_62

    .line 269
    :cond_6d
    iget v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mVerbose:I

    if-lez v7, :cond_aa

    .line 270
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "// Event percentages:"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 271
    const/4 v4, 0x0

    :goto_79
    if-ge v4, v10, :cond_aa

    .line 272
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "//   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v9, v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 271
    add-int/lit8 v4, v4, 0x1

    goto :goto_79

    .line 277
    :cond_aa
    const/4 v5, 0x0

    .line 278
    .local v5, sum:F
    const/4 v4, 0x0

    :goto_ac
    if-ge v4, v10, :cond_bb

    .line 279
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v7, v7, v4

    div-float/2addr v7, v11

    add-float/2addr v5, v7

    .line 280
    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aput v5, v7, v4

    .line 278
    add-int/lit8 v4, v4, 0x1

    goto :goto_ac

    .line 282
    :cond_bb
    const/4 v7, 0x1

    goto/16 :goto_30
.end method

.method private generateEvents()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 411
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v0

    .line 412
    .local v0, cls:F
    const/4 v2, 0x0

    .line 414
    .local v2, lastKey:I
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v5, v5, v9

    cmpg-float v5, v0, v5

    if-gez v5, :cond_27

    move v4, v8

    .line 415
    .local v4, touchEvent:Z
    :goto_12
    if-nez v4, :cond_29

    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v5, v5, v8

    cmpg-float v5, v0, v5

    if-gez v5, :cond_29

    move v3, v8

    .line 416
    .local v3, motionEvent:Z
    :goto_1d
    if-nez v4, :cond_21

    if-eqz v3, :cond_2b

    .line 417
    :cond_21
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    invoke-direct {p0, v5, v3}, Lcom/android/commands/monkey/MonkeySourceRandom;->generateMotionEvent(Ljava/util/Random;Z)V

    .line 452
    :goto_26
    return-void

    .end local v3           #motionEvent:Z
    .end local v4           #touchEvent:Z
    :cond_27
    move v4, v9

    .line 414
    goto :goto_12

    .restart local v4       #touchEvent:Z
    :cond_29
    move v3, v9

    .line 415
    goto :goto_1d

    .line 421
    .restart local v3       #motionEvent:Z
    :cond_2b
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    cmpg-float v5, v0, v5

    if-gez v5, :cond_3a

    .line 422
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    invoke-direct {p0, v5}, Lcom/android/commands/monkey/MonkeySourceRandom;->generateTrackballEvent(Ljava/util/Random;)V

    goto :goto_26

    .line 427
    :cond_3a
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    cmpg-float v5, v0, v5

    if-gez v5, :cond_65

    .line 428
    sget-object v5, Lcom/android/commands/monkey/MonkeySourceRandom;->NAV_KEYS:[I

    iget-object v6, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    sget-object v7, Lcom/android/commands/monkey/MonkeySourceRandom;->NAV_KEYS:[I

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    aget v2, v5, v6

    .line 447
    :goto_50
    new-instance v1, Lcom/android/commands/monkey/MonkeyKeyEvent;

    invoke-direct {v1, v9, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    .line 448
    .local v1, e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 450
    new-instance v1, Lcom/android/commands/monkey/MonkeyKeyEvent;

    .end local v1           #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    invoke-direct {v1, v8, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    .line 451
    .restart local v1       #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto :goto_26

    .line 429
    .end local v1           #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    :cond_65
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v6, 0x4

    aget v5, v5, v6

    cmpg-float v5, v0, v5

    if-gez v5, :cond_7c

    .line 430
    sget-object v5, Lcom/android/commands/monkey/MonkeySourceRandom;->MAJOR_NAV_KEYS:[I

    iget-object v6, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    sget-object v7, Lcom/android/commands/monkey/MonkeySourceRandom;->MAJOR_NAV_KEYS:[I

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    aget v2, v5, v6

    goto :goto_50

    .line 431
    :cond_7c
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    cmpg-float v5, v0, v5

    if-gez v5, :cond_93

    .line 432
    sget-object v5, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    iget-object v6, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    sget-object v7, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    aget v2, v5, v6

    goto :goto_50

    .line 433
    :cond_93
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    cmpg-float v5, v0, v5

    if-gez v5, :cond_bc

    .line 434
    new-instance v1, Lcom/android/commands/monkey/MonkeyActivityEvent;

    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-direct {v1, v5}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;)V

    .line 436
    .local v1, e:Lcom/android/commands/monkey/MonkeyActivityEvent;
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_26

    .line 438
    .end local v1           #e:Lcom/android/commands/monkey/MonkeyActivityEvent;
    :cond_bc
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    cmpg-float v5, v0, v5

    if-gez v5, :cond_dc

    .line 439
    new-instance v1, Lcom/android/commands/monkey/MonkeyFlipEvent;

    iget-boolean v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mKeyboardOpen:Z

    invoke-direct {v1, v5}, Lcom/android/commands/monkey/MonkeyFlipEvent;-><init>(Z)V

    .line 440
    .local v1, e:Lcom/android/commands/monkey/MonkeyFlipEvent;
    iget-boolean v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mKeyboardOpen:Z

    if-nez v5, :cond_da

    move v5, v8

    :goto_d1
    iput-boolean v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mKeyboardOpen:Z

    .line 441
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_26

    :cond_da
    move v5, v9

    .line 440
    goto :goto_d1

    .line 444
    .end local v1           #e:Lcom/android/commands/monkey/MonkeyFlipEvent;
    :cond_dc
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    goto/16 :goto_50
.end method

.method private generateMotionEvent(Ljava/util/Random;Z)V
    .registers 20
    .parameter "random"
    .parameter "motionEvent"

    .prologue
    .line 320
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    .line 322
    .local v11, display:Landroid/view/Display;
    invoke-virtual/range {p1 .. p1}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-virtual {v11}, Landroid/view/Display;->getWidth()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v7, v3

    .line 323
    .local v7, x:F
    invoke-virtual/range {p1 .. p1}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-virtual {v11}, Landroid/view/Display;->getHeight()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v8, v3

    .line 324
    .local v8, y:F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 325
    .local v4, downAt:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 326
    .local v12, eventTime:J
    const-wide/16 v15, -0x1

    cmp-long v3, v4, v15

    if-nez v3, :cond_33

    .line 327
    move-wide v4, v12

    .line 330
    :cond_33
    new-instance v2, Lcom/android/commands/monkey/MonkeyMotionEvent;

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;-><init>(IJIFFI)V

    .line 332
    .local v2, e:Lcom/android/commands/monkey/MonkeyMotionEvent;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v3, v0

    invoke-virtual {v3, v2}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 336
    if-eqz p2, :cond_8a

    .line 337
    const/16 v3, 0xa

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    .line 338
    .local v10, count:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_53
    if-ge v14, v10, :cond_8a

    .line 340
    invoke-virtual/range {p1 .. p1}, Ljava/util/Random;->nextInt()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    add-float/2addr v3, v7

    invoke-virtual {v11}, Landroid/view/Display;->getWidth()I

    move-result v6

    int-to-float v6, v6

    rem-float v7, v3, v6

    .line 341
    invoke-virtual/range {p1 .. p1}, Ljava/util/Random;->nextInt()I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    add-float/2addr v3, v8

    invoke-virtual {v11}, Landroid/view/Display;->getHeight()I

    move-result v6

    int-to-float v6, v6

    rem-float v8, v3, v6

    .line 343
    new-instance v2, Lcom/android/commands/monkey/MonkeyMotionEvent;

    .end local v2           #e:Lcom/android/commands/monkey/MonkeyMotionEvent;
    const/4 v3, 0x1

    const/4 v6, 0x2

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;-><init>(IJIFFI)V

    .line 345
    .restart local v2       #e:Lcom/android/commands/monkey/MonkeyMotionEvent;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v3, v0

    invoke-virtual {v3, v2}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 338
    add-int/lit8 v14, v14, 0x1

    goto :goto_53

    .line 351
    .end local v10           #count:I
    .end local v14           #i:I
    :cond_8a
    new-instance v2, Lcom/android/commands/monkey/MonkeyMotionEvent;

    .end local v2           #e:Lcom/android/commands/monkey/MonkeyMotionEvent;
    const/4 v3, 0x1

    const/4 v6, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;-><init>(IJIFFI)V

    .line 353
    .restart local v2       #e:Lcom/android/commands/monkey/MonkeyMotionEvent;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v3, v0

    invoke-virtual {v3, v2}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 355
    return-void
.end method

.method private generateTrackballEvent(Ljava/util/Random;)V
    .registers 16
    .parameter "random"

    .prologue
    .line 372
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    .line 374
    .local v11, display:Landroid/view/Display;
    const/4 v12, 0x0

    .line 375
    .local v12, drop:Z
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    .line 377
    .local v8, count:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_10
    const/16 v1, 0xa

    if-ge v13, v1, :cond_42

    .line 379
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v2, 0x5

    sub-int v9, v1, v2

    .line 380
    .local v9, dX:I
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v2, 0x5

    sub-int v10, v1, v2

    .line 383
    .local v10, dY:I
    new-instance v0, Lcom/android/commands/monkey/MonkeyMotionEvent;

    const/4 v1, 0x2

    const-wide/16 v2, -0x1

    const/4 v4, 0x2

    int-to-float v5, v9

    int-to-float v6, v10

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;-><init>(IJIFFI)V

    .line 385
    .local v0, e:Lcom/android/commands/monkey/MonkeyMotionEvent;
    if-lez v13, :cond_40

    const/4 v1, 0x1

    :goto_35
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)V

    .line 386
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v1, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 377
    add-int/lit8 v13, v13, 0x1

    goto :goto_10

    .line 385
    :cond_40
    const/4 v1, 0x0

    goto :goto_35

    .line 390
    .end local v0           #e:Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v9           #dX:I
    .end local v10           #dY:I
    :cond_42
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_74

    .line 391
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 394
    .local v2, downAt:J
    new-instance v0, Lcom/android/commands/monkey/MonkeyMotionEvent;

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;-><init>(IJIFFI)V

    .line 396
    .restart local v0       #e:Lcom/android/commands/monkey/MonkeyMotionEvent;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)V

    .line 397
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v1, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 400
    new-instance v0, Lcom/android/commands/monkey/MonkeyMotionEvent;

    .end local v0           #e:Lcom/android/commands/monkey/MonkeyMotionEvent;
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;-><init>(IJIFFI)V

    .line 402
    .restart local v0       #e:Lcom/android/commands/monkey/MonkeyMotionEvent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)V

    .line 403
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v1, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 405
    .end local v0           #e:Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v2           #downAt:J
    :cond_74
    return-void
.end method

.method public static getKeyCode(Ljava/lang/String;)I
    .registers 3
    .parameter "keyName"

    .prologue
    .line 197
    const/4 v0, 0x0

    .local v0, x:I
    :goto_1
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->KEY_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 198
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->KEY_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, v0

    .line 202
    :goto_11
    return v1

    .line 197
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 202
    :cond_15
    const/4 v1, -0x1

    goto :goto_11
.end method

.method public static getKeyName(I)Ljava/lang/String;
    .registers 2
    .parameter "keycode"

    .prologue
    .line 186
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceRandom;->KEY_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getLastKeyName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 182
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceRandom;->KEY_NAMES:[Ljava/lang/String;

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public generateActivity()V
    .registers 5

    .prologue
    .line 467
    new-instance v0, Lcom/android/commands/monkey/MonkeyActivityEvent;

    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;)V

    .line 469
    .local v0, e:Lcom/android/commands/monkey/MonkeyActivityEvent;
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v1, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 470
    return-void
.end method

.method public getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;
    .registers 3

    .prologue
    .line 477
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 478
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceRandom;->generateEvents()V

    .line 480
    :cond_b
    iget v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mEventCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mEventCount:I

    .line 481
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/commands/monkey/MonkeyEvent;

    .line 482
    .local v0, e:Lcom/android/commands/monkey/MonkeyEvent;
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->removeFirst()Ljava/lang/Object;

    .line 483
    return-object v0
.end method

.method public setFactors(IF)V
    .registers 4
    .parameter "index"
    .parameter "v"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aput p2, v0, p1

    .line 301
    return-void
.end method

.method public setFactors([F)V
    .registers 6
    .parameter "factors"

    .prologue
    .line 291
    const/16 v0, 0x9

    .line 292
    .local v0, c:I
    array-length v2, p1

    if-ge v2, v0, :cond_6

    .line 293
    array-length v0, p1

    .line 295
    :cond_6
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_12

    .line 296
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v3, p1, v1

    aput v3, v2, v1

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 297
    :cond_12
    return-void
.end method

.method public setVerbose(I)V
    .registers 2
    .parameter "verbose"

    .prologue
    .line 460
    iput p1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mVerbose:I

    .line 461
    return-void
.end method

.method public validate()Z
    .registers 2

    .prologue
    .line 456
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceRandom;->adjustEventFactors()Z

    move-result v0

    return v0
.end method
