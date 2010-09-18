.class public final enum Landroid/text/Layout$DefaultCursorDir;
.super Ljava/lang/Enum;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DefaultCursorDir"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/text/Layout$DefaultCursorDir;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/text/Layout$DefaultCursorDir;

.field public static final enum CURSOR_DEPEND_ON_LANGUAGE:Landroid/text/Layout$DefaultCursorDir;

.field public static final enum CURSOR_DEPEND_ON_LOCALE:Landroid/text/Layout$DefaultCursorDir;

.field public static final enum CURSOR_LEFT:Landroid/text/Layout$DefaultCursorDir;

.field public static final enum CURSOR_RIGHT:Landroid/text/Layout$DefaultCursorDir;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1938
    new-instance v0, Landroid/text/Layout$DefaultCursorDir;

    const-string v1, "CURSOR_DEPEND_ON_LANGUAGE"

    invoke-direct {v0, v1, v2}, Landroid/text/Layout$DefaultCursorDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/Layout$DefaultCursorDir;->CURSOR_DEPEND_ON_LANGUAGE:Landroid/text/Layout$DefaultCursorDir;

    .line 1939
    new-instance v0, Landroid/text/Layout$DefaultCursorDir;

    const-string v1, "CURSOR_DEPEND_ON_LOCALE"

    invoke-direct {v0, v1, v3}, Landroid/text/Layout$DefaultCursorDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/Layout$DefaultCursorDir;->CURSOR_DEPEND_ON_LOCALE:Landroid/text/Layout$DefaultCursorDir;

    .line 1940
    new-instance v0, Landroid/text/Layout$DefaultCursorDir;

    const-string v1, "CURSOR_RIGHT"

    invoke-direct {v0, v1, v4}, Landroid/text/Layout$DefaultCursorDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/Layout$DefaultCursorDir;->CURSOR_RIGHT:Landroid/text/Layout$DefaultCursorDir;

    .line 1941
    new-instance v0, Landroid/text/Layout$DefaultCursorDir;

    const-string v1, "CURSOR_LEFT"

    invoke-direct {v0, v1, v5}, Landroid/text/Layout$DefaultCursorDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/Layout$DefaultCursorDir;->CURSOR_LEFT:Landroid/text/Layout$DefaultCursorDir;

    .line 1937
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/text/Layout$DefaultCursorDir;

    sget-object v1, Landroid/text/Layout$DefaultCursorDir;->CURSOR_DEPEND_ON_LANGUAGE:Landroid/text/Layout$DefaultCursorDir;

    aput-object v1, v0, v2

    sget-object v1, Landroid/text/Layout$DefaultCursorDir;->CURSOR_DEPEND_ON_LOCALE:Landroid/text/Layout$DefaultCursorDir;

    aput-object v1, v0, v3

    sget-object v1, Landroid/text/Layout$DefaultCursorDir;->CURSOR_RIGHT:Landroid/text/Layout$DefaultCursorDir;

    aput-object v1, v0, v4

    sget-object v1, Landroid/text/Layout$DefaultCursorDir;->CURSOR_LEFT:Landroid/text/Layout$DefaultCursorDir;

    aput-object v1, v0, v5

    sput-object v0, Landroid/text/Layout$DefaultCursorDir;->$VALUES:[Landroid/text/Layout$DefaultCursorDir;

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
    .line 1937
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/text/Layout$DefaultCursorDir;
    .registers 2
    .parameter "name"

    .prologue
    .line 1937
    const-class v0, Landroid/text/Layout$DefaultCursorDir;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/text/Layout$DefaultCursorDir;

    return-object p0
.end method

.method public static final values()[Landroid/text/Layout$DefaultCursorDir;
    .registers 1

    .prologue
    .line 1937
    sget-object v0, Landroid/text/Layout$DefaultCursorDir;->$VALUES:[Landroid/text/Layout$DefaultCursorDir;

    invoke-virtual {v0}, [Landroid/text/Layout$DefaultCursorDir;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$DefaultCursorDir;

    return-object v0
.end method
