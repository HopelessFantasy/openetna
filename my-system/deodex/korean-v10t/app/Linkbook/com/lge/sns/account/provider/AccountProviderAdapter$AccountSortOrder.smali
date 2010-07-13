.class public final enum Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;
.super Ljava/lang/Enum;
.source "AccountProviderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/account/provider/AccountProviderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccountSortOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

.field public static final enum PUBLISHED_ASC:Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

.field public static final enum PUBLISHED_DESC:Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

.field public static final enum TAB_ORDER_ASC:Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

.field public static final enum TAB_ORDER_DESC:Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

.field public static final enum TITLE_ASC:Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

.field public static final enum TITLE_DESC:Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

.field public static final enum UPDATED_ASC:Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

.field public static final enum UPDATED_DESC:Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;


# instance fields
.field private final sortOrder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    new-instance v0, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

    const-string v1, "TAB_ORDER_ASC"

    const-string v2, "tab_order ASC"

    invoke-direct {v0, v1, v4, v2}, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;->TAB_ORDER_ASC:Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

    .line 59
    new-instance v0, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

    const-string v1, "TAB_ORDER_DESC"

    const-string v2, "tab_order DESC"

    invoke-direct {v0, v1, v5, v2}, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;->TAB_ORDER_DESC:Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

    .line 60
    new-instance v0, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

    const-string v1, "PUBLISHED_ASC"

    const-string v2, "published ASC"

    invoke-direct {v0, v1, v6, v2}, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;->PUBLISHED_ASC:Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

    .line 61
    new-instance v0, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

    const-string v1, "PUBLISHED_DESC"

    const-string v2, "published DESC"

    invoke-direct {v0, v1, v7, v2}, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;->PUBLISHED_DESC:Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

    .line 62
    new-instance v0, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

    const-string v1, "UPDATED_ASC"

    const-string v2, "updated ASC"

    invoke-direct {v0, v1, v8, v2}, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;->UPDATED_ASC:Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

    .line 63
    new-instance v0, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

    const-string v1, "UPDATED_DESC"

    const/4 v2, 0x5

    const-string v3, "updated DESC"

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;->UPDATED_DESC:Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

    .line 64
    new-instance v0, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

    const-string v1, "TITLE_ASC"

    const/4 v2, 0x6

    const-string v3, "title ASC"

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;->TITLE_ASC:Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

    .line 65
    new-instance v0, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

    const-string v1, "TITLE_DESC"

    const/4 v2, 0x7

    const-string v3, "title DESC"

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;->TITLE_DESC:Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

    .line 57
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

    sget-object v1, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;->TAB_ORDER_ASC:Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;->TAB_ORDER_DESC:Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;->PUBLISHED_ASC:Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;->PUBLISHED_DESC:Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

    aput-object v1, v0, v7

    sget-object v1, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;->UPDATED_ASC:Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;->UPDATED_DESC:Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;->TITLE_ASC:Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;->TITLE_DESC:Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;->$VALUES:[Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter "sortOrder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput-object p3, p0, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;->sortOrder:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;
    .registers 2
    .parameter "name"

    .prologue
    .line 57
    const-class v0, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

    return-object p0
.end method

.method public static final values()[Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;
    .registers 1

    .prologue
    .line 57
    sget-object v0, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;->$VALUES:[Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

    invoke-virtual {v0}, [Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lge/sns/account/provider/AccountProviderAdapter$AccountSortOrder;->sortOrder:Ljava/lang/String;

    return-object v0
.end method
