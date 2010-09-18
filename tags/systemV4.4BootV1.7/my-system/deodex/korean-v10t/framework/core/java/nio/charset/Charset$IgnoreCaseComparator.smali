.class Ljava/nio/charset/Charset$IgnoreCaseComparator;
.super Ljava/lang/Object;
.source "Charset.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/charset/Charset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IgnoreCaseComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 887
    new-instance v0, Ljava/nio/charset/Charset$IgnoreCaseComparator;

    invoke-direct {v0}, Ljava/nio/charset/Charset$IgnoreCaseComparator;-><init>()V

    sput-object v0, Ljava/nio/charset/Charset$IgnoreCaseComparator;->c:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 894
    return-void
.end method

.method public static getInstance()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 900
    sget-object v0, Ljava/nio/charset/Charset$IgnoreCaseComparator;->c:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 884
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Ljava/nio/charset/Charset$IgnoreCaseComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 907
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
