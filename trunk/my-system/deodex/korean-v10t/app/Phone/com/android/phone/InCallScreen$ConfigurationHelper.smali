.class Lcom/android/phone/InCallScreen$ConfigurationHelper;
.super Ljava/lang/Object;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConfigurationHelper"
.end annotation


# static fields
.field static sOrientation:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 4167
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/InCallScreen$ConfigurationHelper;->sOrientation:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 4163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4164
    return-void
.end method

.method static applyConfigurationToLayout(Lcom/android/phone/InCallScreen;)V
    .registers 3
    .parameter "inCallScreen"

    .prologue
    .line 4188
    sget v0, Lcom/android/phone/InCallScreen$ConfigurationHelper;->sOrientation:I

    if-nez v0, :cond_c

    .line 4189
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "need to call initConfiguration first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4193
    :cond_c
    const v0, 0x7f060049

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcom/android/phone/InCallScreen;->access$2502(Lcom/android/phone/InCallScreen;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 4200
    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 4202
    invoke-static {p0}, Lcom/android/phone/InCallScreen;->access$2600(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->updateForLandscapeMode()V

    .line 4208
    :cond_25
    return-void
.end method

.method static initConfiguration(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "config"

    .prologue
    .line 4180
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    sput v0, Lcom/android/phone/InCallScreen$ConfigurationHelper;->sOrientation:I

    .line 4181
    return-void
.end method

.method static isLandscape()Z
    .registers 2

    .prologue
    .line 4170
    sget v0, Lcom/android/phone/InCallScreen$ConfigurationHelper;->sOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method
