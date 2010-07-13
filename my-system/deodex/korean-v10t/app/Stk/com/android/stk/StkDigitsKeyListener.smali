.class public Lcom/android/stk/StkDigitsKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "StkDigitsKeyListener.java"


# static fields
.field public static final CHARACTERS:[C

.field private static sInstance:Lcom/android/stk/StkDigitsKeyListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const/16 v0, 0xd

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/stk/StkDigitsKeyListener;->CHARACTERS:[C

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
        0x2at 0x0t
        0x23t 0x0t
        0x2bt 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/stk/StkDigitsKeyListener;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/stk/StkDigitsKeyListener;->sInstance:Lcom/android/stk/StkDigitsKeyListener;

    if-eqz v0, :cond_7

    .line 38
    sget-object v0, Lcom/android/stk/StkDigitsKeyListener;->sInstance:Lcom/android/stk/StkDigitsKeyListener;

    .line 41
    :goto_6
    return-object v0

    .line 40
    :cond_7
    new-instance v0, Lcom/android/stk/StkDigitsKeyListener;

    invoke-direct {v0}, Lcom/android/stk/StkDigitsKeyListener;-><init>()V

    sput-object v0, Lcom/android/stk/StkDigitsKeyListener;->sInstance:Lcom/android/stk/StkDigitsKeyListener;

    .line 41
    sget-object v0, Lcom/android/stk/StkDigitsKeyListener;->sInstance:Lcom/android/stk/StkDigitsKeyListener;

    goto :goto_6
.end method


# virtual methods
.method protected getAcceptedChars()[C
    .registers 2

    .prologue
    .line 29
    sget-object v0, Lcom/android/stk/StkDigitsKeyListener;->CHARACTERS:[C

    return-object v0
.end method

.method public getInputType()I
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x3

    return v0
.end method
