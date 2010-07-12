.class public Landroid/text/method/LGEDialerKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "LGEDialerKeyListener.java"


# static fields
.field public static final CHARACTERS:[C

.field private static sInstance:Landroid/text/method/LGEDialerKeyListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 115
    const/16 v0, 0x18

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Landroid/text/method/LGEDialerKeyListener;->CHARACTERS:[C

    return-void

    :array_a
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x23t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2dt 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x2ct 0x0t
        0x2ft 0x0t
        0x4et 0x0t
        0x2et 0x0t
        0x20t 0x0t
        0x3bt 0x0t
        0x50t 0x0t
        0x57t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/text/method/LGEDialerKeyListener;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Landroid/text/method/LGEDialerKeyListener;->sInstance:Landroid/text/method/LGEDialerKeyListener;

    if-eqz v0, :cond_7

    .line 37
    sget-object v0, Landroid/text/method/LGEDialerKeyListener;->sInstance:Landroid/text/method/LGEDialerKeyListener;

    .line 40
    :goto_6
    return-object v0

    .line 39
    :cond_7
    new-instance v0, Landroid/text/method/LGEDialerKeyListener;

    invoke-direct {v0}, Landroid/text/method/LGEDialerKeyListener;-><init>()V

    sput-object v0, Landroid/text/method/LGEDialerKeyListener;->sInstance:Landroid/text/method/LGEDialerKeyListener;

    .line 40
    sget-object v0, Landroid/text/method/LGEDialerKeyListener;->sInstance:Landroid/text/method/LGEDialerKeyListener;

    goto :goto_6
.end method


# virtual methods
.method protected getAcceptedChars()[C
    .registers 2

    .prologue
    .line 32
    sget-object v0, Landroid/text/method/LGEDialerKeyListener;->CHARACTERS:[C

    return-object v0
.end method

.method public getInputType()I
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x3

    return v0
.end method

.method protected lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I
    .registers 10
    .parameter "event"
    .parameter "content"

    .prologue
    .line 52
    invoke-static {p2}, Landroid/text/method/LGEDialerKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v4

    .line 53
    .local v4, meta:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getNumber()C

    move-result v5

    .line 59
    .local v5, number:I
    and-int/lit8 v6, v4, 0x3

    if-nez v6, :cond_3d

    .line 60
    if-eqz v5, :cond_3d

    .line 63
    const/16 v6, 0x2c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_26

    .line 64
    const/16 v6, 0x50

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_24
    :goto_24
    move v6, v5

    .line 104
    :goto_25
    return v6

    .line 65
    :cond_26
    const/16 v6, 0x3b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_24

    .line 66
    const/16 v6, 0x57

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_24

    .line 73
    :cond_3d
    invoke-super {p0, p1, p2}, Landroid/text/method/NumberKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v3

    .line 75
    .local v3, match:I
    if-eqz v3, :cond_45

    move v6, v3

    .line 76
    goto :goto_25

    .line 85
    :cond_45
    if-eqz v4, :cond_6e

    .line 86
    new-instance v2, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v2}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 87
    .local v2, kd:Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p0}, Landroid/text/method/LGEDialerKeyListener;->getAcceptedChars()[C

    move-result-object v0

    .line 89
    .local v0, accepted:[C
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 90
    const/4 v1, 0x1

    .local v1, i:I
    :goto_57
    iget-object v6, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    array-length v6, v6

    if-ge v1, v6, :cond_6e

    .line 91
    iget-object v6, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v6, v6, v1

    invoke-static {v0, v6}, Landroid/text/method/LGEDialerKeyListener;->ok([CC)Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 92
    iget-object v6, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v6, v6, v1

    goto :goto_25

    .line 90
    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .end local v0           #accepted:[C
    .end local v1           #i:I
    .end local v2           #kd:Landroid/view/KeyCharacterMap$KeyData;
    :cond_6e
    move v6, v5

    .line 104
    goto :goto_25
.end method
