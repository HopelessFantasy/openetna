.class Lcom/android/browser/AddBookmarkPage$1;
.super Ljava/lang/Object;
.source "AddBookmarkPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/AddBookmarkPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/AddBookmarkPage;


# direct methods
.method constructor <init>(Lcom/android/browser/AddBookmarkPage;)V
    .registers 2
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/browser/AddBookmarkPage$1;->this$0:Lcom/android/browser/AddBookmarkPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage$1;->this$0:Lcom/android/browser/AddBookmarkPage;

    invoke-virtual {v0}, Lcom/android/browser/AddBookmarkPage;->save()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 67
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage$1;->this$0:Lcom/android/browser/AddBookmarkPage;

    invoke-virtual {v0}, Lcom/android/browser/AddBookmarkPage;->finish()V

    .line 68
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage$1;->this$0:Lcom/android/browser/AddBookmarkPage;

    const v1, 0x7f070031

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 71
    :cond_1a
    return-void
.end method
