.class final enum Lcom/android/camera/HighlightView$ModifyMode;
.super Ljava/lang/Enum;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/HighlightView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ModifyMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/HighlightView$ModifyMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/HighlightView$ModifyMode;

.field public static final enum Grow:Lcom/android/camera/HighlightView$ModifyMode;

.field public static final enum Move:Lcom/android/camera/HighlightView$ModifyMode;

.field public static final enum None:Lcom/android/camera/HighlightView$ModifyMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 410
    new-instance v0, Lcom/android/camera/HighlightView$ModifyMode;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/HighlightView$ModifyMode;->None:Lcom/android/camera/HighlightView$ModifyMode;

    new-instance v0, Lcom/android/camera/HighlightView$ModifyMode;

    const-string v1, "Move"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/HighlightView$ModifyMode;->Move:Lcom/android/camera/HighlightView$ModifyMode;

    new-instance v0, Lcom/android/camera/HighlightView$ModifyMode;

    const-string v1, "Grow"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/HighlightView$ModifyMode;->Grow:Lcom/android/camera/HighlightView$ModifyMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/HighlightView$ModifyMode;

    sget-object v1, Lcom/android/camera/HighlightView$ModifyMode;->None:Lcom/android/camera/HighlightView$ModifyMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/HighlightView$ModifyMode;->Move:Lcom/android/camera/HighlightView$ModifyMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/HighlightView$ModifyMode;->Grow:Lcom/android/camera/HighlightView$ModifyMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/HighlightView$ModifyMode;->$VALUES:[Lcom/android/camera/HighlightView$ModifyMode;

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
    .line 410
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/HighlightView$ModifyMode;
    .registers 2
    .parameter "name"

    .prologue
    .line 410
    const-class v0, Lcom/android/camera/HighlightView$ModifyMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/camera/HighlightView$ModifyMode;

    return-object p0
.end method

.method public static final values()[Lcom/android/camera/HighlightView$ModifyMode;
    .registers 1

    .prologue
    .line 410
    sget-object v0, Lcom/android/camera/HighlightView$ModifyMode;->$VALUES:[Lcom/android/camera/HighlightView$ModifyMode;

    invoke-virtual {v0}, [Lcom/android/camera/HighlightView$ModifyMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/HighlightView$ModifyMode;

    return-object v0
.end method
