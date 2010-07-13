.class public final enum Lcom/lge/newbay/client/ICommunity$CommunityState;
.super Ljava/lang/Enum;
.source "ICommunity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/ICommunity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommunityState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/newbay/client/ICommunity$CommunityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/newbay/client/ICommunity$CommunityState;

.field public static final enum ACTIVATED:Lcom/lge/newbay/client/ICommunity$CommunityState;

.field public static final enum ALL:Lcom/lge/newbay/client/ICommunity$CommunityState;

.field public static final enum INACTIVATED:Lcom/lge/newbay/client/ICommunity$CommunityState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/lge/newbay/client/ICommunity$CommunityState;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2}, Lcom/lge/newbay/client/ICommunity$CommunityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/newbay/client/ICommunity$CommunityState;->ALL:Lcom/lge/newbay/client/ICommunity$CommunityState;

    new-instance v0, Lcom/lge/newbay/client/ICommunity$CommunityState;

    const-string v1, "ACTIVATED"

    invoke-direct {v0, v1, v3}, Lcom/lge/newbay/client/ICommunity$CommunityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/newbay/client/ICommunity$CommunityState;->ACTIVATED:Lcom/lge/newbay/client/ICommunity$CommunityState;

    new-instance v0, Lcom/lge/newbay/client/ICommunity$CommunityState;

    const-string v1, "INACTIVATED"

    invoke-direct {v0, v1, v4}, Lcom/lge/newbay/client/ICommunity$CommunityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/newbay/client/ICommunity$CommunityState;->INACTIVATED:Lcom/lge/newbay/client/ICommunity$CommunityState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lge/newbay/client/ICommunity$CommunityState;

    sget-object v1, Lcom/lge/newbay/client/ICommunity$CommunityState;->ALL:Lcom/lge/newbay/client/ICommunity$CommunityState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/newbay/client/ICommunity$CommunityState;->ACTIVATED:Lcom/lge/newbay/client/ICommunity$CommunityState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/newbay/client/ICommunity$CommunityState;->INACTIVATED:Lcom/lge/newbay/client/ICommunity$CommunityState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/newbay/client/ICommunity$CommunityState;->$VALUES:[Lcom/lge/newbay/client/ICommunity$CommunityState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/newbay/client/ICommunity$CommunityState;
    .registers 2
    .parameter "name"

    .prologue
    .line 28
    const-class v0, Lcom/lge/newbay/client/ICommunity$CommunityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/newbay/client/ICommunity$CommunityState;

    return-object p0
.end method

.method public static final values()[Lcom/lge/newbay/client/ICommunity$CommunityState;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/lge/newbay/client/ICommunity$CommunityState;->$VALUES:[Lcom/lge/newbay/client/ICommunity$CommunityState;

    invoke-virtual {v0}, [Lcom/lge/newbay/client/ICommunity$CommunityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/newbay/client/ICommunity$CommunityState;

    return-object v0
.end method
