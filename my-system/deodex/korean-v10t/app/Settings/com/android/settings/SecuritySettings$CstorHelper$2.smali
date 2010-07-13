.class Lcom/android/settings/SecuritySettings$CstorHelper$2;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SecuritySettings$CstorHelper;->createSetPasswordPreference()Landroid/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SecuritySettings$CstorHelper;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings$CstorHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 1512
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$CstorHelper$2;->this$1:Lcom/android/settings/SecuritySettings$CstorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5
    .parameter "pref"

    .prologue
    const/4 v2, 0x1

    .line 1513
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper$2;->this$1:Lcom/android/settings/SecuritySettings$CstorHelper;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CstorHelper$2;->this$1:Lcom/android/settings/SecuritySettings$CstorHelper;

    invoke-static {v1}, Lcom/android/settings/SecuritySettings$CstorHelper;->access$2800(Lcom/android/settings/SecuritySettings$CstorHelper;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x2

    :goto_c
    invoke-static {v0, v1}, Lcom/android/settings/SecuritySettings$CstorHelper;->access$2600(Lcom/android/settings/SecuritySettings$CstorHelper;I)V

    .line 1516
    return v2

    :cond_10
    move v1, v2

    .line 1513
    goto :goto_c
.end method
