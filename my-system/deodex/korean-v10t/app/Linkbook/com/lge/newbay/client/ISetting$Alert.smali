.class public Lcom/lge/newbay/client/ISetting$Alert;
.super Ljava/lang/Object;
.source "ISetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/ISetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Alert"
.end annotation


# instance fields
.field channel:Ljava/lang/String;

.field description:Ljava/lang/String;

.field id:Ljava/lang/String;

.field name:Ljava/lang/String;

.field paused:Z

.field period:I

.field resources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ISetting$Resource;",
            ">;"
        }
    .end annotation
.end field

.field timeRange:Lcom/lge/newbay/client/ISetting$TimeRange;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/lge/newbay/client/ISetting$TimeRange;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .parameter "id"
    .parameter "name"
    .parameter "description"
    .parameter "paused"
    .parameter "period"
    .parameter "timeRange"
    .parameter "channel"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI",
            "Lcom/lge/newbay/client/ISetting$TimeRange;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ISetting$Resource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p8, resources:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/ISetting$Resource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p1, p0, Lcom/lge/newbay/client/ISetting$Alert;->id:Ljava/lang/String;

    .line 252
    iput-object p2, p0, Lcom/lge/newbay/client/ISetting$Alert;->name:Ljava/lang/String;

    .line 253
    iput-object p3, p0, Lcom/lge/newbay/client/ISetting$Alert;->description:Ljava/lang/String;

    .line 254
    iput-boolean p4, p0, Lcom/lge/newbay/client/ISetting$Alert;->paused:Z

    .line 255
    iput p5, p0, Lcom/lge/newbay/client/ISetting$Alert;->period:I

    .line 256
    iput-object p6, p0, Lcom/lge/newbay/client/ISetting$Alert;->timeRange:Lcom/lge/newbay/client/ISetting$TimeRange;

    .line 257
    iput-object p7, p0, Lcom/lge/newbay/client/ISetting$Alert;->channel:Ljava/lang/String;

    .line 258
    iput-object p8, p0, Lcom/lge/newbay/client/ISetting$Alert;->resources:Ljava/util/List;

    .line 259
    return-void
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/lge/newbay/client/ISetting$Alert;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/lge/newbay/client/ISetting$Alert;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/lge/newbay/client/ISetting$Alert;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/lge/newbay/client/ISetting$Alert;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriod()I
    .registers 2

    .prologue
    .line 225
    iget v0, p0, Lcom/lge/newbay/client/ISetting$Alert;->period:I

    return v0
.end method

.method public getResources()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ISetting$Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/lge/newbay/client/ISetting$Alert;->resources:Ljava/util/List;

    return-object v0
.end method

.method public getTimeRange()Lcom/lge/newbay/client/ISetting$TimeRange;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/lge/newbay/client/ISetting$Alert;->timeRange:Lcom/lge/newbay/client/ISetting$TimeRange;

    return-object v0
.end method

.method public isPaused()Z
    .registers 2

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/lge/newbay/client/ISetting$Alert;->paused:Z

    return v0
.end method

.method public setChannel(Ljava/lang/String;)V
    .registers 2
    .parameter "channel"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/lge/newbay/client/ISetting$Alert;->channel:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .parameter "description"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/lge/newbay/client/ISetting$Alert;->description:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .parameter "id"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/lge/newbay/client/ISetting$Alert;->id:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/lge/newbay/client/ISetting$Alert;->name:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setPaused(Z)V
    .registers 2
    .parameter "paused"

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/lge/newbay/client/ISetting$Alert;->paused:Z

    .line 223
    return-void
.end method

.method public setPeriod(I)V
    .registers 2
    .parameter "period"

    .prologue
    .line 228
    iput p1, p0, Lcom/lge/newbay/client/ISetting$Alert;->period:I

    .line 229
    return-void
.end method

.method public setResources(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ISetting$Resource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, resources:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/ISetting$Resource;>;"
    iput-object p1, p0, Lcom/lge/newbay/client/ISetting$Alert;->resources:Ljava/util/List;

    .line 247
    return-void
.end method

.method public setTimeRange(Lcom/lge/newbay/client/ISetting$TimeRange;)V
    .registers 2
    .parameter "timeRange"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/lge/newbay/client/ISetting$Alert;->timeRange:Lcom/lge/newbay/client/ISetting$TimeRange;

    .line 235
    return-void
.end method
