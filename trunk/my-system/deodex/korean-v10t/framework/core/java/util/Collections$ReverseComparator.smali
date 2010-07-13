.class final Ljava/util/Collections$ReverseComparator;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReverseComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x64048af0534e4ad0L


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 196
    .local p0, this:Ljava/util/Collections$ReverseComparator;,"Ljava/util/Collections$ReverseComparator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collections$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 196
    .local p0, this:Ljava/util/Collections$ReverseComparator;,"Ljava/util/Collections$ReverseComparator<TT;>;"
    invoke-direct {p0}, Ljava/util/Collections$ReverseComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, this:Ljava/util/Collections$ReverseComparator;,"Ljava/util/Collections$ReverseComparator<TT;>;"
    .local p1, o1:Ljava/lang/Object;,"TT;"
    .local p2, o2:Ljava/lang/Object;,"TT;"
    move-object v0, p2

    check-cast v0, Ljava/lang/Comparable;

    move-object v1, v0

    .line 203
    .local v1, c2:Ljava/lang/Comparable;,"Ljava/lang/Comparable<TT;>;"
    invoke-interface {v1, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    return v2
.end method
