.class Ljava/io/ObjectStreamField$1;
.super Ljava/lang/Object;
.source "ObjectStreamField.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/ObjectStreamField;->sortFields([Ljava/io/ObjectStreamField;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/ObjectStreamField;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamField;)I
    .registers 4
    .parameter "f1"
    .parameter "f2"

    .prologue
    .line 347
    invoke-virtual {p1, p2}, Ljava/io/ObjectStreamField;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 346
    check-cast p1, Ljava/io/ObjectStreamField;

    .end local p1
    check-cast p2, Ljava/io/ObjectStreamField;

    .end local p2
    invoke-virtual {p0, p1, p2}, Ljava/io/ObjectStreamField$1;->compare(Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamField;)I

    move-result v0

    return v0
.end method
