.class Lcom/android/browser/BrowserBookmarksAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "BrowserBookmarksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserBookmarksAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserBookmarksAdapter;


# direct methods
.method private constructor <init>(Lcom/android/browser/BrowserBookmarksAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksAdapter$MyDataSetObserver;->this$0:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/BrowserBookmarksAdapter;Lcom/android/browser/BrowserBookmarksAdapter$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 550
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserBookmarksAdapter$MyDataSetObserver;-><init>(Lcom/android/browser/BrowserBookmarksAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter$MyDataSetObserver;->this$0:Lcom/android/browser/BrowserBookmarksAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/browser/BrowserBookmarksAdapter;->access$302(Lcom/android/browser/BrowserBookmarksAdapter;Z)Z

    .line 554
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter$MyDataSetObserver;->this$0:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0}, Lcom/android/browser/BrowserBookmarksAdapter;->notifyDataSetChanged()V

    .line 555
    return-void
.end method

.method public onInvalidated()V
    .registers 3

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter$MyDataSetObserver;->this$0:Lcom/android/browser/BrowserBookmarksAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/browser/BrowserBookmarksAdapter;->access$302(Lcom/android/browser/BrowserBookmarksAdapter;Z)Z

    .line 560
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter$MyDataSetObserver;->this$0:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0}, Lcom/android/browser/BrowserBookmarksAdapter;->notifyDataSetInvalidated()V

    .line 561
    return-void
.end method
