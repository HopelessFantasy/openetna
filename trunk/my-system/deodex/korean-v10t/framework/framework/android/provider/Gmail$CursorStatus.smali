.class public final enum Landroid/provider/Gmail$CursorStatus;
.super Ljava/lang/Enum;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Gmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CursorStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/provider/Gmail$CursorStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/provider/Gmail$CursorStatus;

.field public static final enum ERROR:Landroid/provider/Gmail$CursorStatus;

.field public static final enum LOADED:Landroid/provider/Gmail$CursorStatus;

.field public static final enum LOADING:Landroid/provider/Gmail$CursorStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1813
    new-instance v0, Landroid/provider/Gmail$CursorStatus;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v2}, Landroid/provider/Gmail$CursorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Gmail$CursorStatus;->LOADED:Landroid/provider/Gmail$CursorStatus;

    .line 1814
    new-instance v0, Landroid/provider/Gmail$CursorStatus;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v3}, Landroid/provider/Gmail$CursorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Gmail$CursorStatus;->LOADING:Landroid/provider/Gmail$CursorStatus;

    .line 1815
    new-instance v0, Landroid/provider/Gmail$CursorStatus;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Landroid/provider/Gmail$CursorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/Gmail$CursorStatus;->ERROR:Landroid/provider/Gmail$CursorStatus;

    .line 1812
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/provider/Gmail$CursorStatus;

    sget-object v1, Landroid/provider/Gmail$CursorStatus;->LOADED:Landroid/provider/Gmail$CursorStatus;

    aput-object v1, v0, v2

    sget-object v1, Landroid/provider/Gmail$CursorStatus;->LOADING:Landroid/provider/Gmail$CursorStatus;

    aput-object v1, v0, v3

    sget-object v1, Landroid/provider/Gmail$CursorStatus;->ERROR:Landroid/provider/Gmail$CursorStatus;

    aput-object v1, v0, v4

    sput-object v0, Landroid/provider/Gmail$CursorStatus;->$VALUES:[Landroid/provider/Gmail$CursorStatus;

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
    .line 1812
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/provider/Gmail$CursorStatus;
    .registers 2
    .parameter "name"

    .prologue
    .line 1812
    const-class v0, Landroid/provider/Gmail$CursorStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/provider/Gmail$CursorStatus;

    return-object p0
.end method

.method public static final values()[Landroid/provider/Gmail$CursorStatus;
    .registers 1

    .prologue
    .line 1812
    sget-object v0, Landroid/provider/Gmail$CursorStatus;->$VALUES:[Landroid/provider/Gmail$CursorStatus;

    invoke-virtual {v0}, [Landroid/provider/Gmail$CursorStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/provider/Gmail$CursorStatus;

    return-object v0
.end method
