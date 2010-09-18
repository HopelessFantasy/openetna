.class public Lcom/lge/newbay/client/ISetting$Feature;
.super Ljava/lang/Object;
.source "ISetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/ISetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Feature"
.end annotation


# instance fields
.field channel:Ljava/lang/String;

.field code:Ljava/lang/String;

.field sns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ISetting$Sns;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .parameter "code"
    .parameter "channel"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ISetting$Sns;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p3, sns:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/ISetting$Sns;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/lge/newbay/client/ISetting$Feature;->code:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/lge/newbay/client/ISetting$Feature;->channel:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/lge/newbay/client/ISetting$Feature;->sns:Ljava/util/List;

    .line 88
    return-void
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lge/newbay/client/ISetting$Feature;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/newbay/client/ISetting$Feature;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getSns()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ISetting$Sns;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lge/newbay/client/ISetting$Feature;->sns:Ljava/util/List;

    return-object v0
.end method

.method public setChannel(Ljava/lang/String;)V
    .registers 2
    .parameter "channel"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/lge/newbay/client/ISetting$Feature;->channel:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 2
    .parameter "code"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/lge/newbay/client/ISetting$Feature;->code:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setSns(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/newbay/client/ISetting$Sns;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, sns:Ljava/util/List;,"Ljava/util/List<Lcom/lge/newbay/client/ISetting$Sns;>;"
    iput-object p1, p0, Lcom/lge/newbay/client/ISetting$Feature;->sns:Ljava/util/List;

    .line 82
    return-void
.end method
