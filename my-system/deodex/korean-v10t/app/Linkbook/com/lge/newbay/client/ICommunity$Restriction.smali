.class public Lcom/lge/newbay/client/ICommunity$Restriction;
.super Ljava/lang/Object;
.source "ICommunity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/ICommunity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Restriction"
.end annotation


# instance fields
.field code:Ljava/lang/String;

.field name:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "code"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/lge/newbay/client/ICommunity$Restriction;->code:Ljava/lang/String;

    .line 182
    iput-object p2, p0, Lcom/lge/newbay/client/ICommunity$Restriction;->name:Ljava/lang/String;

    .line 183
    iput-object p3, p0, Lcom/lge/newbay/client/ICommunity$Restriction;->value:Ljava/lang/String;

    .line 184
    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/lge/newbay/client/ICommunity$Restriction;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/lge/newbay/client/ICommunity$Restriction;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lge/newbay/client/ICommunity$Restriction;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 2
    .parameter "code"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/lge/newbay/client/ICommunity$Restriction;->code:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/lge/newbay/client/ICommunity$Restriction;->name:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/lge/newbay/client/ICommunity$Restriction;->value:Ljava/lang/String;

    .line 172
    return-void
.end method
