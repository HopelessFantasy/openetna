.class Landroid/webkit/WebView$InvokeListBox$Container;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView$InvokeListBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Container"
.end annotation


# instance fields
.field mEnabled:Z

.field mId:I

.field mString:Ljava/lang/String;

.field final synthetic this$1:Landroid/webkit/WebView$InvokeListBox;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView$InvokeListBox;)V
    .registers 2
    .parameter

    .prologue
    .line 4848
    iput-object p1, p0, Landroid/webkit/WebView$InvokeListBox$Container;->this$1:Landroid/webkit/WebView$InvokeListBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView$InvokeListBox;Landroid/webkit/WebView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4848
    invoke-direct {p0, p1}, Landroid/webkit/WebView$InvokeListBox$Container;-><init>(Landroid/webkit/WebView$InvokeListBox;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4854
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$Container;->mString:Ljava/lang/String;

    return-object v0
.end method
