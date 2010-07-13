.class Lcom/android/browser/BrowserActivity$ClearThumbnails;
.super Landroid/os/AsyncTask;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearThumbnails"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/io/File;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method private constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 672
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$ClearThumbnails;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/BrowserActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 672
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity$ClearThumbnails;-><init>(Lcom/android/browser/BrowserActivity;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 672
    check-cast p1, [Ljava/io/File;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserActivity$ClearThumbnails;->doInBackground([Ljava/io/File;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/io/File;)Ljava/lang/Void;
    .registers 7
    .parameter "files"

    .prologue
    .line 675
    if-eqz p1, :cond_f

    .line 676
    move-object v0, p1

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_5
    if-ge v2, v3, :cond_f

    aget-object v1, v0, v2

    .line 677
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 676
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 680
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #f:Ljava/io/File;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_f
    const/4 v4, 0x0

    return-object v4
.end method
