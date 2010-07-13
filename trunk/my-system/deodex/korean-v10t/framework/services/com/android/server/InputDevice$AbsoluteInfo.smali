.class Lcom/android/server/InputDevice$AbsoluteInfo;
.super Ljava/lang/Object;
.source "InputDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AbsoluteInfo"
.end annotation


# instance fields
.field flat:I

.field fuzz:I

.field maxValue:I

.field minValue:I

.field range:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
