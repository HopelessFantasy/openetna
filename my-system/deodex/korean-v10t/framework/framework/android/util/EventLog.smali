.class public Landroid/util/EventLog;
.super Ljava/lang/Object;
.source "EventLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/EventLog$Event;,
        Landroid/util/EventLog$List;
    }
.end annotation


# static fields
.field public static final INT:B = 0x0t

.field public static final LIST:B = 0x3t

.field public static final LONG:B = 0x1t

.field public static final STRING:B = 0x2t


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    return-void
.end method

.method public static native readEvents([ILjava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/Collection",
            "<",
            "Landroid/util/EventLog$Event;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native writeEvent(II)I
.end method

.method public static native writeEvent(IJ)I
.end method

.method public static native writeEvent(ILandroid/util/EventLog$List;)I
.end method

.method public static native writeEvent(ILjava/lang/String;)I
.end method

.method public static varargs writeEvent(I[Ljava/lang/Object;)I
    .registers 3
    .parameter "tag"
    .parameter "list"

    .prologue
    .line 277
    new-instance v0, Landroid/util/EventLog$List;

    invoke-direct {v0, p1}, Landroid/util/EventLog$List;-><init>([Ljava/lang/Object;)V

    invoke-static {p0, v0}, Landroid/util/EventLog;->writeEvent(ILandroid/util/EventLog$List;)I

    move-result v0

    return v0
.end method
