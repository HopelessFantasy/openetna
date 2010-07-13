.class public Lcom/ibm/icu4jni/regex/NativeRegEx;
.super Ljava/lang/Object;
.source "NativeRegEx.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native clone(I)I
.end method

.method public static native close(I)V
.end method

.method public static native find(II)Z
.end method

.method public static native findNext(I)Z
.end method

.method public static native groupCount(I)I
.end method

.method public static native hasAnchoringBounds(I)Z
.end method

.method public static native hasTransparentBounds(I)Z
.end method

.method public static native hitEnd(I)Z
.end method

.method public static native lookingAt(II)Z
.end method

.method public static native matches(II)Z
.end method

.method public static native open(Ljava/lang/String;I)I
.end method

.method public static native regionEnd(I)I
.end method

.method public static native regionStart(I)I
.end method

.method public static native requireEnd(I)Z
.end method

.method public static native reset(II)V
.end method

.method public static native setRegion(III)V
.end method

.method public static native setText(ILjava/lang/String;)V
.end method

.method public static native startEnd(I[I)V
.end method

.method public static native useAnchoringBounds(IZ)V
.end method

.method public static native useTransparentBounds(IZ)V
.end method
