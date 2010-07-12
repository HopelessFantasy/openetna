.class public final enum Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;
.super Ljava/lang/Enum;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConflictAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;

.field public static final enum ABORT:Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;

.field public static final enum FAIL:Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;

.field public static final enum IGNORE:Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;

.field public static final enum REPLACE:Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;

.field public static final enum ROLLBACK:Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;

    const-string v1, "ROLLBACK"

    const-string v2, "ROLLBACK"

    invoke-direct {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;->ROLLBACK:Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;

    .line 78
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;

    const-string v1, "ABORT"

    const-string v2, "ABORT"

    invoke-direct {v0, v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;->ABORT:Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;

    .line 86
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;

    const-string v1, "FAIL"

    const-string v2, "FAIL"

    invoke-direct {v0, v1, v5, v2}, Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;->FAIL:Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;

    .line 95
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;

    const-string v1, "IGNORE"

    const-string v2, "IGNORE"

    invoke-direct {v0, v1, v6, v2}, Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;->IGNORE:Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;

    .line 110
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;

    const-string v1, "REPLACE"

    const-string v2, "REPLACE"

    invoke-direct {v0, v1, v7, v2}, Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;->REPLACE:Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;

    .line 63
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;

    sget-object v1, Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;->ROLLBACK:Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;

    aput-object v1, v0, v3

    sget-object v1, Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;->ABORT:Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;

    aput-object v1, v0, v4

    sget-object v1, Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;->FAIL:Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;

    aput-object v1, v0, v5

    sget-object v1, Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;->IGNORE:Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;

    aput-object v1, v0, v6

    sget-object v1, Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;->REPLACE:Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;

    aput-object v1, v0, v7

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;->$VALUES:[Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 114
    iput-object p3, p0, Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;->mValue:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;
    .registers 2
    .parameter "name"

    .prologue
    .line 63
    const-class v0, Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;

    return-object p0
.end method

.method public static final values()[Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;->$VALUES:[Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;

    invoke-virtual {v0}, [Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$ConflictAlgorithm;->mValue:Ljava/lang/String;

    return-object v0
.end method
