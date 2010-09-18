.class public final Lorg/apache/harmony/luni/util/Sorter;
.super Ljava/lang/Object;
.source "Sorter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/luni/util/Sorter$Comparator;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static sort([Ljava/lang/Object;Lorg/apache/harmony/luni/util/Sorter$Comparator;)V
    .registers 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Lorg/apache/harmony/luni/util/Sorter$Comparator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, objs:[Ljava/lang/Object;,"[TT;"
    .local p1, comp:Lorg/apache/harmony/luni/util/Sorter$Comparator;,"Lorg/apache/harmony/luni/util/Sorter$Comparator<TT;>;"
    invoke-static {p0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 42
    return-void
.end method
