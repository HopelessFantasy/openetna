.class Lcom/android/settings/SecuritySettings$CstorHelper$1;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SecuritySettings$CstorHelper;->createAccessCheckBox(I)Landroid/preference/Preference;
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
    .line 1491
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$CstorHelper$1;->this$1:Lcom/android/settings/SecuritySettings$CstorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5
    .parameter "pref"
    .parameter "value"

    .prologue
    .line 1493
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1494
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper$1;->this$1:Lcom/android/settings/SecuritySettings$CstorHelper;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/settings/SecuritySettings$CstorHelper;->access$2600(Lcom/android/settings/SecuritySettings$CstorHelper;I)V

    .line 1499
    :goto_e
    const/4 v0, 0x1

    return v0

    .line 1496
    :cond_10
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CstorHelper$1;->this$1:Lcom/android/settings/SecuritySettings$CstorHelper;

    invoke-static {v0}, Lcom/android/settings/SecuritySettings$CstorHelper;->access$2700(Lcom/android/settings/SecuritySettings$CstorHelper;)V

    goto :goto_e
.end method
