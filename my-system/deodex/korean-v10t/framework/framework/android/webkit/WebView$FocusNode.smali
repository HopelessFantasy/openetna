.class Landroid/webkit/WebView$FocusNode;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusNode"
.end annotation


# instance fields
.field public mBounds:Landroid/graphics/Rect;

.field public mFramePointer:I

.field public mIsAnchor:Z

.field public mIsPassword:Z

.field public mIsRtlText:Z

.field public mIsTextArea:Z

.field public mIsTextField:Z

.field public mMaxLength:I

.field public mName:Ljava/lang/String;

.field public mNodePointer:I

.field public mRootTextGeneration:I

.field public mSelectionEnd:I

.field public mSelectionStart:I

.field public mText:Ljava/lang/String;

.field public mTextSize:I

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .registers 3
    .parameter

    .prologue
    .line 2825
    iput-object p1, p0, Landroid/webkit/WebView$FocusNode;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2826
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$FocusNode;->mBounds:Landroid/graphics/Rect;

    .line 2827
    return-void
.end method

.method private setAll(ZZZZZIIIIIIIILjava/lang/String;Ljava/lang/String;I)V
    .registers 20
    .parameter "isTextField"
    .parameter "isTextArea"
    .parameter "isPassword"
    .parameter "isAnchor"
    .parameter "isRtlText"
    .parameter "maxLength"
    .parameter "textSize"
    .parameter "boundsX"
    .parameter "boundsY"
    .parameter "boundsRight"
    .parameter "boundsBottom"
    .parameter "nodePointer"
    .parameter "framePointer"
    .parameter "text"
    .parameter "name"
    .parameter "rootTextGeneration"

    .prologue
    .line 2834
    iput-boolean p1, p0, Landroid/webkit/WebView$FocusNode;->mIsTextField:Z

    .line 2835
    iput-boolean p2, p0, Landroid/webkit/WebView$FocusNode;->mIsTextArea:Z

    .line 2836
    iput-boolean p3, p0, Landroid/webkit/WebView$FocusNode;->mIsPassword:Z

    .line 2837
    iput-boolean p4, p0, Landroid/webkit/WebView$FocusNode;->mIsAnchor:Z

    .line 2838
    iput-boolean p5, p0, Landroid/webkit/WebView$FocusNode;->mIsRtlText:Z

    .line 2840
    iput p6, p0, Landroid/webkit/WebView$FocusNode;->mMaxLength:I

    .line 2841
    iput p7, p0, Landroid/webkit/WebView$FocusNode;->mTextSize:I

    .line 2843
    iget-object v2, p0, Landroid/webkit/WebView$FocusNode;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p8, p9, p10, p11}, Landroid/graphics/Rect;->set(IIII)V

    .line 2846
    iput p12, p0, Landroid/webkit/WebView$FocusNode;->mNodePointer:I

    .line 2847
    move/from16 v0, p13

    move-object v1, p0

    iput v0, v1, Landroid/webkit/WebView$FocusNode;->mFramePointer:I

    .line 2848
    move-object/from16 v0, p14

    move-object v1, p0

    iput-object v0, v1, Landroid/webkit/WebView$FocusNode;->mText:Ljava/lang/String;

    .line 2849
    move-object/from16 v0, p15

    move-object v1, p0

    iput-object v0, v1, Landroid/webkit/WebView$FocusNode;->mName:Ljava/lang/String;

    .line 2850
    move/from16 v0, p16

    move-object v1, p0

    iput v0, v1, Landroid/webkit/WebView$FocusNode;->mRootTextGeneration:I

    .line 2851
    return-void
.end method
