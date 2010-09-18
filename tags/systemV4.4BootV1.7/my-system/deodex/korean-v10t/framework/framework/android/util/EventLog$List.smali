.class public final Landroid/util/EventLog$List;
.super Ljava/lang/Object;
.source "EventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/EventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "List"
.end annotation


# instance fields
.field private mItems:[Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>([Ljava/lang/Object;)V
    .registers 6
    .parameter "items"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    array-length v2, p1

    const/16 v3, 0x7f

    if-le v2, v3, :cond_10

    .line 123
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "A List must have fewer than 127 items in it."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :cond_10
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1c

    .line 128
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "A List must have at least one item in it."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 131
    :cond_1c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    array-length v2, p1

    if-ge v0, v2, :cond_43

    .line 132
    aget-object v1, p1, v0

    .line 133
    .local v1, item:Ljava/lang/Object;
    if-nez v1, :cond_2b

    .line 135
    const-string v2, ""

    aput-object v2, p1, v0

    .line 131
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 136
    :cond_2b
    instance-of v2, v1, Landroid/util/EventLog$List;

    if-nez v2, :cond_28

    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_28

    instance-of v2, v1, Ljava/lang/Integer;

    if-nez v2, :cond_28

    instance-of v2, v1, Ljava/lang/Long;

    if-nez v2, :cond_28

    .line 140
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Attempt to create a List with illegal item type."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    .end local v1           #item:Ljava/lang/Object;
    :cond_43
    iput-object p1, p0, Landroid/util/EventLog$List;->mItems:[Ljava/lang/Object;

    .line 145
    return-void
.end method


# virtual methods
.method public final getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "pos"

    .prologue
    .line 105
    iget-object v0, p0, Landroid/util/EventLog$List;->mItems:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getNumItems()B
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Landroid/util/EventLog$List;->mItems:[Ljava/lang/Object;

    array-length v0, v0

    int-to-byte v0, v0

    return v0
.end method
