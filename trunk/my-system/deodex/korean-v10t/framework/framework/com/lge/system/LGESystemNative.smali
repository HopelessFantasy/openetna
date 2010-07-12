.class public Lcom/lge/system/LGESystemNative;
.super Ljava/lang/Object;
.source "LGESystemNative.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static final native MarkBootComplete()I
.end method

.method public static final native bugReport(I)I
.end method

.method public static final native factoryReset()I
.end method
