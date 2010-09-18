.class Lcom/android/browser/BrowserActivity$12$ErrorDialog;
.super Ljava/lang/Object;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserActivity$12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ErrorDialog"
.end annotation


# instance fields
.field public final mDescription:Ljava/lang/String;

.field public final mError:I

.field public final mTitle:I

.field final synthetic this$1:Lcom/android/browser/BrowserActivity$12;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity$12;ILjava/lang/String;I)V
    .registers 5
    .parameter
    .parameter "title"
    .parameter "desc"
    .parameter "error"

    .prologue
    .line 3325
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$12$ErrorDialog;->this$1:Lcom/android/browser/BrowserActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3326
    iput p2, p0, Lcom/android/browser/BrowserActivity$12$ErrorDialog;->mTitle:I

    .line 3327
    iput-object p3, p0, Lcom/android/browser/BrowserActivity$12$ErrorDialog;->mDescription:Ljava/lang/String;

    .line 3328
    iput p4, p0, Lcom/android/browser/BrowserActivity$12$ErrorDialog;->mError:I

    .line 3329
    return-void
.end method
