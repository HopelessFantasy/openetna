.class public Ljava/util/prefs/InvalidPreferencesFormatException;
.super Ljava/lang/Exception;
.source "InvalidPreferencesFormatException.java"


# static fields
.field private static final serialVersionUID:J = -0xafcbcc3ef703d75L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "s"
    .parameter "t"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "t"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 67
    return-void
.end method
