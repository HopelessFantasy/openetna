.class Lcom/android/browser/FakeWebView$Listener;
.super Ljava/lang/Object;
.source "FakeWebView.java"

# interfaces
.implements Landroid/webkit/WebView$PictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/FakeWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/FakeWebView;


# direct methods
.method private constructor <init>(Lcom/android/browser/FakeWebView;)V
    .registers 2
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/browser/FakeWebView$Listener;->this$0:Lcom/android/browser/FakeWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/FakeWebView;Lcom/android/browser/FakeWebView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/browser/FakeWebView$Listener;-><init>(Lcom/android/browser/FakeWebView;)V

    return-void
.end method


# virtual methods
.method public onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V
    .registers 4
    .parameter "view"
    .parameter "p"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/browser/FakeWebView$Listener;->this$0:Lcom/android/browser/FakeWebView;

    invoke-static {v0, p2}, Lcom/android/browser/FakeWebView;->access$002(Lcom/android/browser/FakeWebView;Landroid/graphics/Picture;)Landroid/graphics/Picture;

    .line 43
    iget-object v0, p0, Lcom/android/browser/FakeWebView$Listener;->this$0:Lcom/android/browser/FakeWebView;

    invoke-virtual {v0}, Lcom/android/browser/FakeWebView;->invalidate()V

    .line 44
    return-void
.end method
