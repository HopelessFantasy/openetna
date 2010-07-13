.class public Lcom/android/mms/ui/ManageCBchannelPreference;
.super Landroid/preference/Preference;
.source "ManageCBchannelPreference.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attributes"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-object p1, p0, Lcom/android/mms/ui/ManageCBchannelPreference;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method protected onClick()V
    .registers 5

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/mms/ui/ManageCBchannelPreference;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/ManageCBchannelPreference;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/ui/ManageCBchannelActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 25
    return-void
.end method
