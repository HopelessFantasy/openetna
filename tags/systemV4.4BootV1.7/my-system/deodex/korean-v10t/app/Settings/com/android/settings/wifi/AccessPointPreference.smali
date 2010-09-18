.class public Lcom/android/settings/wifi/AccessPointPreference;
.super Landroid/preference/Preference;
.source "AccessPointPreference.java"

# interfaces
.implements Lcom/android/settings/wifi/AccessPointState$AccessPointStateCallback;


# static fields
.field private static final STATE_EMPTY:[I = null

.field private static final STATE_ENCRYPTED:[I = null

.field private static final UI_SIGNAL_LEVELS:I = 0x4


# instance fields
.field private mState:Lcom/android/settings/wifi/AccessPointState;

.field private mWifiSettings:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/AccessPointPreference;->STATE_ENCRYPTED:[I

    .line 31
    new-array v0, v2, [I

    sput-object v0, Lcom/android/settings/wifi/AccessPointPreference;->STATE_EMPTY:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPointState;)V
    .registers 4
    .parameter "wifiSettings"
    .parameter "state"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointPreference;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    .line 44
    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointPreference;->mState:Lcom/android/settings/wifi/AccessPointState;

    .line 46
    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointPreference;->setWidgetLayoutResource(I)V

    .line 48
    invoke-virtual {p2, p0}, Lcom/android/settings/wifi/AccessPointState;->setCallback(Lcom/android/settings/wifi/AccessPointState$AccessPointStateCallback;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointPreference;->refresh()V

    .line 51
    return-void
.end method

.method private getUiSignalLevel()I
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointPreference;->mState:Lcom/android/settings/wifi/AccessPointState;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointPreference;->mState:Lcom/android/settings/wifi/AccessPointState;

    iget v0, v0, Lcom/android/settings/wifi/AccessPointState;->signal:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .registers 4
    .parameter "another"

    .prologue
    .line 97
    instance-of v0, p1, Lcom/android/settings/wifi/AccessPointPreference;

    if-nez v0, :cond_6

    .line 101
    const/4 v0, 0x1

    .line 104
    .end local p1
    :goto_5
    return v0

    .restart local p1
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointPreference;->mState:Lcom/android/settings/wifi/AccessPointState;

    check-cast p1, Lcom/android/settings/wifi/AccessPointPreference;

    .end local p1
    iget-object v1, p1, Lcom/android/settings/wifi/AccessPointPreference;->mState:Lcom/android/settings/wifi/AccessPointState;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPointState;->compareTo(Lcom/android/settings/wifi/AccessPointState;)I

    move-result v0

    goto :goto_5
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 26
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AccessPointPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getAccessPointState()Lcom/android/settings/wifi/AccessPointState;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointPreference;->mState:Lcom/android/settings/wifi/AccessPointState;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 72
    const v1, 0x7f0a008a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 73
    .local v0, signal:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointPreference;->mState:Lcom/android/settings/wifi/AccessPointState;

    iget-boolean v1, v1, Lcom/android/settings/wifi/AccessPointState;->seen:Z

    if-eqz v1, :cond_31

    .line 74
    const v1, 0x7f020044

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointPreference;->mState:Lcom/android/settings/wifi/AccessPointState;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPointState;->hasSecurity()Z

    move-result v1

    if-eqz v1, :cond_2e

    sget-object v1, Lcom/android/settings/wifi/AccessPointPreference;->STATE_ENCRYPTED:[I

    :goto_22
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    .line 76
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointPreference;->getUiSignalLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 80
    :goto_2d
    return-void

    .line 75
    :cond_2e
    sget-object v1, Lcom/android/settings/wifi/AccessPointPreference;->STATE_EMPTY:[I

    goto :goto_22

    .line 78
    :cond_31
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2d
.end method

.method public refresh()V
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointPreference;->mState:Lcom/android/settings/wifi/AccessPointState;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointState;->getHumanReadableSsid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointPreference;->mState:Lcom/android/settings/wifi/AccessPointState;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointState;->getSummarizedStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointPreference;->notifyChanged()V

    .line 58
    return-void
.end method

.method public refreshAccessPointState()V
    .registers 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointPreference;->refresh()V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointPreference;->notifyHierarchyChanged()V

    .line 66
    return-void
.end method
