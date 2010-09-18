.class Lcom/android/settings/SecuritySettings$LockEnabledPref;
.super Landroid/preference/CheckBoxPreference;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockEnabledPref"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecuritySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/SecuritySettings;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 1062
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$LockEnabledPref;->this$0:Lcom/android/settings/SecuritySettings;

    .line 1063
    invoke-direct {p0, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 1064
    return-void
.end method


# virtual methods
.method protected onClick()V
    .registers 2

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$LockEnabledPref;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$2200(Lcom/android/settings/SecuritySettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$LockEnabledPref;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1069
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$LockEnabledPref;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$2300(Lcom/android/settings/SecuritySettings;)V

    .line 1073
    :goto_17
    return-void

    .line 1071
    :cond_18
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    goto :goto_17
.end method
