.class public final enum Lcom/android/browser/KeyTracker$State;
.super Ljava/lang/Enum;
.source "KeyTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/KeyTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/browser/KeyTracker$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/browser/KeyTracker$State;

.field public static final enum DONE_TRACKING:Lcom/android/browser/KeyTracker$State;

.field public static final enum KEEP_TRACKING:Lcom/android/browser/KeyTracker$State;

.field public static final enum NOT_TRACKING:Lcom/android/browser/KeyTracker$State;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/android/browser/KeyTracker$State;

    const-string v1, "KEEP_TRACKING"

    invoke-direct {v0, v1, v2}, Lcom/android/browser/KeyTracker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/KeyTracker$State;->KEEP_TRACKING:Lcom/android/browser/KeyTracker$State;

    .line 33
    new-instance v0, Lcom/android/browser/KeyTracker$State;

    const-string v1, "DONE_TRACKING"

    invoke-direct {v0, v1, v3}, Lcom/android/browser/KeyTracker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/KeyTracker$State;->DONE_TRACKING:Lcom/android/browser/KeyTracker$State;

    .line 34
    new-instance v0, Lcom/android/browser/KeyTracker$State;

    const-string v1, "NOT_TRACKING"

    invoke-direct {v0, v1, v4}, Lcom/android/browser/KeyTracker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/KeyTracker$State;->NOT_TRACKING:Lcom/android/browser/KeyTracker$State;

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/browser/KeyTracker$State;

    sget-object v1, Lcom/android/browser/KeyTracker$State;->KEEP_TRACKING:Lcom/android/browser/KeyTracker$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/browser/KeyTracker$State;->DONE_TRACKING:Lcom/android/browser/KeyTracker$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/browser/KeyTracker$State;->NOT_TRACKING:Lcom/android/browser/KeyTracker$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/browser/KeyTracker$State;->$VALUES:[Lcom/android/browser/KeyTracker$State;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/browser/KeyTracker$State;
    .registers 2
    .parameter "name"

    .prologue
    .line 31
    const-class v0, Lcom/android/browser/KeyTracker$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/KeyTracker$State;

    return-object p0
.end method

.method public static final values()[Lcom/android/browser/KeyTracker$State;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/browser/KeyTracker$State;->$VALUES:[Lcom/android/browser/KeyTracker$State;

    invoke-virtual {v0}, [Lcom/android/browser/KeyTracker$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/browser/KeyTracker$State;

    return-object v0
.end method
