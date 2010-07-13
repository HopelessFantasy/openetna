.class Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener;
.super Ljava/lang/Object;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PromptOmaDrmV2RoapListener"
.end annotation


# instance fields
.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mOmaDrmV2ID:I

.field final synthetic this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserActivity;I)V
    .registers 4
    .parameter
    .parameter "omaDrmV2ID"

    .prologue
    .line 5128
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5125
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener;->mOmaDrmV2ID:I

    .line 5129
    iput p2, p0, Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener;->mOmaDrmV2ID:I

    .line 5131
    new-instance v0, Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener$1;

    invoke-direct {v0, p0, p1}, Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener$1;-><init>(Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener;Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 5144
    return-void
.end method

.method static synthetic access$7400(Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 5124
    iget v0, p0, Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener;->mOmaDrmV2ID:I

    return v0
.end method

.method static synthetic access$7600(Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener;)Landroid/content/DialogInterface$OnClickListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 5124
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener;->mListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method
