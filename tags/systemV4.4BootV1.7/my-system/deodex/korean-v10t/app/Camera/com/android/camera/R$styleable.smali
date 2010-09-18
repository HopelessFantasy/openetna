.class public final Lcom/android/camera/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CameraState:[I

.field public static final CameraState_state_restricted:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 875
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, 0x7f01

    aput v2, v0, v1

    sput-object v0, Lcom/android/camera/R$styleable;->CameraState:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
