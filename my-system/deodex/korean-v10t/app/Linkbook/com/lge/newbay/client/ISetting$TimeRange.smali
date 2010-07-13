.class public Lcom/lge/newbay/client/ISetting$TimeRange;
.super Ljava/lang/Object;
.source "ISetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/ISetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeRange"
.end annotation


# instance fields
.field from:Ljava/util/Date;

.field to:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .registers 3
    .parameter "from"
    .parameter "to"

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/lge/newbay/client/ISetting$TimeRange;->from:Ljava/util/Date;

    .line 123
    iput-object p2, p0, Lcom/lge/newbay/client/ISetting$TimeRange;->to:Ljava/util/Date;

    .line 124
    return-void
.end method


# virtual methods
.method public getFrom()Ljava/util/Date;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lge/newbay/client/ISetting$TimeRange;->from:Ljava/util/Date;

    return-object v0
.end method

.method public getTo()Ljava/util/Date;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lge/newbay/client/ISetting$TimeRange;->to:Ljava/util/Date;

    return-object v0
.end method

.method public setFrom(Ljava/util/Date;)V
    .registers 2
    .parameter "from"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/lge/newbay/client/ISetting$TimeRange;->from:Ljava/util/Date;

    .line 130
    return-void
.end method

.method public setTo(Ljava/util/Date;)V
    .registers 2
    .parameter "to"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/lge/newbay/client/ISetting$TimeRange;->to:Ljava/util/Date;

    .line 136
    return-void
.end method
