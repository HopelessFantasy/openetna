.class Lcom/android/browser/BrowserActivity$PromptListener;
.super Ljava/lang/Object;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PromptListener"
.end annotation


# instance fields
.field mDdName:Ljava/lang/String;

.field mInstallNotifyURI:Ljava/lang/String;

.field mIsRoapTrigger:Ljava/lang/Boolean;

.field mListener:Landroid/content/DialogInterface$OnClickListener;

.field mNextURI:Ljava/lang/String;

.field mValues:Landroid/content/ContentValues;

.field final synthetic this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserActivity;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 8
    .parameter
    .parameter "contentValues"
    .parameter "ddName"
    .parameter "installNotifyURI"
    .parameter "nextURI"
    .parameter "bRoapTriggerInDD"

    .prologue
    .line 4974
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$PromptListener;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4975
    iput-object p2, p0, Lcom/android/browser/BrowserActivity$PromptListener;->mValues:Landroid/content/ContentValues;

    .line 4976
    iput-object p3, p0, Lcom/android/browser/BrowserActivity$PromptListener;->mDdName:Ljava/lang/String;

    .line 4977
    iput-object p4, p0, Lcom/android/browser/BrowserActivity$PromptListener;->mInstallNotifyURI:Ljava/lang/String;

    .line 4978
    iput-object p5, p0, Lcom/android/browser/BrowserActivity$PromptListener;->mNextURI:Ljava/lang/String;

    .line 4979
    iput-object p6, p0, Lcom/android/browser/BrowserActivity$PromptListener;->mIsRoapTrigger:Ljava/lang/Boolean;

    .line 4981
    new-instance v0, Lcom/android/browser/BrowserActivity$PromptListener$1;

    invoke-direct {v0, p0, p1}, Lcom/android/browser/BrowserActivity$PromptListener$1;-><init>(Lcom/android/browser/BrowserActivity$PromptListener;Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity$PromptListener;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 5045
    return-void
.end method
