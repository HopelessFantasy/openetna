.class final enum Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;
.super Ljava/lang/Enum;
.source "FormatSDCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FormatStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

.field public static final enum COMPLETE:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

.field public static final enum READY:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

.field public static final enum REQ_FORMAT:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

.field public static final enum REQ_UNMOUNT:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;->READY:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    .line 66
    new-instance v0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    const-string v1, "REQ_UNMOUNT"

    invoke-direct {v0, v1, v3}, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;->REQ_UNMOUNT:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    .line 67
    new-instance v0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    const-string v1, "REQ_FORMAT"

    invoke-direct {v0, v1, v4}, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;->REQ_FORMAT:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    .line 68
    new-instance v0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v5}, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;->COMPLETE:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    sget-object v1, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;->READY:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;->REQ_UNMOUNT:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;->REQ_FORMAT:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;->COMPLETE:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;->$VALUES:[Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

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
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;
    .registers 2
    .parameter "name"

    .prologue
    .line 64
    const-class v0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    return-object p0
.end method

.method public static final values()[Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;->$VALUES:[Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    invoke-virtual {v0}, [Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    return-object v0
.end method
