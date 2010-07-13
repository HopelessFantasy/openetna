.class public final enum Lcom/android/browser/KeyTracker$Stage;
.super Ljava/lang/Enum;
.source "KeyTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/KeyTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/browser/KeyTracker$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/browser/KeyTracker$Stage;

.field public static final enum DOWN:Lcom/android/browser/KeyTracker$Stage;

.field public static final enum LONG_REPEAT:Lcom/android/browser/KeyTracker$Stage;

.field public static final enum SHORT_REPEAT:Lcom/android/browser/KeyTracker$Stage;

.field public static final enum UP:Lcom/android/browser/KeyTracker$Stage;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/android/browser/KeyTracker$Stage;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v2}, Lcom/android/browser/KeyTracker$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/KeyTracker$Stage;->DOWN:Lcom/android/browser/KeyTracker$Stage;

    .line 26
    new-instance v0, Lcom/android/browser/KeyTracker$Stage;

    const-string v1, "SHORT_REPEAT"

    invoke-direct {v0, v1, v3}, Lcom/android/browser/KeyTracker$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/KeyTracker$Stage;->SHORT_REPEAT:Lcom/android/browser/KeyTracker$Stage;

    .line 27
    new-instance v0, Lcom/android/browser/KeyTracker$Stage;

    const-string v1, "LONG_REPEAT"

    invoke-direct {v0, v1, v4}, Lcom/android/browser/KeyTracker$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/KeyTracker$Stage;->LONG_REPEAT:Lcom/android/browser/KeyTracker$Stage;

    .line 28
    new-instance v0, Lcom/android/browser/KeyTracker$Stage;

    const-string v1, "UP"

    invoke-direct {v0, v1, v5}, Lcom/android/browser/KeyTracker$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/KeyTracker$Stage;->UP:Lcom/android/browser/KeyTracker$Stage;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/browser/KeyTracker$Stage;

    sget-object v1, Lcom/android/browser/KeyTracker$Stage;->DOWN:Lcom/android/browser/KeyTracker$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/browser/KeyTracker$Stage;->SHORT_REPEAT:Lcom/android/browser/KeyTracker$Stage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/browser/KeyTracker$Stage;->LONG_REPEAT:Lcom/android/browser/KeyTracker$Stage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/browser/KeyTracker$Stage;->UP:Lcom/android/browser/KeyTracker$Stage;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/browser/KeyTracker$Stage;->$VALUES:[Lcom/android/browser/KeyTracker$Stage;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/browser/KeyTracker$Stage;
    .registers 2
    .parameter "name"

    .prologue
    .line 24
    const-class v0, Lcom/android/browser/KeyTracker$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/KeyTracker$Stage;

    return-object p0
.end method

.method public static final values()[Lcom/android/browser/KeyTracker$Stage;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/browser/KeyTracker$Stage;->$VALUES:[Lcom/android/browser/KeyTracker$Stage;

    invoke-virtual {v0}, [Lcom/android/browser/KeyTracker$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/browser/KeyTracker$Stage;

    return-object v0
.end method
