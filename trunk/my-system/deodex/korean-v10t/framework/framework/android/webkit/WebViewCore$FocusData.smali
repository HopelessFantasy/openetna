.class Landroid/webkit/WebViewCore$FocusData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FocusData"
.end annotation


# instance fields
.field mBuildGeneration:I

.field mFrame:I

.field mIgnoreNullFocus:Z

.field mMoveGeneration:I

.field mNode:I

.field mX:I

.field mY:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/webkit/WebViewCore$FocusData;)V
    .registers 3
    .parameter "d"

    .prologue
    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iget v0, p1, Landroid/webkit/WebViewCore$FocusData;->mMoveGeneration:I

    iput v0, p0, Landroid/webkit/WebViewCore$FocusData;->mMoveGeneration:I

    .line 479
    iget v0, p1, Landroid/webkit/WebViewCore$FocusData;->mBuildGeneration:I

    iput v0, p0, Landroid/webkit/WebViewCore$FocusData;->mBuildGeneration:I

    .line 480
    iget v0, p1, Landroid/webkit/WebViewCore$FocusData;->mFrame:I

    iput v0, p0, Landroid/webkit/WebViewCore$FocusData;->mFrame:I

    .line 481
    iget v0, p1, Landroid/webkit/WebViewCore$FocusData;->mNode:I

    iput v0, p0, Landroid/webkit/WebViewCore$FocusData;->mNode:I

    .line 482
    iget v0, p1, Landroid/webkit/WebViewCore$FocusData;->mX:I

    iput v0, p0, Landroid/webkit/WebViewCore$FocusData;->mX:I

    .line 483
    iget v0, p1, Landroid/webkit/WebViewCore$FocusData;->mY:I

    iput v0, p0, Landroid/webkit/WebViewCore$FocusData;->mY:I

    .line 484
    iget-boolean v0, p1, Landroid/webkit/WebViewCore$FocusData;->mIgnoreNullFocus:Z

    iput-boolean v0, p0, Landroid/webkit/WebViewCore$FocusData;->mIgnoreNullFocus:Z

    .line 485
    return-void
.end method
