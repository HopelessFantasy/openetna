.class Lcom/android/browser/BrowserBookmarksAdapter$IconReceiver;
.super Ljava/lang/Object;
.source "BrowserBookmarksAdapter.java"

# interfaces
.implements Landroid/webkit/WebIconDatabase$IconListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserBookmarksAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserBookmarksAdapter;


# direct methods
.method private constructor <init>(Lcom/android/browser/BrowserBookmarksAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksAdapter$IconReceiver;->this$0:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/BrowserBookmarksAdapter;Lcom/android/browser/BrowserBookmarksAdapter$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserBookmarksAdapter$IconReceiver;-><init>(Lcom/android/browser/BrowserBookmarksAdapter;)V

    return-void
.end method


# virtual methods
.method public onReceivedIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "url"
    .parameter "icon"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter$IconReceiver;->this$0:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-static {v0}, Lcom/android/browser/BrowserBookmarksAdapter;->access$000(Lcom/android/browser/BrowserBookmarksAdapter;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->updateBookmarkFavicon(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 70
    return-void
.end method
