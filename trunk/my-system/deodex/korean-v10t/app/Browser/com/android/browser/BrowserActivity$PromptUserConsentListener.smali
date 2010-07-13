.class Lcom/android/browser/BrowserActivity$PromptUserConsentListener;
.super Ljava/lang/Object;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PromptUserConsentListener"
.end annotation


# instance fields
.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mOmaDrmV2ID:I

.field private mPopupID:I

.field final synthetic this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserActivity;II)V
    .registers 5
    .parameter
    .parameter "popupID"
    .parameter "omaDrmV2ID"

    .prologue
    const/4 v0, 0x0

    .line 5182
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$PromptUserConsentListener;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5178
    iput v0, p0, Lcom/android/browser/BrowserActivity$PromptUserConsentListener;->mPopupID:I

    .line 5179
    iput v0, p0, Lcom/android/browser/BrowserActivity$PromptUserConsentListener;->mOmaDrmV2ID:I

    .line 5183
    iput p3, p0, Lcom/android/browser/BrowserActivity$PromptUserConsentListener;->mOmaDrmV2ID:I

    .line 5184
    iput p2, p0, Lcom/android/browser/BrowserActivity$PromptUserConsentListener;->mPopupID:I

    .line 5186
    new-instance v0, Lcom/android/browser/BrowserActivity$PromptUserConsentListener$1;

    invoke-direct {v0, p0, p1}, Lcom/android/browser/BrowserActivity$PromptUserConsentListener$1;-><init>(Lcom/android/browser/BrowserActivity$PromptUserConsentListener;Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity$PromptUserConsentListener;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 5205
    return-void
.end method

.method static synthetic access$7700(Lcom/android/browser/BrowserActivity$PromptUserConsentListener;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 5177
    iget v0, p0, Lcom/android/browser/BrowserActivity$PromptUserConsentListener;->mOmaDrmV2ID:I

    return v0
.end method

.method static synthetic access$7800(Lcom/android/browser/BrowserActivity$PromptUserConsentListener;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 5177
    iget v0, p0, Lcom/android/browser/BrowserActivity$PromptUserConsentListener;->mPopupID:I

    return v0
.end method

.method static synthetic access$8000(Lcom/android/browser/BrowserActivity$PromptUserConsentListener;)Landroid/content/DialogInterface$OnClickListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 5177
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$PromptUserConsentListener;->mListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method
