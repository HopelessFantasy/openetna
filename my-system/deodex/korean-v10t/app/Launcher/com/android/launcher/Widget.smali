.class Lcom/android/launcher/Widget;
.super Lcom/android/launcher/ItemInfo;
.source "Widget.java"


# instance fields
.field layoutResource:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/launcher/ItemInfo;-><init>()V

    return-void
.end method

.method static makeSearch()Lcom/android/launcher/Widget;
    .registers 2

    .prologue
    .line 29
    new-instance v0, Lcom/android/launcher/Widget;

    invoke-direct {v0}, Lcom/android/launcher/Widget;-><init>()V

    .line 30
    .local v0, w:Lcom/android/launcher/Widget;
    const/16 v1, 0x3e9

    iput v1, v0, Lcom/android/launcher/Widget;->itemType:I

    .line 31
    const/4 v1, 0x4

    iput v1, v0, Lcom/android/launcher/Widget;->spanX:I

    .line 32
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/launcher/Widget;->spanY:I

    .line 33
    const v1, 0x7f030010

    iput v1, v0, Lcom/android/launcher/Widget;->layoutResource:I

    .line 34
    return-object v0
.end method
