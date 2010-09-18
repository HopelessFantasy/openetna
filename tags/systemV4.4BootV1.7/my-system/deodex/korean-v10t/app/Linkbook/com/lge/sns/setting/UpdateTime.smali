.class public Lcom/lge/sns/setting/UpdateTime;
.super Ljava/lang/Object;
.source "UpdateTime.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/lge/sns/setting/UpdateTime;",
        ">;"
    }
.end annotation


# static fields
.field public static NOT_ASSIGNED:I


# instance fields
.field autoUpdate:Z

.field fromTime:I

.field id:J

.field intervalValue:I

.field toTime:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const/4 v0, -0x1

    sput v0, Lcom/lge/sns/setting/UpdateTime;->NOT_ASSIGNED:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget v0, Lcom/lge/sns/setting/UpdateTime;->NOT_ASSIGNED:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/lge/sns/setting/UpdateTime;->id:J

    .line 67
    return-void
.end method

.method public constructor <init>(IIIZ)V
    .registers 7
    .parameter "fromTime"
    .parameter "toTime"
    .parameter "intervalValue"
    .parameter "autoUpdate"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget v0, Lcom/lge/sns/setting/UpdateTime;->NOT_ASSIGNED:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/lge/sns/setting/UpdateTime;->id:J

    .line 74
    iput p1, p0, Lcom/lge/sns/setting/UpdateTime;->fromTime:I

    .line 75
    iput p2, p0, Lcom/lge/sns/setting/UpdateTime;->toTime:I

    .line 76
    iput p3, p0, Lcom/lge/sns/setting/UpdateTime;->intervalValue:I

    .line 77
    iput-boolean p4, p0, Lcom/lge/sns/setting/UpdateTime;->autoUpdate:Z

    .line 78
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/lge/sns/setting/UpdateTime;)I
    .registers 3
    .parameter "another"

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 18
    check-cast p1, Lcom/lge/sns/setting/UpdateTime;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lge/sns/setting/UpdateTime;->compareTo(Lcom/lge/sns/setting/UpdateTime;)I

    move-result v0

    return v0
.end method

.method public getFromTime()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Lcom/lge/sns/setting/UpdateTime;->fromTime:I

    return v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/lge/sns/setting/UpdateTime;->id:J

    return-wide v0
.end method

.method public getIntervalValue()I
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Lcom/lge/sns/setting/UpdateTime;->intervalValue:I

    return v0
.end method

.method public getToTime()I
    .registers 2

    .prologue
    .line 101
    iget v0, p0, Lcom/lge/sns/setting/UpdateTime;->toTime:I

    return v0
.end method

.method public isAutoUpdate()Z
    .registers 2

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/lge/sns/setting/UpdateTime;->autoUpdate:Z

    return v0
.end method

.method public setAutoUpdate(Z)V
    .registers 2
    .parameter "autoUpdate"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/lge/sns/setting/UpdateTime;->autoUpdate:Z

    .line 59
    return-void
.end method

.method public setFromTime(I)V
    .registers 2
    .parameter "fromTime"

    .prologue
    .line 93
    iput p1, p0, Lcom/lge/sns/setting/UpdateTime;->fromTime:I

    .line 94
    return-void
.end method

.method public setId(J)V
    .registers 3
    .parameter "id"

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/lge/sns/setting/UpdateTime;->id:J

    .line 42
    return-void
.end method

.method public setIntervalValue(I)V
    .registers 2
    .parameter "intervalValue"

    .prologue
    .line 125
    iput p1, p0, Lcom/lge/sns/setting/UpdateTime;->intervalValue:I

    .line 126
    return-void
.end method

.method public setToTime(I)V
    .registers 2
    .parameter "toTime"

    .prologue
    .line 109
    iput p1, p0, Lcom/lge/sns/setting/UpdateTime;->toTime:I

    .line 110
    return-void
.end method
